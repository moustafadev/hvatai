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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.ph,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomText(
                text: 'streams'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
              ),
            ),
            10.ph,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchLiveVideoWidget(
                liveStreams: homeSearchState.streams,
                currentUserId: '',
                searchQuery: homeSearchState.query,
              ),
            ),
            100.ph,
          ],
        );
      },
    );
  }
}
