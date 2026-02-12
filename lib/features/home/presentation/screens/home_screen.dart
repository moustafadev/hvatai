part of '../home.dart';

bool inChat = false;

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pusherManager = PusherManager();
  late final PusherClient _pusher;
  late final Channel _channel;

  @override
  void initState() {
    super.initState();
    _connectToPusher();
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
      // locator<HomeSummaryCubit>()..loadSummary();

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    inChat = false;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => locator<CategoriesCubit>()
              ..getCategories()
              ..getFavCategories(),
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
                context.read<CategoriesCubit>().getCategories();
                context.read<CategoriesCubit>().getFavCategories();
              },
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverAppBar(
                    pinned: true, // ✅ fixed at top
                    floating: false,
                    snap: false,
                    elevation: 0,
                    backgroundColor: AppColors.background,
                    automaticallyImplyLeading: false,
                    toolbarHeight: 40, // adjust as you need
                    titleSpacing: 0,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TopBarWidget(isBack: false),
                    ),
                  ),
                  SliverToBoxAdapter(child: 16.ph),
                  SliverToBoxAdapter(
                    child: BlocBuilder<CategoriesCubit, CategoriesState>(
                      builder: (context, categoriesState) {
                        final hasSelectedFavCategory =
                            categoriesState.selectedFavCategoryId != null;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!hasSelectedFavCategory) ...[
                              const AllChildCategoriesWidget(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: TitleCategoriesForYou(),
                              ),
                              12.ph,
                              MyCategory(),
                            ],
                            if (hasSelectedFavCategory) ...[
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: TitleCategoriesForYou(),
                              ),
                              12.ph,
                              MyCategory(),
                              CategoryTabsWidget(),
                            ],
                            24.ph,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: LiveVideosWidget(
                                liveStreams: liveStreamsState.liveStreams,
                              ),
                            ),
                            120.ph,
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
