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
            length: 4,
            initialIndex: state.selectedTabIndex,
            child: Scaffold(
              backgroundColor: AppColors.lightGreyBackground,
              appBar: AppBar(
                title: CustomText(
                  text: "activity".tr(),
                  color: Colors.black,
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                actions: [
                  GestureDetector(
                    onTap: () {
                      // context.push('/find-friends');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                            width: 1.w, color: const Color(0xffCACACA)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 4.h),
                        child: Row(
                          children: [
                            Image.asset(Assets.assetsIconsFindfriends,
                                height: 18.h),
                            SizedBox(width: 10.w),
                            CustomText(text: 'findFriends'.tr()),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
                bottom: TabBar(
                  onTap: cubit.changeTab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  dividerColor: AppColors.greyBorder,
                  tabs: [
                    Tab(
                        child: FittedBox(
                            child: CustomText(
                                text: "purchases".tr(),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Gilroy-Bold'))),
                    Tab(
                        child: FittedBox(
                            child: CustomText(
                                text: "rates".tr(),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Gilroy-Bold'))),
                    Tab(
                        child: FittedBox(
                            child: CustomText(
                                text: "messages".tr(),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Gilroy-Bold'))),
                    Tab(
                        child: FittedBox(
                            child: CustomText(
                                text: "featured".tr(),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Gilroy-Bold'))),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  // PurchaseActivityScreen(),
                  // RatesActivitySearchScreen(),
                  // MessagesList(),
                  // FeatureActivityScreen(),
                  SizedBox(),
                  RatesActivityWidget(),
                  MessageListWidget(),
                  FeaturedActivityWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
