part of '../analytics.dart';

class StreamsAnalyticsWidget extends StatelessWidget {
  const StreamsAnalyticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsCubit, AnalyticsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage.isNotEmpty && state.statistics == null) {
          return Center(
            child: CustomText(
              text: state.errorMessage,
              color: AppColors.red,
            ),
          );
        }

        final statistics = state.statistics;
        if (statistics == null) {
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Выручка (Revenue)
              AnalyticsMetricCard(
                title: 'revenue'.tr(),
                value: statistics.statistics?.revenue?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'revenue'.tr(),
                    message:
                        'revenueMessage'.tr(),
                  );
                },
              ),
              12.ph,
              // Количество продаж (Number of sales)
              AnalyticsMetricCard(
                title: 'soldProducts'.tr(),
                value: statistics.statistics?.soldProducts?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'soldProducts'.tr(),
                    message:
                        'soldProductsMessage'.tr(),
                  );
                },
              ),
              12.ph,
              // Ставки всего / участники (Total bids / participants)
              AnalyticsMetricCard(
                title: 'totalBidsAndParticipants'.tr(),
                value:
                    '${statistics.statistics?.bids?.total ?? '-'} / ${statistics.statistics?.participants?.total ?? '-'}',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'totalBidsAndParticipants'.tr(),
                    message:
                        'totalBidsAndParticipantsMessage'.tr(),
                  );
                },
              ),
              12.ph,
              // Максимальное количество зрителей (Maximum number of viewers)
              AnalyticsMetricCard(
                title: 'maximumNumberOfViewers'.tr(),
                value: statistics.statistics?.maxViewers?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'maximumNumberOfViewers'.tr(),
                    message:
                        'maximumNumberOfViewersMessage'.tr(),
                  );
                },
              ),
              12.ph,
              // Победители лотов (Lot winners)
              AnalyticsMetricCard(
                title: 'lotWinners'.tr(),
                value:
                    statistics.statistics?.auctionWinners?.totalUnique ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'lotWinners'.tr(),
                    message:
                        'lotWinnersMessage'.tr(),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
