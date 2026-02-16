part of '../../cart.dart';

class ProductDetailsSeller extends StatelessWidget {
  const ProductDetailsSeller({
    super.key,
    required this.ownerName,
    required this.ownerImage,
    required this.ownerId,
  });

  final String? ownerName;
  final String? ownerImage;
  final int ownerId;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.companyName, extra: ownerId);
      },
      child: Row(
        children: [
          CustomText(
            text: 'seller'.tr(),
            color: AppColors.blackDark,
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: CustomImage(
              height: 20.h,
              width: 20.h,
              imageSource: ownerImage ?? "",
              fit: BoxFit.cover,
            ),
          ),
          6.pw,
          CustomText(
            text: ownerName ?? '',
            color: AppColors.primaryPink,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
