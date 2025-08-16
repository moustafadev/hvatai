part of 'customs.dart';

/// --- Cubit and State ---

class UploadImageState {
  final String? image;
  final bool isLoading;
  UploadImageState({
    this.image,
    this.isLoading = false,
  });
  UploadImageState copyWith({String? image, bool? isLoading}) {
    return UploadImageState(
      image: image,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class UploadImageCubit extends Cubit<UploadImageState> {
  final ImagePicker picker = ImagePicker();

  UploadImageCubit([String? initialImage])
      : super(UploadImageState(image: initialImage));

  /// Unified function to update the image.
  Future<void> updateImage(String? newImage) async {
    emit(state.copyWith(isLoading: true));
    // Simulate delay or additional async work if needed.
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(image: newImage, isLoading: false));
  }

  /// Add a new image only if none exists.
  /// Add a new image only if none exists.
  Future<void> addImage(BuildContext context) async {
    if (state.image != null) return;

    final permissionGranted = await _requestPhotoPermission(context);
    if (!permissionGranted) return;

    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      await updateImage(pickedFile.path);
    }
  }

  /// Edit the existing image.
  Future<void> editImage(BuildContext context) async {
    if (state.image == null) return;

    final permissionGranted = await _requestPhotoPermission(context);
    if (!permissionGranted) return;

    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      await updateImage(pickedFile.path);
    }
  }

  Future<bool> _requestPhotoPermission(BuildContext context) async {
    print("[Permission] Checking photo permission...");

    Permission permission;

    if (Platform.isAndroid) {
      final android = await DeviceInfoPlugin().androidInfo;
      final sdkInt = android.version.sdkInt;
      print("[Permission] Android SDK version: $sdkInt");

      if (sdkInt >= 33) {
        permission = Permission.photos; // Permission.photosAddOnly also works
        print("[Permission] Using Permission.photos for Android 13+");
      } else {
        permission = Permission.storage;
        print("[Permission] Using Permission.storage for Android <13");
      }
    } else if (Platform.isIOS) {
      permission = Permission.photos;
      print("[Permission] Using Permission.photos for iOS");
    } else {
      print("[Permission] ❌ Unsupported platform");
      return false;
    }

    final status = await permission.status;
    print("[Permission] Initial status: $status");

    if (status.isGranted) {
      print("[Permission] ✅ Already granted");
      return true;
    }

    // Handle denied and re-request
    if (status.isDenied) {
      print("[Permission] ❗ Denied, requesting now...");
      final result = await permission.request();
      print("[Permission] Request result: $result");

      if (result.isGranted) {
        print("[Permission] ✅ Granted after request");
        return true;
      } else if (result.isPermanentlyDenied) {
        print(
            "[Permission] 🚫 Permanently denied after request — opening settings dialog");
        await _showPermissionDialog(context);
      } else {
        print("[Permission] ❌ Still denied after request");
      }

      return false;
    }

    // Handle permanently denied without request (e.g., remembered by OS)
    if (status.isPermanentlyDenied) {
      print("[Permission] 🚫 Permanently denied — opening settings dialog");
      await _showPermissionDialog(context);
      return false;
    }

    // Fallback
    print("[Permission] ❌ Permission not granted");
    return false;
  }

  /// Delete the current image.
  Future<void> deleteImage() async {
    if (state.image == null) return;
    await updateImage(null);
  }
}

class CustomUploadImageWidget extends StatelessWidget {
  final Function(String? imageUpdate) updateImage;
  final String title;
  final String? initialImage;
  final bool? isShowMin;
  final double? padding;
  final bool? hideMainAndEdit;
  final String? subTitle;
  const CustomUploadImageWidget({
    super.key,
    required this.updateImage,
    required this.title,
    this.initialImage,
    this.isShowMin,
    this.padding,
    this.hideMainAndEdit,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadImageCubit(initialImage),
      child: BlocConsumer<UploadImageCubit, UploadImageState>(
        listener: (context, state) {
          if (!state.isLoading) updateImage(state.image);
        },
        builder: (context, state) {
          final image = state.image;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 20),
              if (image == null)
                PlaceHolder(
                  isLoading: state.isLoading,
                  padding: padding,
                  subTitle: subTitle,
                  isShowMinimum: isShowMin ?? true,
                  onTap: () =>
                      context.read<UploadImageCubit>().addImage(context),
                )
              else
                CustomShowImageProduct(
                  image: _resolveImagePath(image),
                  index: 0,
                  // hideMainAndEdit: hideMainAndEdit,
                  // padding: padding,
                  onTapEdit: () =>
                      context.read<UploadImageCubit>().editImage(context),
                  onTapDelete: () =>
                      context.read<UploadImageCubit>().deleteImage(),
                ),
            ],
          );
        },
      ),
    );
  }

  /// If it's a relative path (e.g., `pictures/xyz.jpg`), prepend domain.
  /// If it's a full URL or local file path, return as is.
  String _resolveImagePath(String path) {
    print(path);
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    } else if (path.startsWith('/')) {
      // Local file path
      return path;
    } else {
      // Relative server path (e.g., 'images/pic.jpg')
      return '${ServerConfig.domen}$path';
    }
  }
}

Future<void> _showPermissionDialog(BuildContext context) async {
  await showDialogCupertino(
    context,
    'photoAccess'.tr(),
    'cancel'.tr(),
    'openSettings'.tr(),
    () => openAppSettings(),
  );
}
