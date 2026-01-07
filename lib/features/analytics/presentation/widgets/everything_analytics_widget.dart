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
                title: 'Выручка',
                value: statistics.statistics?.revenue?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Выручка',
                    message:
                        'Выручка – это общая сумма денег, которую вы получаете от реализации своих товаров или стримов за определённый период (например, за месяц, квартал или год).',
                  );
                },
              ),
              // Количество стримов (Number of streams)
              AnalyticsMetricCard(
                title: 'Количество стримов',
                value: statistics.statistics?.streams?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Количество стримов',
                    message:
                        'Количество стримов – это число проведённых онлайн-трансляций на платформе.',
                  );
                },
              ),
              // Количество ставок (Number of bids)
              AnalyticsMetricCard(
                title: 'Количество ставок',
                value: statistics.statistics?.bids?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Количество ставок',
                    message:
                        'Количество ставок – это общее число сделанных ставок за определённый период (день, месяц, событие).',
                  );
                },
              ),
              // Проданные товары (Items sold)
              AnalyticsMetricCard(
                title: 'Проданные товары',
                value: statistics.statistics?.soldProducts?.total ?? '-',
                onInfoTap: () {
                  AnalyticsInfoBottomSheet.show(
                    context,
                    title: 'Проданные товары',
                    message:
                        'Проданные товары – это товары, которые были переданы покупателю (или оказана услуга) и за которые получена оплата (или обязательство оплаты).',
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
