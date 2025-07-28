part of 'customs.dart';

typedef FilterFunction<T> = bool Function(T item);
typedef LiveCardBuilder<T> = Widget Function(BuildContext context, T item);
typedef BlockedCardBuilder<T> = Widget Function(BuildContext context, T item);

class ReusableLiveVideosGrid<T> extends StatelessWidget {
  final List<T> items;
  final FilterFunction<T> filter;
  final LiveCardBuilder<T> liveCardBuilder;
  final BlockedCardBuilder<T>? blockedCardBuilder;
  final bool Function(T item)? isBlocked;
  final bool Function(T item)? isOwner;

  const ReusableLiveVideosGrid({
    super.key,
    required this.items,
    required this.filter,
    required this.liveCardBuilder,
    this.blockedCardBuilder,
    this.isBlocked,
    this.isOwner,
  });

  @override
  Widget build(BuildContext context) {
    final filtered = items.where(filter).toList();

    if (filtered.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.favorite_border,
                size: 48,
                color: AppColors.grey,
              ),
              16.ph,
              CustomText(
                text: 'No favorites yet',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: filtered.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 11.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final item = filtered[index];

        if (isBlocked != null &&
            isOwner != null &&
            isBlocked!(item) &&
            isOwner!(item)) {
          if (blockedCardBuilder != null) {
            return blockedCardBuilder!(context, item);
          }
        }

        return liveCardBuilder(context, item);
      },
    );
  }
}
