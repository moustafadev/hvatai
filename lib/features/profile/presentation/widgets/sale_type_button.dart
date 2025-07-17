part of '../profile.dart';

class SaleTypeButton extends StatelessWidget {
  final int selectedButtonIndex;
  final void Function(int index) onTap;

  const SaleTypeButton({
    super.key,
    required this.selectedButtonIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double indicatorWidth = (MediaQuery.of(context).size.width - 26) / 2;

    return SizedBox(
      height: 40.h,
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: selectedButtonIndex * indicatorWidth,
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
            children: List.generate(2, (index) {
              final isSelected = selectedButtonIndex == index;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onTap(index),
                  child: Container(
                    alignment: Alignment.center,
                    child: CustomText(
                      text: index == 0 ? "auction".tr() : "buyNow".tr(),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Manrope',
                      color: isSelected ? AppColors.white : AppColors.blackDark,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
