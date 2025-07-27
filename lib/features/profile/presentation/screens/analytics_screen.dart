part of '../profile.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AnalyticsCubit>(),
      child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
          builder: (context, state) {
        final cubit = context.read<AnalyticsCubit>();
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
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomText(
                          text: "Analytics".tr(),
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      12.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: AnimatedContainer(
                          height: 45.h,
                          padding: EdgeInsets.all(4.r),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          duration: const Duration(milliseconds: 1000),
                          child: TabBar(
                            //  onTap: cubit.changeTab,
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
                                    text: "Everything".tr(),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: CustomText(
                                    text: "streams".tr(),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              body: TabBarView(
                children: [
                  EverythingAnalyticsWidget(),
                  StreamsAnalyticsWidget(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
