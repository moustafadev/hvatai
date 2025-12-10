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
    locator<ApiServiceProfile>().getMyProducts(categoryIds: [1,2]);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.lightGreyBackground,
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
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TopBarWidget(
                        // onGiftTap: () => context.push(AppRoutes.awardsGift),
                        ),
                  ),
                  16.ph,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: TitleCategoriesForYou(),
                      ),
                      12.ph,
                      MyCategory(),
                      15.ph,
                      CategoryTabsWidget(),
                      24.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: LiveVideosWidget(
                          liveStreams: liveStreamsState.liveStreams,
                          currentUserId: '',
                        ),
                      ),
                      100.ph
                    ],
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
