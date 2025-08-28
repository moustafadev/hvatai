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

    _channel.bind('CommentAdded', (raw) {
      try {
        debugPrint('📥 CommentAdded event received: $raw');

        final root = _asMap(raw);
        final commentJson = root['data'] is Map
            ? Map<String, dynamic>.from(root['data'])
            : root;

        debugPrint('📝 Parsed comment JSON: $commentJson');

        final comment = StreamCommentModel.fromJson(commentJson);

        debugPrint(
          '✅ StreamCommentModel parsed → id=${comment.id}, '
          'streamId=${comment.streamId}, user=${comment.user?.name}, '
          'message=${comment.message}',
        );

        if (mounted) {
          final tabs = context.read<CategoryTabsCubit>();
          // tabs.onStreamCommentAdded(comment);
        }
      } catch (e, st) {
        debugPrint('❌ CommentAdded parse error: $e');
        debugPrintStack(stackTrace: st);
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
          ..fetchCategories()
          ..fetchLiveStreams(),
        child: SafeArea(
          bottom: false,
          child: BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
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
                            child: CategoryTabsWidget(
                              onCategorySelected: (category) {
                                if (category != null) {
                                  context
                                      .read<CategoryTabsCubit>()
                                      .selectCategory(category);
                                }
                              },
                              detailedInterestOptions: const [
                                'Category 1',
                                'Category 2',
                                'Category 3',
                                'Category 4',
                                'Category 5',
                                'Category 6',
                                'Category 7',
                                'Category 8',
                                'Category 9',
                                'Category 10',
                              ],
                            ),
                          ),
                          10.ph,
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: TitleCategoriesForYou(),
                          ),
                          12.ph,
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
