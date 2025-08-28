part of '../stream.dart';

enum UserRole { broadcaster, viewer }

enum _ExitAction { cancel, leave, end }

class LiveStreamScreen extends StatefulWidget {
  final StreamDataModel stream;
  final UserRole userRole;

  const LiveStreamScreen({
    super.key,
    required this.userRole,
    required this.stream,
  });

  @override
  State<LiveStreamScreen> createState() => _LiveStreamScreenState();
}

class _LiveStreamScreenState extends State<LiveStreamScreen> {
  final _pusherManager = PusherManager();
  PusherClient? _pusher;
  Channel? _streamChannel;

  String _formatTime(int seconds) {
    final mins = seconds ~/ 60;
    final secs = seconds % 60;
    return '${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  late final LiveStreamCubit _cubit = locator<LiveStreamCubit>();

  @override
  void initState() {
    super.initState();

    // init cubit first
    _cubit
      ..initialize(
        appId: widget.stream.agoraAppId ?? "",
        channelName: widget.stream.channelName ?? "",
        token: widget.stream.agoraToken ?? "",
        uid: widget.stream.agoraUid ?? 0,
        role: widget.userRole,
        initialSeconds: 24,
      )
      ..loadInitialComments(streamId: widget.stream.id ?? 0);

    // then init socket
    _initStreamSocket();
  }

  void _initStreamSocket() {
    final streamId = widget.stream.id;
    if (streamId == null) {
      debugPrint('⚠️ Stream id is null — skip socket subscription');
      return;
    }

    _pusher = _pusherManager.initializePusher();
    final channelName = 'stream.$streamId';
    debugPrint('🔗 Subscribing to $channelName');

    _streamChannel = _pusher!.subscribe(channelName);

    // Optional subscription lifecycle logs
    _streamChannel!.bind('pusher:subscription_succeeded', (_) {
      debugPrint('✅ Subscribed: $channelName');
    });
    _streamChannel!.bind('pusher:subscription_error', (e) {
      debugPrint('❌ Subscription error on $channelName: $e');
    });

    // --- Comments ---
    _streamChannel!.bind('comment.added', (raw) {
      _handleComment(raw, source: channelName);
    });
    // Fallback casing if backend sends CamelCase names:
    _streamChannel!.bind('CommentAdded', (raw) {
      _handleComment(raw, source: channelName);
    });

    // --- Bids ---
    _streamChannel!.bind('bid.placed', (raw) {
      _handleBid(raw, source: channelName);
    });
    _streamChannel!.bind('BidPlaced', (raw) {
      _handleBid(raw, source: channelName);
    });
  }

  void _handleComment(dynamic raw, {required String source}) {
    try {
      debugPrint('🗨️ [$source] comment event: $raw');

      final model = StreamCommentModel.fromJson(raw['comment']);
      debugPrint(
          '✅ [$source] parsed → id=${model.id}, streamId=${model.streamId}, user=${model.user?.name}');

      if (!mounted) return;
      _cubit.addIncomingComment(model); // <— no context.read()
    } catch (e, st) {
      debugPrint('❌ [$source] comment parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleBid(dynamic raw, {required String source}) {
    try {
      debugPrint('💸 [$source] bid event: $raw');
      // final bidJson =
      //     root['data'] is Map ? Map<String, dynamic>.from(root['data']) : root;

      // // Extract a few useful fields for logs / TODO: forward to the UI as needed
      // final bidId = bidJson['id'];
      // final productId = bidJson['product_id'];
      // final amount = bidJson['amount'];
      // debugPrint(
          // '✅ [$source] bid parsed → id=$bidId, productId=$productId, amount=$amount');

      // TODO: if you have a cubit for product/bid state, forward it here.
      // e.g., context.read<SomeCubit>().onBidPlaced(widget.stream.id!, productId, amount);
    } catch (e, st) {
      debugPrint('❌ [$source] bid parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  @override
  void dispose() {
    // Unsubscribe this stream channel only
    final id = widget.stream.id;
    if (_pusher != null && id != null) {
      final name = 'stream.$id';
      try {
        debugPrint('🔻 Unsubscribing $name');
        _streamChannel?.unbind('comment.added');
        _streamChannel?.unbind('CommentAdded');
        _streamChannel?.unbind('bid.placed');
        _streamChannel?.unbind('BidPlaced');
        _pusher!.unsubscribe(name);
      } catch (_) {}
    }
    _pusherManager.dispose();
    _cubit.close(); // <— important

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<LiveStreamCubit, LiveStreamState>(
        builder: (context, state) {
          if (state.isInitializing || state.isLoadingComments) {
            return const FullScreenLoader();
          }
          final cubit = context.read<LiveStreamCubit>();
          final firstProduct = (widget.stream.streamProducts != null &&
                  widget.stream.streamProducts!.isNotEmpty)
              ? widget.stream.streamProducts!.first
              : null;

          return WillPopScope(
            onWillPop: () async {
              final action = await _showExitDialog();
              if (action == _ExitAction.cancel) return false;
              await _performExit(action);
              return false; // we pop manually in _performExit
            },
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  // === Main video ===
                  Positioned.fill(
                    child: _buildMainVideo(
                      context: context,
                      state: state,
                      engine: cubit.engine,
                      channelName: widget.stream.channelName ?? "",
                    ),
                  ),

                  // === Top Header ===
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 20,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CompanyInfo(streamUserModel: widget.stream.user),
                        const ViewerCountWidget(),
                      ],
                    ),
                  ),

                  // === Right Side Icons ===
                  Positioned(
                    right: 16,
                    top: MediaQuery.of(context).size.height * 0.55,
                    child: const RightSideIcons(),
                  ),

                  // === Bottom Panel ===
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: LiveBottomPanel(
                      comments: state.comments, // raw StreamCommentModel list
                      onCommentChanged: (t) =>
                          context.read<LiveStreamCubit>().updateCommentText(t),
                      onSend: () {
                        context.read<LiveStreamCubit>().sendCommentToServer(
                            streamId: widget.stream.id ?? 0);
                      },
                      timerText: _formatTime(state.streamSeconds),
                      productTitle: firstProduct?.product?.name ?? "No product",
                      productCategory:
                          firstProduct?.product?.category?.name ?? "",
                      startPrice: firstProduct?.startingPrice ?? 0,
                      onEditPressed: () {},
                      onBidPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // ==== Video builders (unchanged from your version) ===
  // ==== Video builders ====

  Widget _buildMainVideo({
    required BuildContext context,
    required LiveStreamState state,
    required RtcEngine engine,
    required String channelName,
  }) {
    if (state.role == UserRole.viewer) {
      if (state.remoteUid != null) {
        return _buildRemoteVideo(engine, channelName, state.remoteUid!);
      } else {
        return Container(
          color: Colors.black,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(color: Colors.white),
                SizedBox(height: 16),
                Text(
                  'Waiting for broadcaster...',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
              ],
            ),
          ),
        );
      }
    }

    // Broadcaster
    return state.localReady
        ? AgoraVideoView(
            controller: VideoViewController(
              rtcEngine: engine,
              canvas: const VideoCanvas(
                uid: 0,
                renderMode: RenderModeType.renderModeHidden,
              ),
              useFlutterTexture: true,
            ),
          )
        : const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
  }

  Widget _buildRemoteVideo(RtcEngine engine, String channelName, int uid) {
    return AgoraVideoView(
      controller: VideoViewController.remote(
        rtcEngine: engine,
        canvas: VideoCanvas(
          uid: uid,
          renderMode: RenderModeType.renderModeFit,
        ),
        connection: RtcConnection(channelId: channelName),
        useFlutterTexture: true,
      ),
    );
  }

  Future<_ExitAction> _showExitDialog() async {
    final isBroadcaster = widget.userRole == UserRole.broadcaster;

    return await showDialog<_ExitAction>(
          context: context,
          barrierDismissible: true,
          builder: (_) {
            return AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                        isBroadcaster ? 'Leave or end stream?' : 'Leave stream?'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () =>
                        Navigator.of(context).pop(_ExitAction.cancel),
                  ),
                ],
              ),
              content: Text(isBroadcaster
                  ? 'You can end the stream for everyone or just leave.'
                  : 'You will leave the live.'),
              actions: [
               
                if (isBroadcaster)
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).pop(_ExitAction.leave),
                    child: const Text('Leave'),
                  ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(
                    isBroadcaster ? _ExitAction.end : _ExitAction.leave,
                  ),
                  child: Text(isBroadcaster ? 'End stream' : 'Leave'),
                ),
              ],
            );
          },
        ) ??
        _ExitAction.cancel;
  }

  Future<void> _performExit(_ExitAction action) async {
    final streamId = widget.stream.id ?? 0;
    final isBroadcaster = widget.userRole == UserRole.broadcaster;

    final action = await _showExitDialog();
    if (action == _ExitAction.leave) {
      final ok = await _cubit.leaveStream(streamId: streamId);
      if (ok && mounted) Navigator.of(context).pop();
    } else if (action == _ExitAction.end && isBroadcaster) {
      final ok = await _cubit.endStream(streamId: streamId);
      if (ok && mounted) Navigator.of(context).pop();
    }
  }
}

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
