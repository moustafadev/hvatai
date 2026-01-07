part of '../analytics.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AnalyticsCubit>(),
      child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            initialIndex: state.selectedTabIndex,
            child: Scaffold(
              backgroundColor: AppColors.lightGreyBackground,
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.blackDark,
                  ),
                ),
                backgroundColor: AppColors.lightGreyBackground,
                elevation: 0,
              ),
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: CustomText(
                            text: "Аналитика",
                            color: AppColors.blackDark,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        12.ph,
                        // Tab selector
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: AnimatedContainer(
                            height: 45.h,
                            padding: EdgeInsets.all(4.r),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            duration: const Duration(milliseconds: 300),
                            child: TabBar(
                              onTap: (index) {
                                context.read<AnalyticsCubit>().changeTab(index);
                              },
                              labelPadding: EdgeInsets.zero,
                              indicator: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              labelColor: AppColors.white,
                              unselectedLabelColor: AppColors.blackDark,
                              indicatorColor: Colors.transparent,
                              dividerColor: Colors.transparent,
                              tabs: [
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: CustomText(
                                      text: "Вся",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: CustomText(
                                      text: "Стримы",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        12.ph,
                        // Period selector
                        PeriodSelectorWidget(
                          selectedIndex: state.selectedPeriodIndex,
                          onPeriodChanged: (index) {
                            context.read<AnalyticsCubit>().changePeriod(index);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
                body: TabBarView(
                  children: [
                    const EverythingAnalyticsWidget(),
                    const StreamsAnalyticsWidget(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
