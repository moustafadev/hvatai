part of '../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<ProfileCubit>()..getProfile(),
        ),
        BlocProvider(
          create: (_) => locator<MyProductsCubit>()..getMyProducts(),
        ),
        BlocProvider(
          create: (_) => locator<MyStreamsCubit>()..loadMyStreams(),
        ),
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

          final user = state.userProfileModel;

          return DefaultTabController(
            length: 4,
            child: Scaffold(
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
                            const HeaderProfile(),
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
                            indicatorColor: AppColors.primaryColor,
                            dividerColor: Colors.transparent,
                            indicatorWeight: 2,
                            labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w800,
                              color: AppColors.blackColorIcon,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Manrope',
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
                  body: const TabBarView(
                    children: [
                      ProductsTabProfile(),
                      ReviewsTabProfile(),
                      StreamsTabProfile(),
                      ClipsTabProfile(),
                    ],
                  ),
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
