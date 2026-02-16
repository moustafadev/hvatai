part of '../stream.dart';

class AddProductOptionsSheet extends StatelessWidget {
  const AddProductOptionsSheet({super.key, 
    required this.streamId,
    required this.allowedCategoryIds,
    required this.cubit,
  });

  final int streamId;
  final List<int> allowedCategoryIds;
  final LiveListingsShopCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: 44.w,
              height: 4.h,
              margin: EdgeInsets.only(top: 8.h, bottom: 12.h),
              decoration: BoxDecoration(
                color: AppColors.greyButton,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomText(
              text: 'addProduct'.tr(),
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.blackDark,
            ),
          ),
          SizedBox(height: 16.h),
          // Create new product option
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: GestureDetector(
              onTap: () => Navigator.pop(context, 'create'),
              child: Row(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      Assets.assetsIconsAddProducts,
                      width: 42.w,
                      height: 42.h,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: CustomText(
                      text: 'Создать новый товар',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDark,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.sp,
                    color: AppColors.blackDark.withValues(alpha: 0.4),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          // Select from my products option
          GestureDetector(
            onTap: () => Navigator.pop(context, 'select'),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      Assets.assetsIconsMyProducts,
                      width: 42.w,
                      height: 42.h,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: CustomText(
                      text: 'Выбрать из Моих товаров',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDark,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.sp,
                    color: AppColors.blackDark.withValues(alpha: 0.4),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}

