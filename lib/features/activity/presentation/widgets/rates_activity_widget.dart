part of '../activity.dart';

class RatesActivityWidget extends StatelessWidget {
  const RatesActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RatesActivityCubit()..loadProducts(),
      child: BlocBuilder<RatesActivityCubit, RatesActivityState>(
        builder: (context, state) {
          final cubit = context.read<RatesActivityCubit>();
          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                12.ph,
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: CustomCategoryTabs(
                    categories: const [
                      "All",
                      "You are in the lead",
                      "The bid has been outbid",
                    ],
                    selectedIndex: state.selectedCategoryIndex,
                    onCategorySelected: cubit.changeCategory,
                  ),
                ),
                12.ph,
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.w),
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
                          100.ph
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
