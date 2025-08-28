part of '../stream.dart';

class CommentsCompactList extends StatelessWidget {
  const CommentsCompactList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LiveStreamCubit, LiveStreamState,
        List<StreamCommentModel>>(
      selector: (s) => s.comments,
      builder: (context, comments) {
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
      },
    );
  }
}
