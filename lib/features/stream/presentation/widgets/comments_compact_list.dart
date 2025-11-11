part of '../stream.dart';

class CommentsCompactList extends StatelessWidget {
  const CommentsCompactList({super.key});

  @override
  Widget build(BuildContext context) {
    // Try to get comments from BroadcasterStreamCubit or ViewerStreamCubit
    // Use MultiBlocBuilder or wrap with Builder to avoid context.read during build
    return Builder(
      builder: (context) {
        // Try BroadcasterStreamCubit first
        try {
          final broadcasterState =
              context.watch<BroadcasterStreamCubit>().state;
          return _buildCommentsList(broadcasterState.comments);
        } catch (_) {
          // If not found, try ViewerStreamCubit
          try {
            final viewerState = context.watch<ViewerStreamCubit>().state;
            return _buildCommentsList(viewerState.comments);
          } catch (_) {
            return const SizedBox.shrink();
          }
        }
      },
    );
  }

  Widget _buildCommentsList(List<StreamCommentModel> comments) {
    // Show newest at the bottom and auto-stick on new items
    final items = List<StreamCommentModel>.from(comments.reversed);

    return ListView.builder(
      reverse: true, // bottom is scroll offset 0
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, i) {
        final c = items[i];
        return Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 40,
                height: 40,
                child: Center(
                  child: Image(
                    image: AssetImage(Assets.assetsImagesAvatar),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: c.user?.name ?? "",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    CustomText(
                      text: c.message ?? "",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
