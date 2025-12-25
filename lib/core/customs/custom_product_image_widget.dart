part of 'customs.dart';

// --- State ---
class ProductImageState {
  final List<String> images;
  final bool isLoading;

  ProductImageState({
    required this.images,
    this.isLoading = false,
  });

  ProductImageState copyWith({List<String>? images, bool? isLoading}) {
    return ProductImageState(
      images: images ?? this.images,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

// --- Cubit ---
class ProductImageCubit extends Cubit<ProductImageState> {
  final ImagePicker picker = ImagePicker();

  ProductImageCubit([List<String>? initialImages])
      : super(ProductImageState(images: initialImages ?? []));

  Future<void> updateImageList(List<String> newImages) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 300));
    emit(state.copyWith(images: newImages, isLoading: false));
  }

  Future<void> addImage(BuildContext context) async {
    showPhotoOptionsDialog(
      context: context,
      onTakePhoto: () async {
        final pickedFile = await picker.pickImage(source: ImageSource.camera);
        if (pickedFile != null) {
          final updated = List<String>.from(state.images)..add(pickedFile.path);
          await updateImageList(updated);
        }
      },
      onChoosePhoto: () async {
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          final updated = List<String>.from(state.images)..add(pickedFile.path);
          await updateImageList(updated);
        }
      },
    );
  }

  Future<void> showImageOptionsDialog(BuildContext context, int index) async {
    if (index >= 0 && index < state.images.length) {
      showPhotoOptionsDialog(
        context: context,
        onTakePhoto: () async {
          final pickedFile = await picker.pickImage(source: ImageSource.camera);
          if (pickedFile != null) {
            final updated = List<String>.from(state.images);
            updated[index] = pickedFile.path;
            await updateImageList(updated);
          }
        },
        onChoosePhoto: () async {
          final pickedFile =
              await picker.pickImage(source: ImageSource.gallery);
          if (pickedFile != null) {
            final updated = List<String>.from(state.images);
            updated[index] = pickedFile.path;
            await updateImageList(updated);
          }
        },
        onDelete: () async {
          await deleteImage(index);
        },
      );
    }
  }

  Future<void> deleteImage(int index) async {
    if (index >= 0 && index < state.images.length) {
      final updated = List<String>.from(state.images)..removeAt(index);
      await updateImageList(updated);
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
                  text: 'uploadPhoto'.tr(),
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
          if (!state.isLoading) updateImage(state.images);
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
                        if (index < state.images.length) {
                          return CustomShowImageProduct(
                            image: _resolveImagePath(state.images[index]),
                            index: index,
                            onTap: () => context
                                .read<ProductImageCubit>()
                                .showImageOptionsDialog(context, index),
                          );
                        }
                        if (index == state.images.length &&
                            state.images.length < 8) {
                          return PlaceHolder(
                            isLoading: state.isLoading,
                            isShowMinimum: false,
                            onTap: () => context
                                .read<ProductImageCubit>()
                                .addImage(context),
                          );
                        }
                        return const SizedBox();
                      },
                      childCount: state.images.length < 8
                          ? state.images.length + 1
                          : state.images.length,
                    ),
                  ),
                ],
              ),
              8.ph,
              Row(
                children: [
                  CustomText(
                    text: 'photosUploaded'.tr(),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.graniteGray,
                  ),
                  CustomText(
                    text: ' ${initialImages?.length ?? 0}/8',
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
