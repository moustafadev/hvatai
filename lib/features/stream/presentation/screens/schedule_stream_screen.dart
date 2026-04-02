part of '../stream.dart';

class ScheduleStreamScreen extends StatelessWidget {
  const ScheduleStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: BlocBuilder<ScheduleStreamCubit, ScheduleStreamState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  14.ph,
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'Запустить стрим',
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                  ), // Action Cards
                  14.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: ActionCard(
                              icon: Assets.assetsIconsUsersGroupRoundedIcon,
                              title: 'Создать товар',
                              onTap: () {
                                context.push(AppRoutes.addProduct);
                              },
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: ActionCard(
                              icon: Assets.assetsIconsSoundwaveCircle2,
                              title: 'Создать трансляцию',
                              onTap: () {
                                context.push(AppRoutes.addStream);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  // Scheduled Streams Section
                  GestureDetector(
                    onTap: () {
                      context.push(
                        AppRoutes.scheduledStreamsList,
                        extra: {
                          'streams': state.scheduledStreams,
                        },
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                              text:
                                  'Запланированные стримы других пользователей',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          14.pw,
                          Image.asset(
                            Assets.assetsIconsDoubleAltArrowRight,
                            width: 16.w,
                            height: 16.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  // Scheduled Streams Grid
                  if (state.isLoading && state.scheduledStreams.isEmpty)
                    Padding(
                      padding: EdgeInsets.all(32.h),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.grey,
                        ),
                      ),
                    )
                  else if (state.errorMessage.isNotEmpty &&
                      state.scheduledStreams.isEmpty)
                    Padding(
                      padding: EdgeInsets.all(32.h),
                      child: Center(
                        child: CustomText(
                          text: state.errorMessage,
                          color: AppColors.red,
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  else if (state.scheduledStreams.isEmpty)
                    Padding(
                      padding: EdgeInsets.all(32.h),
                      child: Center(
                        child: CustomText(
                          text: 'Нет запланированных стримов',
                          fontSize: 14.sp,
                          color: AppColors.grey,
                        ),
                      ),
                    )
                  else
                    SizedBox(
                      height: 260.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        itemCount: state.scheduledStreams.length,
                        itemBuilder: (context, index) {
                          final stream = state.scheduledStreams[index];
                          final categoryName =
                              stream.categories?.firstOrNull?.name ?? '';

                          return Container(
                            width: 180.w,
                            margin: EdgeInsets.only(right: 12.w),
                            child: ScheduledStreamCard(
                              stream: stream,
                              categoryName: categoryName,
                            ),
                          );
                        },
                      ),
                    ),
                  SizedBox(height: 100.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withValues(alpha: 0.05),
              offset: const Offset(0, 3),
              blurRadius: 7,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: AppColors.blackColor.withValues(alpha: 0.05),
              offset: const Offset(0, 13),
              blurRadius: 13,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: AppColors.blackColor.withValues(alpha: 0.03),
              offset: const Offset(0, 30),
              blurRadius: 18,
              spreadRadius: 0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 28.w,
              height: 28.h,
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: title,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.blackDark,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
