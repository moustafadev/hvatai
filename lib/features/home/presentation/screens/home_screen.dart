part of '../home.dart';

bool inChat = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeSearchCubit _searchCubit;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  final GlobalKey _searchFieldKey = GlobalKey();
  final LayerLink _searchFieldLink = LayerLink();

  final _pusherManager = PusherManager();
  late final PusherClient _pusher;
  late final Channel _channel;

  @override
  void initState() {
    super.initState();

    _connectToPusher();

    _searchCubit = locator<HomeSearchCubit>();

    _searchController.addListener(() {
      final q = _searchController.text;

      if (q.trim().isEmpty) {
        _searchCubit.hideSearch(); // home + clear suggestions
      } else {
        _searchCubit.onQueryChanged(q); // suggestions only
      }
    });
  }

  void _connectToPusher() {
    final userId = locator<AppLocal>().getUserId();
    final chatsCubit = BlocProvider.of<ChatsCubit>(context);

    _pusher = _pusherManager.initializePusher();
    _channel = _pusher.subscribe('private-user.$userId');

    _channel.bind('MessageSent', (data) {
      final message =
          SocketMessageModel.fromJson(data).message.toMessageModel();
      chatsCubit.updateChatWithNewMessage(message);

      if (message.chatId == chatsCubit.state.currentChatId &&
          message.sender?.id != userId) {
        chatsCubit.addMessage(message);
        if (inChat) {
          chatsCubit.markMessageAsRead(message.chatId ?? 0);
        }
      }
    });

    _channel.bind('MessagesRead', (data) {
      if (inChat) {
        chatsCubit.markLastMessageAsReadInChat(data['chat_id']);
      }
      if (data['chat_id'] == chatsCubit.state.currentChatId) {
        chatsCubit.markAllMessagesAsReadLocally();
      }
    });
  }

  @override
  void dispose() {
    _pusher.unsubscribe('private-user.${locator<AppLocal>().getUserId()}');
    _pusherManager.dispose();

    _searchController.dispose();
    _searchFocusNode.dispose();

    // if this cubit is created from locator as singleton, don't close it.
    // if it's factory/unique per screen then you can close.
    _searchCubit.close();

    super.dispose();
  }

  void _submitSearch(BuildContext context, String q) {
    final query = q.trim();
    if (query.isEmpty) return;

    FocusScope.of(context).unfocus();
    _searchCubit
        .onSubmitted(query); // ✅ switches to search mode + loads streams
  }

  void _clearSearch(BuildContext context) {
    _searchController.clear(); // ✅ triggers listener => hideSearch()
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
              ..loadFavoriteCategories(),
          ),
          BlocProvider(
            create: (_) => locator<LiveStreamsCubit>()
              ..fetchLiveStreams()
              ..subscribeToLiveStreams(),
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
                        toolbarHeight: 56,
                        titleSpacing: 0,
                        title: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TopBarHomeWidget(
                            // ✅ pass key/link like SearchScreen
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

                      // ✅ keep suggestions overlay in the same stack layer
                      SliverToBoxAdapter(
                        child: Stack(
                          children: [
                            // main content
                            HomeBody(
                              liveStreamsState: liveStreamsState,
                              controller: _searchController,
                            ),

                            // overlay suggestions (only when query not empty)
                            // ✅ always mounted (it will show/hide using cubit state)
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
