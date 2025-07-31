part of '../profile.dart';

class StreamsAnalyticsWidget extends StatelessWidget {
  const StreamsAnalyticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsCubit, AnalyticsState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                12.ph,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'MyFirstStream'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      Row(
                        children: [
                          FittedBox(
                            child: CustomText(
                              text: '04.06.2025 11:45'.tr(),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColors.grey,
                                size: 15.sp,
                              )),
                          20.pw,
                          GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.grey,
                                size: 15.sp,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                12.ph,
                Row(
                  children: [
                    Expanded(
                      child: InfoCard(
                        title: 'sales'.tr(),
                        value: '10 000 ₽'.tr(),
                        onInfoTap: () {},
                      ),
                    ),
                    11.pw,
                    Expanded(
                      child: InfoCard(
                        title: 'revenue'.tr(),
                        value: '10 000 ₽'.tr(),
                        onInfoTap: () {},
                      ),
                    ),
                  ],
                ),
                12.ph,
                InfoCard(
                  title: 'orders'.tr(),
                  value: '10 000 ₽'.tr(),
                  onInfoTap: () {},
                ),
                12.ph,
                InfoCard(
                  title: 'buyers'.tr(),
                  value: '20'.tr(),
                  onInfoTap: () {},
                ),
                12.ph,
                InfoCard(
                  title: 'firstBuyers'.tr(),
                  value: '18'.tr(),
                  onInfoTap: () {},
                ),
                12.ph,
                InfoCard(
                  title: 'averageOrderValue'.tr(),
                  value: '10 000 ₽'.tr(),
                  onInfoTap: () {},
                ),
                12.ph,
              ],
            ),
          ),
        );
      },
    );
  }
}
