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
      create: (_) {
        final cubit = locator<CompanyCubit>();
        cubit.loadCompanyProfile(userId);
        cubit.fetchProducts(userId);
        cubit.fetchReviews(userId);
        cubit.loadCompanyStreams(userId);
        cubit.loadUserClips(userId);
        return cubit;
      },
      child: _CompanyView(
        userId: userId,
        onDispose: () {
          // Clear thumbnails when screen is disposed
          locator<CompanyCubit>().clearThumbnails();
        },
      ),
    );
  }
}

class _CompanyView extends StatefulWidget {
  const _CompanyView({required this.userId, this.onDispose});

  final int userId;
  final VoidCallback? onDispose;

  @override
  State<_CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<_CompanyView> {
  @override
  void dispose() {
    widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<CompanyCubit, CompanyState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CustomCircularProgressIndicator(),
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
                              ReadMoreText(
                                description,
                                trimMode: TrimMode.Line,
                                trimLines: 2,
                                textAlign: TextAlign.center,
                                trimCollapsedText: "\n${"seeAll".tr()}",
                                trimExpandedText: "\n${"seeLess".tr()}",

                                moreStyle: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryPink,
                                ),
                                lessStyle: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryPink,
                                ),
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor
                                      .withValues(alpha: 0.2),
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
                      userId: widget.userId,
                      userName: fullName.isEmpty ? null : fullName,
                    ),
                    ReviewsCompanyScreen(userId: widget.userId),
                    StreamsCompanyTab(userId: widget.userId),
                    ClipsCompanyTab(userId: widget.userId),
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
