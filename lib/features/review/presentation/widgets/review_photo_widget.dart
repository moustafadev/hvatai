part of '../review.dart';

class ReviewPhotoWidget extends StatelessWidget {
  final Function(List<String> imageUpdate) updateImage;
  final String title;
  final List<String>? initialImages;

  const ReviewPhotoWidget({
    super.key,
    required this.updateImage,
    required this.title,
    this.initialImages,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ProductImageCubit(initialImages, true), // imagesOnly = true
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
                  SliverPadding(
                    padding: EdgeInsets.zero,
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          // First item: full width placeholder or image
                          if (index == 0) {
                            if (state.mediaItems.isEmpty) {
                              // Show placeholder
                              return Padding(
                                padding: EdgeInsets.only(bottom: 12.h),
                                child: _ReviewPlaceHolder(
                                  isLoading: state.isLoading,
                                  onTap: () => context
                                      .read<ProductImageCubit>()
                                      .addMedia(context),
                                ),
                              );
                            } else {
                              // Show first image full width
                              final mediaItem = state.mediaItems[0];
                              return Padding(
                                padding: EdgeInsets.only(bottom: 12.h),
                                child: _ReviewImageItem(
                                  imagePath: mediaItem.path,
                                  onTap: () {
                                    // Show options dialog for editing/replacing image
                                    showPhotoOptionsDialog(
                                      context: context,
                                      onTakePhoto: () async {
                                        final picker = ImagePicker();
                                        final pickedFile =
                                            await picker.pickImage(
                                                source: ImageSource.camera);
                                        if (pickedFile != null &&
                                            context.mounted) {
                                          final cubit =
                                              context.read<ProductImageCubit>();
                                          final updated = List<MediaItem>.from(
                                              cubit.state.mediaItems);
                                          updated[0] = MediaItem(
                                              path: pickedFile.path,
                                              type: MediaType.image);
                                          await cubit.updateMediaList(updated);
                                        }
                                      },
                                      onChoosePhoto: () async {
                                        final picker = ImagePicker();
                                        final pickedFile =
                                            await picker.pickImage(
                                                source: ImageSource.gallery);
                                        if (pickedFile != null &&
                                            context.mounted) {
                                          final cubit =
                                              context.read<ProductImageCubit>();
                                          final updated = List<MediaItem>.from(
                                              cubit.state.mediaItems);
                                          updated[0] = MediaItem(
                                              path: pickedFile.path,
                                              type: MediaType.image);
                                          await cubit.updateMediaList(updated);
                                        }
                                      },
                                      onDelete: () async {
                                        if (!context.mounted) return;
                                        final cubit =
                                            context.read<ProductImageCubit>();
                                        final updated = List<MediaItem>.from(
                                            cubit.state.mediaItems);
                                        updated.removeAt(0);
                                        await cubit.updateMediaList(updated);
                                      },
                                    );
                                  },
                                ),
                              );
                            }
                          }

                          // Remaining items: half width (2 columns)
                          final itemIndex = index - 1;
                          if (itemIndex < state.mediaItems.length - 1) {
                            // Show existing image
                            final mediaItem = state.mediaItems[itemIndex + 1];
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom: 12.h,
                                left: itemIndex % 2 == 0 ? 0 : 6.w,
                                right: itemIndex % 2 == 0 ? 6.w : 0,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: _ReviewImageItem(
                                        imagePath: mediaItem.path,
                                        onTap: () {
                                          final imageIndex = itemIndex + 1;
                                          showPhotoOptionsDialog(
                                            context: context,
                                            onTakePhoto: () async {
                                              final picker = ImagePicker();
                                              final pickedFile =
                                                  await picker.pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              if (pickedFile != null &&
                                                  context.mounted) {
                                                final cubit = context
                                                    .read<ProductImageCubit>();
                                                final updated =
                                                    List<MediaItem>.from(
                                                        cubit.state.mediaItems);
                                                updated[imageIndex] = MediaItem(
                                                    path: pickedFile.path,
                                                    type: MediaType.image);
                                                await cubit
                                                    .updateMediaList(updated);
                                              }
                                            },
                                            onChoosePhoto: () async {
                                              final picker = ImagePicker();
                                              final pickedFile =
                                                  await picker.pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              if (pickedFile != null &&
                                                  context.mounted) {
                                                final cubit = context
                                                    .read<ProductImageCubit>();
                                                final updated =
                                                    List<MediaItem>.from(
                                                        cubit.state.mediaItems);
                                                updated[imageIndex] = MediaItem(
                                                    path: pickedFile.path,
                                                    type: MediaType.image);
                                                await cubit
                                                    .updateMediaList(updated);
                                              }
                                            },
                                            onDelete: () async {
                                              if (!context.mounted) return;
                                              final cubit = context
                                                  .read<ProductImageCubit>();
                                              final updated =
                                                  List<MediaItem>.from(
                                                      cubit.state.mediaItems);
                                              updated.removeAt(imageIndex);
                                              await cubit
                                                  .updateMediaList(updated);
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    if (itemIndex % 2 == 0 &&
                                        itemIndex + 2 >=
                                            state.mediaItems.length &&
                                        state.mediaItems.length < 8)
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 6.w),
                                          child: _ReviewPlaceHolder(
                                            isLoading: state.isLoading,
                                            onTap: () => context
                                                .read<ProductImageCubit>()
                                                .addMedia(context),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }

                          // Show placeholder for next item if not at max
                          if (state.mediaItems.length < 8) {
                            final remainingItems = state.mediaItems.length - 1;
                            final isLeft = remainingItems % 2 == 0;

                            return Padding(
                              padding: EdgeInsets.only(
                                bottom: 12.h,
                                left: isLeft ? 0 : 6.w,
                                right: isLeft ? 6.w : 0,
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    if (!isLeft) Expanded(child: SizedBox()),
                                    Expanded(
                                      child: _ReviewPlaceHolder(
                                        isLoading: state.isLoading,
                                        onTap: () => context
                                            .read<ProductImageCubit>()
                                            .addMedia(context),
                                      ),
                                    ),
                                    if (isLeft) Expanded(child: SizedBox()),
                                  ],
                                ),
                              ),
                            );
                          }

                          return const SizedBox();
                        },
                        childCount:
                            _calculateChildCount(state.mediaItems.length),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: 'photosUploaded'.tr(),
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

  int _calculateChildCount(int mediaCount) {
    if (mediaCount == 0) return 1; // Just placeholder
    if (mediaCount >= 8) return mediaCount; // All items filled

    // First item (full width) + remaining items (half width) + placeholder if needed
    final remainingItems = mediaCount - 1;
    final rowsForRemaining = (remainingItems / 2).ceil();
    final needsPlaceholder = mediaCount < 8;
    final placeholderRow = needsPlaceholder ? 1 : 0;

    return 1 + rowsForRemaining + placeholderRow;
  }
}

class _ReviewImageItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const _ReviewImageItem({
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Stack(
          children: [
            Image.file(
              File(imagePath),
              width: double.infinity,
              height: 134.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 8.h,
              right: 8.w,
              child: Container(
                padding: EdgeInsets.all(4.r),
                decoration: BoxDecoration(
                  color: AppColors.blackDark.withValues(alpha: 0.7),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.edit,
                  color: AppColors.white,
                  size: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewPlaceHolder extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onTap;

  const _ReviewPlaceHolder({
    required this.isLoading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: DottedBorder(
        padding: const EdgeInsets.all(1),
        borderType: BorderType.RRect,
        radius: Radius.circular(12.r),
        dashPattern: const [6, 3],
        color: AppColors.grey,
        strokeWidth: 1.5,
        child: Container(
          width: double.infinity,
          height: 134.h,
          decoration: BoxDecoration(
            color: AppColors.gray,
            borderRadius: BorderRadius.circular(12.r),
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
                  text: 'uploadPhotos'.tr(),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackDark,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
