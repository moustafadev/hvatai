part of '../profile.dart';

class EverythingAnalyticsWidget extends StatelessWidget {
  const EverythingAnalyticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsCubit, AnalyticsState>(
      builder: (context, state) {
        final cubit = context.read<AnalyticsCubit>();
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.ph,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
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
                      text: 'sellerAnalytics'.tr(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Row(
                      children: [
                        FittedBox(
                          child: CustomText(
                            text: '19 Jan 2025 - 30 Feb 2025'.tr(),
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
              SizedBox(
                height: 35.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: CategoryEverythingTabs(
                    selectedIndex: state.selectedCategoryIndex,
                    onSelect: cubit.changeCategory,
                  ),
                ),
              ),
              12.ph,
              LineChartWidget(),
            ],
          ),
        );
      },
    );
  }
}
