part of 'customs.dart';

class ReusableCategoryWidget<TCubit, TState> extends StatelessWidget {
  final List<String> interestKeys;
  final List<String> interestImages;

  final List<int> selectedIndices;
  final void Function(int index, String key) onTap;

  const ReusableCategoryWidget({
    super.key,
    required this.interestKeys,
    required this.interestImages,
    required this.selectedIndices,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(interestImages.length, (index) {
          final isSelected = selectedIndices.contains(index);

          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: GestureDetector(
              onTap: () => onTap(index, interestKeys[index].tr()),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryColor : null,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                  border: isSelected
                      ? Border.all(
                          width: 0.1,
                          color: AppColors.primaryColor,
                        )
                      : Border.all(
                          color: AppColors.transparent,
                          width: 1,
                        ),
                ),
                child: Padding(
                  padding: isSelected ? EdgeInsets.all(1.5.r) : EdgeInsets.zero,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding: EdgeInsets.only(left: 8, right: 8, top: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: FittedBox(
                            child: CustomText(
                              text: interestKeys[index].tr(),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackDark,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        6.ph,
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2.5),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 4.r,
                                backgroundColor: AppColors.primaryPink,
                              ),
                              5.pw,
                              FittedBox(
                                child: CustomText(
                                  text: '2.5k',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              2.pw,
                              Icon(
                                Icons.remove_red_eye_outlined,
                                size: 14.sp,
                              ),
                            ],
                          ),
                        ),
                        6.ph,
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            interestImages[index],
                            width: 100.w,
                            height: 80.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
