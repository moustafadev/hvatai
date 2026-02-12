part of 'customs.dart';

typedef FilterFunction<T> = bool Function(T item);
typedef LiveCardBuilder<T> = Widget Function(BuildContext context, T item);
typedef BlockedCardBuilder<T> = Widget Function(BuildContext context, T item);

class ReusableLiveVideosGrid<T> extends StatelessWidget {
  final List<T> items;
  final LiveCardBuilder<T> liveCardBuilder;

  const ReusableLiveVideosGrid({
    super.key,
    required this.items,
    required this.liveCardBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 11.w,
        mainAxisExtent: 320.h,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final item = items[index];

        return liveCardBuilder(context, item);
      },
    );
  }
}
