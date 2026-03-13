part of '../home.dart';

class HomeSearchResult extends StatelessWidget {
  const HomeSearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSearchCubit, HomeSearchState>(
      builder: (context, homeSearchState) {
        if (homeSearchState.isLoading) {
          return const Padding(
            padding: EdgeInsets.all(24),
            child: Center(child: CustomCircularProgressIndicator()),
          );
        }

        if (homeSearchState.errorMessage.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomText(
                  text: homeSearchState.errorMessage,
                  color: AppColors.red,
                  fontWeight: FontWeight.w700,
                ),
                12.ph,
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'goods'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
              12.ph,
              ProductsSearchWidget(
                products: homeSearchState.products,
              ),
              16.ph,
              CustomText(
                text: 'streams'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
              10.ph,
              SearchLiveVideoWidget(
                liveStreams: homeSearchState.streams,
                currentUserId: '',
                searchQuery: homeSearchState.query,
              ),
              100.ph,
            ],
          ),
        );
      },
    );
  }
}
