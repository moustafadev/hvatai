part of '../stream.dart';

class ScheduledStreamsListScreen extends StatelessWidget {
  final List<StreamDataModel> streams;

  const ScheduledStreamsListScreen({
    super.key,
    required this.streams,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  right: 24.w,
                  top: 14.h,
                  bottom: 14.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20.sp,
                          color: AppColors.blackDark,
                        ),
                      ),
                    ),
                    12.ph,
                    CustomText(
                      text: 'Запланированные стримы других пользователей',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ],
                ),
              ),
            ),
            // Empty State
            if (streams.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CustomText(
                    text: 'Нет запланированных стримов',
                    fontSize: 14.sp,
                    color: AppColors.grey,
                  ),
                ),
              )
            // Grid View
            else
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11.w,
                    mainAxisExtent: 260.h,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final stream = streams[index];
                      final categoryName =
                          stream.categories?.firstOrNull?.name ?? '';

                      return ScheduledStreamCard(
                        stream: stream,
                        categoryName: categoryName,
                      );
                    },
                    childCount: streams.length,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
