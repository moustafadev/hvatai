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
        BlocProvider(
          create: (_) => locator<FavoriteCubit>()..getFavProducts(),
        ),
        BlocProvider(
          create: (_) => locator<ReviewsCubit>(),
        ),
        BlocProvider(
          create: (_) => locator<ProfileClipsCubit>(),
        ),
      ],
      child: BlocListener<ProfileCubit, ProfileState>(
        listener: (context, state) {
          // Load clips when profile is loaded
          if (!state.isLoading && state.userProfileModel.id != null) {
            context
                .read<ProfileClipsCubit>()
                .loadUserClips(state.userProfileModel.id!);
          }
        },
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Scaffold(
                backgroundColor: AppColors.background,
                body: Center(
                  child: CustomCircularProgressIndicator(),
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
                              tabs: [
                                Tab(text: 'goods'.tr()),
                                Tab(text: 'reviews'.tr()),
                                Tab(text: 'streams'.tr()),
                                Tab(text: 'clips'.tr()),
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
