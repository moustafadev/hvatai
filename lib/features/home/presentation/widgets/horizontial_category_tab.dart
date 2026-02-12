part of '../home.dart';

class HorizontalTabs<T> extends StatelessWidget {
  const HorizontalTabs({
    super.key,
    required this.items,
    required this.selectedIds,
    required this.getId,
    required this.getTitle,
    required this.onTap,
    this.topPadding = 0,
  });

  final List<T> items;
  final List<int> selectedIds;
  final int Function(T item) getId;
  final String Function(T item) getTitle;
  final void Function(T item) onTap;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final id = getId(item);
          final isSelected = selectedIds.contains(id);

          return GestureDetector(
            onTap: () => onTap(item),
            child: Container(
              margin: EdgeInsets.only(left: index == 0 ? 16.w : 12.w),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.greyButton,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color:
                      isSelected ? AppColors.primaryColor : Colors.transparent,
                ),
              ),
              child: CustomText(
                text: getTitle(item),
                fontSize: 14.sp,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }),
      ),
    );
  }
}
