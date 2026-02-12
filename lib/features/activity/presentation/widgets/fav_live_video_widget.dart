part of '../activity.dart';

class FavLiveVideoWidget extends StatelessWidget {
  final List<SearchLiveStreamModel> liveStreams;
  final String currentUserId;
  final String searchQuery;
  final String? selectedCategory;

  const FavLiveVideoWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    this.searchQuery = '',
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableLiveVideosGrid<SearchLiveStreamModel>(
      items: liveStreams,
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          // joinLiveStreamingWithPrefs(stream.channelId);
        },
        child: FavLiveVideoCard(
          price: stream.price,
          title: stream.title,
          adminName: stream.adminName,
          adminImage: stream.adminPhoto,
          viewsCount: stream.viewsCount,
          description: stream.description,
          liveImage: stream.selectedProductImage.isNotEmpty
              ? stream.selectedProductImage
              : stream.liveImage,
        ),
      ),
    );
  }
}
