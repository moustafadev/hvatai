part of '../activity.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<ActivityCubit>()..init(),
      child: const _ActivityScreenContent(),
    );
  }
}

class _ActivityScreenContent extends StatefulWidget {
  const _ActivityScreenContent();

  @override
  State<_ActivityScreenContent> createState() => _ActivityScreenContentState();
}

class _ActivityScreenContentState extends State<_ActivityScreenContent>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final cubit = context.read<ActivityCubit>();
      cubit.initializeControllers(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityCubit, ActivityState>(
      builder: (context, state) {
        final cubit = context.read<ActivityCubit>();

        // Sync tab controller with state
        cubit.syncTabController();
        cubit.syncBidTabController();

        final tabController = cubit.tabController;
        if (tabController == null) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          backgroundColor: AppColors.background,
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
            backgroundColor: AppColors.background,
            elevation: 0,
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "activity".tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverTabBarDelegate(
                  TabBar(
                    controller: tabController,
                    onTap: cubit.changeTab,
                    indicatorColor: AppColors.primaryColor,
                    dividerColor: Colors.transparent,
                    indicatorWeight: 2,
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w800,
                      color: AppColors.text,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Manrope',
                      color: AppColors.blackColor.withValues(alpha: 0.2),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(text: "favorites".tr()),
                      Tab(text: "streams".tr()),
                      Tab(text: "bids".tr()),
                    ],
                  ),
                ),
              ),
            ],
            body: TabBarView(
              controller: tabController,
              children: const [
                FavoritesTabWidget(),
                StreamsTabWidget(),
                BidsTabWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverTabBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}
