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
      child: _ProfileClipsRefreshScope(
        child: BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) {
            // Load clips when profile is loaded (avoid firing after sign-out failure
            // or when user was cleared — e.g. successful sign-out resets user model).
            if (!state.isLoading &&
                state.errorMessage.isEmpty &&
                state.userProfileModel.id != null) {
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
      ),
    );
  }
}

/// Refetches clips when opening profile with [RefreshProfileClipsExtra] (e.g. after clip upload).
class _ProfileClipsRefreshScope extends StatefulWidget {
  const _ProfileClipsRefreshScope({required this.child});

  final Widget child;

  @override
  State<_ProfileClipsRefreshScope> createState() =>
      _ProfileClipsRefreshScopeState();
}

class _ProfileClipsRefreshScopeState extends State<_ProfileClipsRefreshScope> {
  bool _pendingClipRefreshFromRoute = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (GoRouterState.of(context).extra is RefreshProfileClipsExtra) {
      _pendingClipRefreshFromRoute = true;
    }
  }

  void _tryConsumeClipRefreshExtra(BuildContext context) {
    if (!_pendingClipRefreshFromRoute || !mounted) return;
    final profileState = context.read<ProfileCubit>().state;
    if (profileState.isLoading ||
        profileState.errorMessage.isNotEmpty ||
        profileState.userProfileModel.id == null) {
      return;
    }
    _pendingClipRefreshFromRoute = false;
    context.read<ProfileClipsCubit>().loadUserClips(
          profileState.userProfileModel.id!,
          forceRefresh: true,
        );
    context.go(AppRoutes.profile);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          _pendingClipRefreshFromRoute &&
          !current.isLoading &&
          current.errorMessage.isEmpty &&
          current.userProfileModel.id != null,
      listener: (context, state) => _tryConsumeClipRefreshExtra(context),
      child: Builder(
        builder: (context) {
          if (_pendingClipRefreshFromRoute) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                _tryConsumeClipRefreshExtra(context);
              }
            });
          }
          return widget.child;
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
