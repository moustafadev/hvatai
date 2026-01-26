part of '../company.dart';

class CompanyFilterDialog {
  static void showReviewsFilter(BuildContext context) {
    final cubit = context.read<CompanyCubit>();
    final selectedFilter = cubit.state.reviewFilter;

    showDialog(
      context: context,
      builder: (BuildContext context) => Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDialogAction(
                  context,
                  title: 'Сначала положительные',
                  isSelected: selectedFilter == ReviewFilterType.positiveFirst,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setReviewFilter(ReviewFilterType.positiveFirst);
                  },
                ),
                Divider(height: 1, color: AppColors.greyBorder),
                _buildDialogAction(
                  context,
                  title: 'Сначала отрицательные',
                  isSelected: selectedFilter == ReviewFilterType.negativeFirst,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setReviewFilter(ReviewFilterType.negativeFirst);
                  },
                ),
                Divider(height: 1, color: AppColors.greyBorder),
                _buildDialogAction(
                  context,
                  title: 'Сначала недавние',
                  isSelected: selectedFilter == ReviewFilterType.recentFirst,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setReviewFilter(ReviewFilterType.recentFirst);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showClipsFilter(BuildContext context) {
    final cubit = context.read<CompanyCubit>();
    final selectedFilter = cubit.state.clipsFilter;

    showDialog(
      context: context,
      builder: (BuildContext context) => Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildDialogAction(
                  context,
                  title: 'Популярные',
                  isSelected: selectedFilter == ClipsFilterType.popular,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setClipsFilter(ClipsFilterType.popular);
                  },
                ),
                Divider(height: 1, color: AppColors.greyBorder),
                _buildDialogAction(
                  context,
                  title: 'Сначала Live',
                  isSelected: selectedFilter == ClipsFilterType.liveFirst,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setClipsFilter(ClipsFilterType.liveFirst);
                  },
                ),
                Divider(height: 1, color: AppColors.greyBorder),
                _buildDialogAction(
                  context,
                  title: 'С бесплатной доставкой',
                  isSelected: selectedFilter == ClipsFilterType.freeDelivery,
                  onTap: () {
                    Navigator.pop(context);
                    cubit.setClipsFilter(ClipsFilterType.freeDelivery);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildDialogAction(
    BuildContext context, {
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: title,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            // if (isSelected) ...[
            //   8.pw,
            //   Icon(
            //     Icons.check,
            //     color: AppColors.primaryColor,
            //     size: 20.sp,
            //   ),
            // ],
          ],
        ),
      ),
    );
  }
}
