part of '../search.dart';

class SearchLiveVideoWidget extends StatelessWidget {
  final List<StreamDataModel> liveStreams;
  final String currentUserId;
  final String searchQuery;

  const SearchLiveVideoWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    this.searchQuery = '',
  });

  @override
  Widget build(BuildContext context) {
    if (liveStreams.isEmpty) {
      return const CustomText(
        text: 'No streams found',
        fontWeight: FontWeight.w500,
      );
    }

    return ReusableLiveVideosGrid<StreamDataModel>(
      items: liveStreams,
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          // joinLiveStreamingWithPrefs(stream.channelId);
        },
        child: CustomLiveVideoCard(
          stream: stream,
          price: stream.streamProducts?.firstOrNull?.startingPrice ,
          categoryName: stream.categories?.firstOrNull?.name,
        ),
      ),
    );
  }
}
