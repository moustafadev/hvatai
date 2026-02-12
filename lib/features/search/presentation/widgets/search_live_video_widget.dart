part of '../search.dart';

class SearchLiveVideoWidget extends StatelessWidget {
  final List<SearchLiveStreamModel> liveStreams;
  final String currentUserId;
  final String searchQuery;
  final String? selectedCategory;

  const SearchLiveVideoWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    this.searchQuery = '',
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    if (liveStreams.isEmpty) {
      return const CustomText(
        text: 'No streams found',
        fontWeight: FontWeight.w500,
      );
    }

    return ReusableLiveVideosGrid<SearchLiveStreamModel>(
      items: liveStreams,
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          // joinLiveStreamingWithPrefs(stream.channelId);
        },
        child: CustomLiveVideoCard(
          stream: stream.toStreamDataModel(),
          price: stream.price.isNotEmpty ? stream.price : null,
          categoryName: stream.category.isNotEmpty ? stream.category : null,
        ),
      ),
    );
  }
}
