part of '../company.dart';

class CompanyFilterDialog {
  static void showReviewsFilter(
    BuildContext context,
    RenderBox renderBox,
    int userId,
  ) {
    final cubit = context.read<CompanyCubit>();
    final selectedFilter = cubit.state.reviewFilter;

    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    final screenSize = MediaQuery.of(context).size;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height + 8,
        screenSize.width - offset.dx - size.width,
        screenSize.height - offset.dy - size.height - 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.r),
      ),
      color: AppColors.white,
      elevation: 8,
      items: [
        PopupMenuItem<ReviewFilterType>(
          value: ReviewFilterType.positiveFirst,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'Сначала положительные',
            isSelected: selectedFilter == ReviewFilterType.positiveFirst,
            showBottomBorder: true,
          ),
        ),
        PopupMenuItem<ReviewFilterType>(
          value: ReviewFilterType.negativeFirst,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'Сначала отрицательные',
            isSelected: selectedFilter == ReviewFilterType.negativeFirst,
            showBottomBorder: true,
          ),
        ),
        PopupMenuItem<ReviewFilterType>(
          value: ReviewFilterType.recentFirst,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'Сначала недавние',
            isSelected: selectedFilter == ReviewFilterType.recentFirst,
            showBottomBorder: false,
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        cubit.setReviewFilter(value, userId);
      }
    });
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

  static void showStreamsFilter(
    BuildContext context,
    RenderBox renderBox,
    int userId,
  ) {
    final cubit = context.read<CompanyCubit>();
    final selectedFilter = cubit.state.streamsFilter;

    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    final screenSize = MediaQuery.of(context).size;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height + 8,
        screenSize.width - offset.dx - size.width,
        screenSize.height - offset.dy - size.height - 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.r),
      ),
      color: AppColors.white,
      elevation: 8,
      items: [
        PopupMenuItem<StreamsFilterType>(
          value: StreamsFilterType.popular,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'Популярные',
            isSelected: selectedFilter == StreamsFilterType.popular,
            showBottomBorder: true,
          ),
        ),
        PopupMenuItem<StreamsFilterType>(
          value: StreamsFilterType.liveFirst,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'Сначала Live',
            isSelected: selectedFilter == StreamsFilterType.liveFirst,
            showBottomBorder: true,
          ),
        ),
        PopupMenuItem<StreamsFilterType>(
          value: StreamsFilterType.freeDelivery,
          padding: EdgeInsets.zero,
          child: _buildMenuAction(
            title: 'С бесплатной доставкой',
            isSelected: selectedFilter == StreamsFilterType.freeDelivery,
            showBottomBorder: false,
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        cubit.setStreamsFilter(value, userId);
      }
    });
  }

  static Widget _buildMenuAction({
    required String title,
    required bool isSelected,
    bool showBottomBorder = true,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: showBottomBorder
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greyBorder,
                  width: 1,
                ),
              ),
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.primaryColor : AppColors.blackDark,
          ),
        ],
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
