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
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()
          ..fetchLiveStreams()
          ..getCategories()
          ..getFavCategories(),
        child: SafeArea(
          bottom: false,
          child: BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Scaffold(
                  body: const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.grey,
                  )),
                );
              }
              return Column(
                children: [
                  10.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TopBarWidget(
                      onGiftTap: () => context.push(AppRoutes.awardsGift),
                    ),
                  ),
                  16.ph,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: CategoryTabsWidget()),
                          10.ph,
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: TitleCategoriesForYou(),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: MyCategory(),
                          ),
                          12.ph,
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: LiveVideosWidget(
                              liveStreams: state.liveStreams,
                              currentUserId: '',
                            ),
                          ),
                          100.ph
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

Map<String, dynamic> _asMap(dynamic data) {
  if (data == null) return {};
  if (data is Map<String, dynamic>) return data;
  if (data is String) {
    try {
      return Map<String, dynamic>.from(jsonDecode(data));
    } catch (_) {
      return {};
    }
  }
  return {};
}
