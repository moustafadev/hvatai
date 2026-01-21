part of '../company.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({
    required this.userId,
    super.key,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompanyCubit>(
      create: (_) => locator<CompanyCubit>()..loadCompanyProfile(userId),
      child: _CompanyView(userId: userId),
    );
  }
}

class _CompanyView extends StatelessWidget {
  const _CompanyView({required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<CompanyCubit, CompanyState>(
        builder: (context, state) {

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primaryColor),
            );
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomText(
                  text: state.errorMessage,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          final user = state.user;
          if (user == null) {
            return const SizedBox.shrink();
          }

          final fullName = [
            user.name,
            user.lastName,
          ].where((element) => (element ?? '').isNotEmpty).join(' ').trim();

          final String? description = (user.description ?? '').trim().isEmpty
              ? null
              : user.description!.trim();

          return DefaultTabController(
            length: 4,
            child: SafeArea(
              bottom: false,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => context.pop(),
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.blackColorIcon,
                                  ),
                                ),
                                const Spacer(),
                                _CompanyIconButton(
                                  onTap: () {
                                    context.push(AppRoutes.mainNotification);
                                  },
                                  asset: Assets.assetsIconsBell,
                                  background: AppColors.greyButton,
                                ),
                              ],
                            ),
                            12.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 35),
                                CircleAvatar(
                                  radius: 25.r,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(32.r),
                                    child: CustomImage(
                                      key: ValueKey(user.image),
                                      imageSource: user.image ?? '',
                                      width: 50.w,
                                      height: 50.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                _CompanyIconButton(
                                  onTap: () {
                                    final user = state.user;
                                    if (user != null) {
                                      navigateToChatDetails(context, user);
                                    }
                                  },
                                  asset: Assets.assetsIconsMessage,
                                  background: AppColors.greyButton,
                                ),
                              ],
                            ),
                            8.ph,
                            CustomText(
                              text: fullName.isEmpty
                                  ? 'companyName'.tr()
                                  : fullName,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              textAlign: TextAlign.center,
                            ),
                            if (description != null) ...[
                              6.ph,
                              CustomText(
                                text: description,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.greyTransparent,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              6.ph,
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: 'viewAll'.tr(),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryPink,
                                    ),
                                    4.pw,
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 14.sp,
                                      color: AppColors.primaryPink,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            10.ph,
                            _CompanyFollowersRow(
                              subscribersCount: user.subscribersCount ?? 0,
                              subscribedUsersCount:
                                  user.subscribedUsersCount ?? 0,
                            ),
                            16.ph,
                            _CompanyStatsRow(
                              rating: user.personalAvg ?? 0,
                              reviews: user.personalRatingCount ?? 0,
                            ),
                            8.ph,
                          ],
                        ),
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
                body: TabBarView(
                  children: [
                    ProductsCompanyScreen(
                      userId: userId,
                      userName: fullName.isEmpty ? null : fullName,
                    ),
                    ReviewsCompanyScreen(userId: userId),
                    StreamsCompanyTab(userId: userId),
                    const _CompanyClipsPlaceholder(),
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

class _CompanyIconButton extends StatelessWidget {
  const _CompanyIconButton({
    required this.onTap,
    required this.asset,
    this.background,
  });

  final VoidCallback onTap;
  final String asset;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.w,
        height: 36.h,
        decoration: BoxDecoration(
          color: background ?? AppColors.greyButton,
          borderRadius: BorderRadius.circular(100.r),
        ),
        padding: EdgeInsets.all(8.r),
        child: Image.asset(asset),
      ),
    );
  }
}

class _CompanyFollowersRow extends StatelessWidget {
  const _CompanyFollowersRow({
    required this.subscribersCount,
    required this.subscribedUsersCount,
  });

  final int subscribersCount;
  final int subscribedUsersCount;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: '$subscribersCount',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.blackColorIcon,
            ),
          ),
          TextSpan(
            text: ' ${'subscribers'.tr()}  ',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.text,
            ),
          ),
          TextSpan(
            text: '•  $subscribedUsersCount',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.blackColorIcon,
            ),
          ),
          TextSpan(
            text: ' ${'subscriptions'.tr()}',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.text,
            ),
          ),
        ],
      ),
    );
  }
}

class _CompanyStatsRow extends StatelessWidget {
  const _CompanyStatsRow({
    required this.rating,
    required this.reviews,
  });

  final double rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CustomText(
              text: 'rating'.tr(),
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
            ),
            6.ph,
            Row(
              children: [
                Image.asset(
                  Assets.assetsIconsStar,
                  height: 16.h,
                  width: 16.w,
                  color: AppColors.goldenColor,
                ),
                6.pw,
                CustomText(
                  text: rating.toStringAsFixed(1),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
        40.pw,
        Column(
          children: [
            CustomText(
              text: 'reviews'.tr(),
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
            ),
            6.ph,
            CustomText(
              text: _formatCount(reviews),
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ],
    );
  }

  String _formatCount(int value) {
    if (value >= 1000) {
      final thousands = value / 1000;
      return '${thousands.toStringAsFixed(1)}K';
    }
    return value.toString();
  }
}

class _CompanyClipsPlaceholder extends StatelessWidget {
  const _CompanyClipsPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'noClips'.tr(),
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.blackTransparent40,
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
