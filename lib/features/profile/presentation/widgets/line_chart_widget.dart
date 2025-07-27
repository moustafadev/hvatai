part of '../profile.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '100.000 ₽',
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                  ),
                  CustomText(
                    text: 'broughtSales'.tr(),
                    fontWeight: FontWeight.w400,
                    color: AppColors.graniteGray,
                    fontSize: 12.sp,
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: AppColors.gray,
                  ),
                  child: CustomText(
                    text: 'more'.tr(),
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackDark,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          12.ph,
          SizedBox(
            height: 300,
            child: LineChart(
              LineChartData(
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      getTitlesWidget: (value, meta) {
                        return CustomText(
                          text: value.toInt().toString(),
                          color: AppColors.graniteGray,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return CustomText(
                          text: value.toInt().toString(),
                          color: AppColors.grey,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        );
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    left: BorderSide(color: AppColors.gray, width: 1),
                    bottom: BorderSide(color: AppColors.gray, width: 1),
                    top: BorderSide.none,
                    right: BorderSide.none,
                  ),
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 2000),
                      const FlSpot(2, 4000),
                      const FlSpot(3, 6000),
                      const FlSpot(4, 8000),
                      const FlSpot(5, 6000),
                      const FlSpot(6, 4000),
                      const FlSpot(7, 2000),
                      const FlSpot(8, 4000),
                      const FlSpot(9, 6000),
                    ],
                    isCurved: true,
                    color: AppColors.primaryColor,
                    barWidth: 1,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
