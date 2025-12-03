part of '../../product.dart';

class ProductDetailsSeller extends StatelessWidget {
  const ProductDetailsSeller({
    super.key,
    required this.ownerName,
    required this.ownerImage,
  });

  final String? ownerName;
  final String? ownerImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: 'seller'.tr(),
          color: AppColors.blackDark,
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
        const Spacer(),
        if (ownerImage != null && ownerImage!.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: CustomImage(
              height: 20.h,
              width: 20.h,
              imageSource: ownerImage!,
              fit: BoxFit.cover,
            ),
          )
        else
          Icon(
            Icons.person_2_outlined,
            size: 20.h,
            color: AppColors.graniteGray,
          ),
        6.pw,
        CustomText(
          text: ownerName ?? '',
          color: AppColors.primaryPink,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
