part of '../profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late final ProfileCubit _profileCubit;
  late final MyGoodsCubit _goodsCubit;
  late final MyStreamsCubit _streamsCubit;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _profileCubit = locator<ProfileCubit>()..getProfile();
    _goodsCubit = locator<MyGoodsCubit>()..getMyProducts();
    _streamsCubit = locator<MyStreamsCubit>()..loadMyStreams();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _goodsCubit.close();
    _streamsCubit.close();
    _profileCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as UserRegistrationData?;

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _profileCubit),
        BlocProvider.value(value: _goodsCubit),
        BlocProvider.value(value: _streamsCubit),
      ],
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Scaffold(
              backgroundColor: AppColors.background,
              body: Center(
                child: CircularProgressIndicator(color: AppColors.grey),
              ),
            );
          }

          if (state.errorMessage.isNotEmpty) {
            return Scaffold(
              backgroundColor: AppColors.background,
              body: Center(
                child: CustomText(text: state.errorMessage),
              ),
            );
          }

          if (extra != null) {
            context.read<ProfileCubit>().updateUserData(extra);
          }

          final user = state.userProfileModel;

          return Scaffold(
            backgroundColor: AppColors.background,
            body: SafeArea(
              bottom: false,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          HeaderProfile(user: user),
                          RoleSwitchProfile(),
                          16.ph,
                          StatsRowProfile(user: user),
                        ],
                      ),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _SliverTabBarDelegate(
                        TabBar(
                          controller: _tabController,
                          indicatorColor: AppColors.primaryColor,
                          dividerColor: Colors.transparent,
                          indicatorWeight: 2,
                          labelStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: AppColors.blackColorIcon,
                          ),
                          unselectedLabelStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greyTransparent,
                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelPadding: EdgeInsets.zero,
                          tabs: const [
                            Tab(text: 'Товары'),
                            Tab(text: 'Отзывы'),
                            Tab(text: 'Стримы'),
                            Tab(text: 'Клипы'),
                          ],
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  controller: _tabController,
                  children: [
                    ProductsTabProfile(goodsCubit: _goodsCubit),
                    const ReviewsTabProfile(),
                    StreamsTabProfile(streamsCubit: _streamsCubit),
                    ClipsTabProfile(streamsCubit: _streamsCubit),
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
