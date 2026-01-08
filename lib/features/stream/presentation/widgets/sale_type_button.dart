part of '../../../profile/presentation/profile.dart';

class SaleTypeButton extends StatelessWidget {
  final String selectedSaleType;
  final void Function(String value) onTap;

  const SaleTypeButton({
    super.key,
    required this.selectedSaleType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double indicatorWidth = constraints.maxWidth / 2;

        return SizedBox(
          height: 40.h,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: (selectedSaleType == "auction" ? 0 : 1) * indicatorWidth,
                width: indicatorWidth,
                top: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => onTap("auction"),
                      child: Container(
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "auction".tr(),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: selectedSaleType == "auction"
                              ? AppColors.white
                              : AppColors.blackDark,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => onTap("buy_now"),
                      child: Container(
                        alignment: Alignment.center,
                        child: CustomText(
                          text: "buyNow".tr(),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: selectedSaleType == "buy_now"
                              ? AppColors.white
                              : AppColors.blackDark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
