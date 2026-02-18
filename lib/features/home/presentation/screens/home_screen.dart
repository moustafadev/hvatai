part of '../home.dart';

bool inChat = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeSearchCubit _searchCubit;

  late final PusherCubit _pusherCubit;

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final GlobalKey _searchFieldKey = GlobalKey();
  final LayerLink _searchFieldLink = LayerLink();

  @override
  void initState() {
    super.initState();

    _searchCubit = locator<HomeSearchCubit>();
    _pusherCubit = locator<PusherCubit>();

    _pusherCubit.connect(context);

    _searchController.addListener(() {
      final q = _searchController.text;

      if (q.trim().isEmpty) {
        _searchCubit.hideSearch();
      } else {
        _searchCubit.onQueryChanged(q);
      }
    });
  }

  @override
  void dispose() {
    _pusherCubit.disconnect();

    _searchController.dispose();
    _searchFocusNode.dispose();
    _searchCubit.close();

    super.dispose();
  }

  void _submitSearch(BuildContext context, String q) {
    final query = q.trim();
    if (query.isEmpty) return;

    FocusScope.of(context).unfocus();
    _searchCubit.onSubmitted(query);
  }

  void _clearSearch(BuildContext context) {
    _searchController.clear();
    FocusScope.of(context).unfocus();
    _searchCubit.hideSearch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: _searchCubit),
          BlocProvider(
            create: (_) => locator<CategoriesCubit>()
              ..loadAllCategories()
              ..loadFavoriteCategories()
              ..subscribeToCategories(),
          ),
          BlocProvider(
            create: (_) => locator<LiveStreamsCubit>()
              ..fetchLiveStreams()
              ..subscribeToLiveStreams(context),
          ),
        ],
        child: BlocBuilder<LiveStreamsCubit, LiveStreamsState>(
          builder: (context, liveStreamsState) {
            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<LiveStreamsCubit>()
                    .fetchLiveStreams(isRefresh: true);
                context.read<CategoriesCubit>().loadAllCategories();
                context.read<CategoriesCubit>().loadFavoriteCategories();
              },
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  FocusScope.of(context).unfocus();
                  context.read<HomeSearchCubit>().hideSuggestions();
                },
                child: NotificationListener<ScrollNotification>(
                  onNotification: (n) {
                    if (n is ScrollStartNotification ||
                        n is ScrollUpdateNotification) {
                      context.read<HomeSearchCubit>().hideSuggestions();
                    }
                    return false;
                  },
                  child: CustomScrollView(
                    physics: const ClampingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    slivers: [
                      SliverAppBar(
                        pinned: true,
                        elevation: 0,
                        backgroundColor: AppColors.background,
                        automaticallyImplyLeading: false,
                        toolbarHeight: 40,
                        titleSpacing: 0,
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TopBarHomeWidget(
                            searchFieldKey: _searchFieldKey,
                            searchFieldLink: _searchFieldLink,
                            controller: _searchController,
                            focusNode: _searchFocusNode,
                            onSubmitted: (q) => _submitSearch(context, q),
                            onClear: () => _clearSearch(context),
                            onFocus: () => context
                                .read<HomeSearchCubit>()
                                .onSearchFieldFocused(),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Stack(
                          children: [
                            HomeBody(
                              liveStreamsState: liveStreamsState,
                              controller: _searchController,
                            ),
                            HomeSearchSuggestionsOverlay(
                              searchFieldKey: _searchFieldKey,
                              searchFieldLink: _searchFieldLink,
                              onSelected: (text) {
                                _searchController.text = text;
                                _searchController.selection =
                                    TextSelection.collapsed(
                                        offset: text.length);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
