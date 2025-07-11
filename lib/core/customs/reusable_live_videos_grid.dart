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
      return const Center(child: Text('no_matching_results'));
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: filtered.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 11,
            mainAxisSpacing: 20,
            mainAxisExtent: 390,
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
      },
    );
  }
}
