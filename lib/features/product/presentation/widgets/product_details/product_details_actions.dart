part of '../../product.dart';

class ProductDetailsActions extends StatelessWidget {
  const ProductDetailsActions({
    super.key,
    required this.isFavorited,
    required this.onFavoriteTap,
    required this.onParticipateTap,
  });

  final bool isFavorited;
  final VoidCallback onFavoriteTap;
  final VoidCallback onParticipateTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onFavoriteTap,
          child: CircleAvatar(
            backgroundColor: AppColors.gray,
            radius: 20.r,
            child: isFavorited
                ? Image.asset(
                    Assets.assetsIconsFavsav,
                    color: AppColors.primaryColor,
                    height: 20.h,
                    width: 20.w,
                  )
                : Image.asset(
                    Assets.assetsIconsSave,
                    height: 20.h,
                    width: 18.w,
                  ),
          ),
        ),
        12.pw,
        CircleAvatar(
          backgroundColor: AppColors.gray,
          radius: 20.r,
          child: Image.asset(
            Assets.assetsIconsShare,
            height: 20.h,
            width: 18.w,
          ),
        ),
        12.pw,
        Expanded(
          child: GestureDetector(
            onTap: onParticipateTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.primaryPink,
              ),
              child: CustomText(
                text: 'participate'.tr(),
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
