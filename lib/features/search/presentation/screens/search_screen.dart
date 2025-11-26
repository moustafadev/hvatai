part of '../search.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<SearchCubit>()..initialize(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          final cubit = context.read<SearchCubit>();
          final isInitialLoading = state.isLoading && !state.hasLoadedInitial;

          if (isInitialLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: AppColors.grey,
                ),
              ),
            );
          }

          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            body: Column(
              children: [
                50.ph,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TopBarSearchWidget(
                    isSearch: true,
                    image: Assets.assetsIconsShare,
                    onChanged: cubit.onQueryChanged,
                  ),
                ),
                if (state.errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomText(
                      text: state.errorMessage,
                      fontWeight: FontWeight.w600,
                      color: AppColors.red,
                    ),
                  )
                else if (state.hasNoResults)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomText(
                      text: 'No results found',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                16.ph,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ButtonTabBarSearch(onCategorySelected: (category) {
                          if (category != null) {
                            cubit.selectCategory(category);
                          }
                        }),
                        16.ph,
                        // CustomText(
                        //   text: 'recentlySearched'.tr(),
                        //   fontWeight: FontWeight.w800,
                        //   fontSize: 20.sp,
                        // ),
                        // 12.ph,
                        // SearchRecently(),
                        // 24.ph,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:  16.0),
                          child: CustomText(
                            text: 'category'.tr(),
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                          ),
                        ),
                        12.ph,
                        MyCategorySearch(),
                        24.ph,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:  16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'goods'.tr(),
                                fontWeight: FontWeight.w800,
                                fontSize: 20.sp,
                              ),
                              12.ph,
                              ProductsSearchWidget(),
                              24.ph,
                              CustomText(
                                text: 'streams'.tr(),
                                fontWeight: FontWeight.w800,
                                fontSize: 20.sp,
                              ),
                              10.ph,
                              SearchLiveVideoWidget(
                                liveStreams: state.liveStreams,
                                currentUserId: '',
                                searchQuery: state.query,
                                selectedCategory: cubit.selectedCategory,
                              ),
                              24.ph,
                              CustomText(
                                text: 'users'.tr(),
                                fontWeight: FontWeight.w800,
                                fontSize: 20.sp,
                              ),
                              12.ph,
                              UsersSearchWidget(),
                            ],
                          ),
                        ),
                        100.ph
                      ],
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
