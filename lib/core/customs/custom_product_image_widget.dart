part of 'customs.dart';

// --- State ---
enum MediaType { image, video }

class MediaItem {
  final String path;
  final MediaType type;

  MediaItem({required this.path, required this.type});
}

class ProductImageState {
  final List<MediaItem> mediaItems;
  final bool isLoading;

  ProductImageState({
    required this.mediaItems,
    this.isLoading = false,
  });

  ProductImageState copyWith({List<MediaItem>? mediaItems, bool? isLoading}) {
    return ProductImageState(
      mediaItems: mediaItems ?? this.mediaItems,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  List<String> get paths => mediaItems.map((item) => item.path).toList();
}

// --- Cubit ---
class ProductImageCubit extends Cubit<ProductImageState> {
  final ImagePicker picker = ImagePicker();

  ProductImageCubit([List<String>? initialImages])
      : super(ProductImageState(
          mediaItems: (initialImages ?? [])
              .map((path) => MediaItem(
                    path: path,
                    type: _getMediaType(path),
                  ))
              .toList(),
        ));

  static MediaType _getMediaType(String path) {
    final extension = path.toLowerCase().split('.').last;
    if (['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(extension)) {
      return MediaType.video;
    }
    return MediaType.image;
  }

  Future<void> updateMediaList(List<MediaItem> newMediaItems) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(mediaItems: newMediaItems, isLoading: false));
  }

  Future<void> addMedia(BuildContext context) async {
    showMediaOptionsDialog(
      context: context,
      onTakePhoto: () async {
        final pickedFile = await picker.pickImage(source: ImageSource.camera);
        if (pickedFile != null) {
          final updated = List<MediaItem>.from(state.mediaItems)
            ..add(MediaItem(path: pickedFile.path, type: MediaType.image));
          await updateMediaList(updated);
        }
      },
      onChoosePhoto: () async {
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          final updated = List<MediaItem>.from(state.mediaItems)
            ..add(MediaItem(path: pickedFile.path, type: MediaType.image));
          await updateMediaList(updated);
        }
      },
      onTakeVideo: () async {
        final pickedFile = await picker.pickVideo(source: ImageSource.camera);
        if (pickedFile != null) {
          final updated = List<MediaItem>.from(state.mediaItems)
            ..add(MediaItem(path: pickedFile.path, type: MediaType.video));
          await updateMediaList(updated);
        }
      },
      onChooseVideo: () async {
        final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
        if (pickedFile != null) {
          final updated = List<MediaItem>.from(state.mediaItems)
            ..add(MediaItem(path: pickedFile.path, type: MediaType.video));
          await updateMediaList(updated);
        }
      },
    );
  }

  Future<void> _showMediaOptionsDialogForIndex(
      BuildContext context, int index) async {
    if (index >= 0 && index < state.mediaItems.length) {
      showMediaOptionsDialog(
        context: context,
        onTakePhoto: () async {
          final pickedFile = await picker.pickImage(source: ImageSource.camera);
          if (pickedFile != null) {
            final updated = List<MediaItem>.from(state.mediaItems);
            updated[index] =
                MediaItem(path: pickedFile.path, type: MediaType.image);
            await updateMediaList(updated);
          }
        },
        onChoosePhoto: () async {
          final pickedFile =
              await picker.pickImage(source: ImageSource.gallery);
          if (pickedFile != null) {
            final updated = List<MediaItem>.from(state.mediaItems);
            updated[index] =
                MediaItem(path: pickedFile.path, type: MediaType.image);
            await updateMediaList(updated);
          }
        },
        onTakeVideo: () async {
          final pickedFile = await picker.pickVideo(source: ImageSource.camera);
          if (pickedFile != null) {
            final updated = List<MediaItem>.from(state.mediaItems);
            updated[index] =
                MediaItem(path: pickedFile.path, type: MediaType.video);
            await updateMediaList(updated);
          }
        },
        onChooseVideo: () async {
          final pickedFile =
              await picker.pickVideo(source: ImageSource.gallery);
          if (pickedFile != null) {
            final updated = List<MediaItem>.from(state.mediaItems);
            updated[index] =
                MediaItem(path: pickedFile.path, type: MediaType.video);
            await updateMediaList(updated);
          }
        },
        onDelete: () async {
          await deleteMedia(index);
        },
      );
    }
  }

  Future<void> deleteMedia(int index) async {
    if (index >= 0 && index < state.mediaItems.length) {
      final updated = List<MediaItem>.from(state.mediaItems)..removeAt(index);
      await updateMediaList(updated);
    }
  }
}

// --- Placeholder Widget ---
class PlaceHolder extends StatelessWidget {
  final bool isLoading;
  final bool isShowMinimum;
  final void Function()? onTap;
  final double? padding;
  final String? subTitle;

  const PlaceHolder({
    super.key,
    this.isShowMinimum = true,
    this.onTap,
    this.isLoading = false,
    this.padding,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: DottedBorder(
        padding: const EdgeInsets.all(1),
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        dashPattern: [6, 3],
        color: AppColors.grey,
        strokeWidth: 1.5,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(padding ?? 10),
          decoration: BoxDecoration(
            color: AppColors.gray,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                )
              else ...[
                Image.asset(
                  Assets.assetsIconsAlbum,
                  height: 36.h,
                  width: 36.w,
                ),
                5.ph,
                CustomText(
                  text: 'uploadPhotoOrVideo'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackDark,
                ),
                if (isShowMinimum) ...[
                  4.ph,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'photoRequired'.tr(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.graniteGray,
                              fontSize: 10,
                              fontFamily: 'Manrope'),
                        ),
                        TextSpan(
                          text: '*',
                          style: const TextStyle(
                              color: AppColors.red,
                              fontSize: 10,
                              fontFamily: 'Manrope'),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// --- Main Widget ---
class CustomProductImageWidget extends StatelessWidget {
  final Function(List<String> imageUpdate) updateImage;
  final String title;
  final List<String>? initialImages;

  const CustomProductImageWidget({
    super.key,
    required this.updateImage,
    required this.title,
    this.initialImages,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductImageCubit(initialImages),
      child: BlocConsumer<ProductImageCubit, ProductImageState>(
        listener: (context, state) {
          if (!state.isLoading) updateImage(state.paths);
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title.isNotEmpty) ...[
                CustomText(
                  text: title,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ],
              const SizedBox(height: 20),
              CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                slivers: [
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 200,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < state.mediaItems.length) {
                          final mediaItem = state.mediaItems[index];
                          return CustomShowMediaProduct(
                            mediaItem: mediaItem,
                            index: index,
                            onTap: () => context
                                .read<ProductImageCubit>()
                                ._showMediaOptionsDialogForIndex(
                                    context, index),
                          );
                        }
                        if (index == state.mediaItems.length &&
                            state.mediaItems.length < 8) {
                          return PlaceHolder(
                            isLoading: state.isLoading,
                            isShowMinimum: false,
                            onTap: () => context
                                .read<ProductImageCubit>()
                                .addMedia(context),
                          );
                        }
                        return const SizedBox();
                      },
                      childCount: state.mediaItems.length < 8
                          ? state.mediaItems.length + 1
                          : state.mediaItems.length,
                    ),
                  ),
                ],
              ),
              8.ph,
              Row(
                children: [
                  CustomText(
                    text: 'mediaUploaded'.tr(),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.graniteGray,
                  ),
                  CustomText(
                    text: ' ${state.mediaItems.length}/8',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.graniteGray,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
