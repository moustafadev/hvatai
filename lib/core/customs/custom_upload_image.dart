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

  Future<void> updateImage(String? newImage) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(image: newImage, isLoading: false));
  }

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
                  onTap: () => _showPhotoOptions(context),
                )
              else
                CustomShowImageProduct(
                  image: _resolveImagePath(image),
                  index: 0,
                  onTap: () => _showPhotoOptions(context),
                ),
            ],
          );
        },
      ),
    );
  }

  void _showPhotoOptions(BuildContext context) {
    final cubit = context.read<UploadImageCubit>();

    showPhotoOptionsDialog(
      context: context,
      onTakePhoto: () async {
        final pickedFile =
            await ImagePicker().pickImage(source: ImageSource.camera);
        if (pickedFile != null) {
          cubit.updateImage(pickedFile.path);
        }
      },
      onChoosePhoto: () async {
        final pickedFile =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          cubit.updateImage(pickedFile.path);
        }
      },
      onDelete: () {
        cubit.deleteImage();
      },
    );
  }

  String _resolveImagePath(String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    } else if (path.startsWith('/')) {
      return path;
    } else {
      return '${ServerConfig.domen}$path';
    }
  }
}

// Future<void> _showPermissionDialog(BuildContext context) async {
//   await showDialogCupertino(
//     context,
//     'photoAccess'.tr(),
//     'cancel'.tr(),
//     'openSettings'.tr(),
//     () => openAppSettings(),
//   );
// }

/// --- Helper Function ---

/// Shows a reusable photo options dialog with customizable callbacks
void showPhotoOptionsDialog({
  required BuildContext context,
  required VoidCallback onTakePhoto,
  required VoidCallback onChoosePhoto,
  VoidCallback? onDelete,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext dialogContext) {
      return PhotoOptionsDialog(
        onTakePhoto: onTakePhoto,
        onChoosePhoto: onChoosePhoto,
        onDelete: onDelete,
      );
    },
  );
}

/// --- PhotoOptionsDialog ---

class PhotoOptionsDialog extends StatelessWidget {
  final VoidCallback onTakePhoto;
  final VoidCallback onChoosePhoto;
  final VoidCallback? onDelete;

  const PhotoOptionsDialog({
    super.key,
    required this.onTakePhoto,
    required this.onChoosePhoto,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                _buildOption(
                  text: 'takePhoto'.tr(),
                  textColor: Colors.blue,
                  onTap: () {
                    context.pop();
                    onTakePhoto();
                  },
                ),
                const Divider(height: 1, color: Colors.grey),
                _buildOption(
                  text: 'selectPhoto'.tr(),
                  textColor: Colors.blue,
                  onTap: () {
                    context.pop();
                    onChoosePhoto();
                  },
                ),
                if (onDelete != null) ...[
                  const Divider(height: 1, color: Colors.grey),
                  _buildOption(
                    text: 'delete'.tr(),
                    textColor: Colors.red,
                    onTap: () {
                      context.pop();
                      onDelete!();
                    },
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: _buildOption(
              text: 'cancel'.tr(),
              textColor: Colors.blue,
              onTap: () => context.pop(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption({
    required String text,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
