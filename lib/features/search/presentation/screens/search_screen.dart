part of '../search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey _searchFieldKey = GlobalKey();
  final LayerLink _searchFieldLink = LayerLink();

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

          final isSearching = state.isLoading && state.hasLoadedInitial;

          return Scaffold(
            backgroundColor: AppColors.background,
            body: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    59.ph,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TopBarSearchWidget(
                        searchFieldKey: _searchFieldKey,
                        searchFieldLink: _searchFieldLink,
                        onChanged: cubit.onQueryChanged,
                        onFocus: cubit.onSearchFieldFocused,
                        onSubmitted: cubit.onSearchSubmitted,
                        initialValue: state.query,
                      ),
                    ),
                    Expanded(
                      child: isSearching
                          ? const Center(
                              child: CustomCircularProgrressIndicator())
                          : NotificationListener<ScrollNotification>(
                              onNotification: (notification) {
                                if (notification is ScrollUpdateNotification ||
                                    notification is ScrollStartNotification) {
                                  cubit.onScroll();
                                }
                                return false;
                              },
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (state.recentSearches.isNotEmpty &&
                                        state.query.isEmpty &&
                                        state.selectedCategoryId == null)
                                      RecentSearchWidget(),
                                    16.ph,
                                    // Hide category section if one is selected
                                    if (state.selectedCategoryId == null) ...[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: CustomText(
                                          text: 'category'.tr(),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                      12.ph,
                                      MyCategorySearch(),
                                      24.ph,
                                    ],
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          ),
                                          24.ph,
                                        ],
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
                if (state.query.isNotEmpty)
                  _SearchSuggestionsOverlay(
                    searchFieldKey: _searchFieldKey,
                    searchFieldLink: _searchFieldLink,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
