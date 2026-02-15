part of '../analytics.dart';

class EverythingAnalyticsWidget extends StatelessWidget {
  const EverythingAnalyticsWidget({super.key});

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
              // Количество стримов (Number of streams)
              AnalyticsMetricCard(
                title: 'numberOfStreams'.tr(),
                value: statistics.statistics?.streams?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'numberOfStreams'.tr(),
                    message:
                        'numberOfStreamsMessage'.tr(),
                  );
                },
              ),
              // Количество ставок (Number of bids)
              AnalyticsMetricCard(
                title: 'numberOfBids'.tr(),
                value: statistics.statistics?.bids?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'numberOfBids'.tr(),
                    message:
                        'numberOfBidsMessage'.tr(),
                  );
                },
              ),
              // Проданные товары (Items sold)
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
            ],
          ),
        );
      },
    );
  }
}
