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
                title: 'Выручка',
                value: statistics.statistics?.revenue?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Выручка',
                    message:
                        'Выручка — это общая сумма денег, которую вы получаете от реализации своих товаров или стримов за определённый период (например, за месяц, квартал или год).',
                  );
                },
              ),
              12.ph,
              // Количество продаж (Number of sales)
              AnalyticsMetricCard(
                title: 'Количество продаж',
                value: statistics.statistics?.soldProducts?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Количество продаж',
                    message:
                        'Количество продаж — это число товаров или услуг, проданных непосредственно во время онлайн-трансляций (live-стримов).',
                  );
                },
              ),
              12.ph,
              // Ставки всего / участники (Total bids / participants)
              AnalyticsMetricCard(
                title: 'Ставки всего / участники',
                value:
                    '${statistics.statistics?.bids?.total ?? '-'} / ${statistics.statistics?.participants?.total ?? '-'}',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Ставки всего / участники',
                    message:
                        'Общее количество ставок и количество участников, сделавших хотя бы одну ставку.',
                  );
                },
              ),
              12.ph,
              // Максимальное количество зрителей (Maximum number of viewers)
              AnalyticsMetricCard(
                title: 'Максимальное количество зрителей',
                value: statistics.statistics?.maxViewers?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Максимальное количество зрителей',
                    message:
                        'Максимальное количество зрителей — это пиковое число пользователей, одновременно присутствовавших на онлайн-трансляции (стриме) в течение всего её времени.',
                  );
                },
              ),
              12.ph,
              // Победители лотов (Lot winners)
              AnalyticsMetricCard(
                title: 'Победители лотов',
                value:
                    statistics.statistics?.auctionWinners?.totalUnique ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Победители лотов',
                    message:
                        'Победители лотов — это пользователи, которые выиграли право на покупку товара или услуги в результате аукциона, розыгрыша или конкурса, организованного в формате лотов (отдельных позиций).',
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
