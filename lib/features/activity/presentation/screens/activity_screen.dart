part of '../activity.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<ActivityCubit>(),
      child: BlocBuilder<ActivityCubit, ActivityState>(
        builder: (context, state) {
          final cubit = context.read<ActivityCubit>();
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
                  child: const Icon(Icons.arrow_back_ios),
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
                            text: "activity".tr(),
                            color: Colors.black,
                            fontFamily: 'Manrope',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        12.ph,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 21.r,
                                  backgroundColor: AppColors.gray,
                                  child: Image.asset(
                                    Assets.assetsIconsSave,
                                    height: 20.h,
                                    width: 18.w,
                                    fit: BoxFit.cover,
                                    color: AppColors.blackColorIcon,
                                  ),
                                ),
                                11.5.pw,
                                CustomText(
                                  text: "favorites".tr(),
                                  color: Colors.black,
                                  fontFamily: 'Manrope',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.blackColorIcon,
                                  size: 16.sp,
                                ),
                              ],
                            ),
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
                              onTap: cubit.changeTab,
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
                                      text: "purchases".tr(),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Manrope',
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: CustomText(
                                      text: "rates".tr(),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Manrope',
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
                    RatesActivityWidget(),
                    RatesActivityWidget(),
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
