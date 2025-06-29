part of '../activity.dart';

class RatesActivityWidget extends StatelessWidget {
  const RatesActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RatesActivityCubit(),
      child: BlocBuilder<RatesActivityCubit, RatesActivityState>(
        builder: (context, state) {
          final cubit = context.read<RatesActivityCubit>();
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  12.ph,
                  SizedBox(
                    height: 50.h,
                    child: CategoryTabsRates(
                      selectedIndex: state.selectedCategoryIndex,
                      onSelect: cubit.changeCategory,
                    ),
                  ),
                  12.ph,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...state.products.map(
                            (item) => AuctionCard(
                              product: item,
                              selectedCategoryIndex:
                                  state.selectedCategoryIndex,
                              currentUserId: '',
                            ),
                          ),
                          16.h.verticalSpace,
                          CustomText(
                            text: "Recently Completed Auctions".tr(),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          8.h.verticalSpace,
                          ...state.products.where((e) => e.isSold).map(
                                (item) => AuctionCard(
                                  product: item,
                                  selectedCategoryIndex:
                                      state.selectedCategoryIndex,
                                  currentUserId: '',
                                ),
                              ),
                          100.ph
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
