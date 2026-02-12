part of '../home.dart';

class LiveVideosWidget extends StatelessWidget {
  final List<StreamDataModel> liveStreams;

  const LiveVideosWidget({
    super.key,
    required this.liveStreams,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableLiveVideosGrid<StreamDataModel>(
      items: liveStreams,
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          context.read<LiveStreamsCubit>().joinStream(
              stream: stream,
              isPublisher: false, // viewer
              context: context);
        },
        child: BlocBuilder<LiveStreamsCubit, LiveStreamsState>(
          builder: (context, state) {
            return Stack(
              children: [
                if (state.isJoining)
                  const Center(
                    child: CustomCircularProgrressIndicator(),
                  ),
                CustomLiveVideoCard(
                  stream: stream,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
