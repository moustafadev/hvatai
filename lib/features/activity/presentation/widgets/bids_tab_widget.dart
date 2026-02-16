part of '../activity.dart';

class BidsTabWidget extends StatelessWidget {
  const BidsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityCubit, ActivityState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            // Sub-tabs for Active and History
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: AnimatedContainer(
                  height: 45,
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 3),
                        blurRadius: 7,
                        spreadRadius: 0,
                        color: const Color(0x05000000),
                      ),
                      BoxShadow(
                        offset: const Offset(0, 13),
                        blurRadius: 13,
                        spreadRadius: 0,
                        color: const Color(0x05000000),
                      ),
                      BoxShadow(
                        offset: const Offset(0, 30),
                        blurRadius: 18,
                        spreadRadius: 0,
                        color: const Color(0x03000000),
                      ),
                      BoxShadow(
                        offset: const Offset(0, 53),
                        blurRadius: 21,
                        spreadRadius: 0,
                        color: const Color(0x00000000),
                      ),
                      BoxShadow(
                        offset: const Offset(0, 83),
                        blurRadius: 23,
                        spreadRadius: 0,
                        color: const Color(0x00000000),
                      ),
                    ],
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (state.selectedBidSubTabIndex != 0) {
                              context.read<ActivityCubit>().changeBidSubTab(0);
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: state.selectedBidSubTabIndex == 0
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomText(
                              text: 'activeBids'.tr(),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: state.selectedBidSubTabIndex == 0
                                  ? AppColors.white
                                  : AppColors.blackDark,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (state.selectedBidSubTabIndex != 1) {
                              context.read<ActivityCubit>().changeBidSubTab(1);
                            }
                          },
                          child: Container(
                            height: 37,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: state.selectedBidSubTabIndex == 1
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomText(
                              text: 'bidHistory'.tr(),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: state.selectedBidSubTabIndex == 1
                                  ? AppColors.white
                                  : AppColors.text,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Content based on selected sub-tab
            BidsListWidget(
              bids: state.selectedBidSubTabIndex == 0
                  ? state.activeBids
                  : state.historyBids,
              isLoading: state.isLoadingBids,
              error: state.bidsError,
            ),
          ],
        );
      },
    );
  }
}

class BidsListWidget extends StatelessWidget {
  final List<UserBidItem> bids;
  final bool isLoading;
  final String error;

  const BidsListWidget({
    super.key,
    required this.bids,
    required this.isLoading,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SliverFillRemaining(
        child: const Center(
          child: CustomCircularProgressIndicator(),
        ),
      );
    }

    if (error.isNotEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: CustomText(
            text: error,
            color: AppColors.hotPink,
          ),
        ),
      );
    }

    if (bids.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: CustomText(
            text: 'noBidsYet'.tr(),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 100.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final bid = bids[index];
            return ActivityBidItemCard(bid: bid);
          },
          childCount: bids.length,
        ),
      ),
    );
  }
}
