part of '../stream.dart';

enum _ExitAction { cancel, leave, end }

class BroadcasterStreamScreen extends StatefulWidget {
  final StreamDataModel stream;

  const BroadcasterStreamScreen({
    super.key,
    required this.stream,
  });

  @override
  State<BroadcasterStreamScreen> createState() =>
      _BroadcasterStreamScreenState();
}

class _BroadcasterStreamScreenState extends State<BroadcasterStreamScreen>
    with WidgetsBindingObserver {
  late final BroadcasterStreamCubit _cubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _cubit = BroadcasterStreamCubit(
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      stream: widget.stream,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (!_cubit.state.isConnected || _cubit.state.room == null) return;

    if (state == AppLifecycleState.paused) {
      await _cubit.pauseStreaming();
    } else if (state == AppLifecycleState.resumed) {
      await _cubit.resumeStreaming();
    }
  }

  @override
  void dispose() {
    _cubit.cleanup();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  String _formatTime(int s) {
    final m = s ~/ 60, r = s % 60;
    return '${m.toString().padLeft(2, '0')}:${r.toString().padLeft(2, '0')}';
  }

  String _resolveCategoryName(int? categoryId) {
    if (categoryId == null) return '';
    final categories = widget.stream.categories;
    if (categories == null) return '';
    for (final category in categories) {
      if (category.id == categoryId) {
        return category.name ?? '';
      }
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<BroadcasterStreamCubit, BroadcasterStreamState>(
        builder: (context, state) {
          if (state.isInitializing) {
            return const FullScreenLoader();
          }

          final StreamProductModel? activeProduct = state.activeStreamProduct;
          final hasProduct = activeProduct != null;
          var productTitle = '';
          var productCategory = '';
          var startPrice = 0.0;
          var timerText = '--:--';

          if (activeProduct != null) {
            final streamProduct = activeProduct;
            final embeddedProduct = streamProduct.product;
            productTitle = embeddedProduct?.name ?? '';
            final categoryId = embeddedProduct?.categoryId;
            productCategory = _resolveCategoryName(categoryId);
            startPrice =
                double.tryParse(streamProduct.startingPrice ?? '') ?? 0.0;
            if (state.currentBidRemainingSeconds != null) {
              final remaining = state.currentBidRemainingSeconds!;
              timerText = remaining <= 0
                  ? 'Продано'
                  : _formatTime(remaining >= 0 ? remaining : 0);
            }
          } else if (state.streamSeconds > 0) {
            timerText = _formatTime(state.streamSeconds);
          }

          return PopScope(
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) {
                final action = await _showExitDialog();
                if (action == _ExitAction.cancel) return;
                await _performExit(action);
              }
            },
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  Positioned.fill(child: _buildVideoView(state)),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 20,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CompanyInfo(
                          streamUserModel: widget.stream.user,
                          isViewerMode: false,
                        ),
                        ViewerCountWidget(
                          count: state.viewerCount,
                          isViewerMode: false,
                        ),
                      ],
                    ),
                  ),
                  // Broadcaster controls
                  Positioned(
                    right: 16,
                    bottom: hasProduct ? null : 16,
                    top: hasProduct
                        ? MediaQuery.of(context).size.height * 0.55
                        : null,
                    child: RightSideIcons(
                      onClipTap: (name) async {
                        await _cubit.createClip(name: name);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Клип создан успешно'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        }
                      },
                      userTime: state.userTime,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: LiveBottomPanel(
                      comments: state.comments,
                      controller: _cubit.controller,
                      onCommentChanged: (t) => context
                          .read<BroadcasterStreamCubit>()
                          .updateCommentText(t),
                      onSend: () => context
                          .read<BroadcasterStreamCubit>()
                          .sendCommentToServer(streamId: widget.stream.id ?? 0),
                      timerText: timerText,
                      productTitle: productTitle,
                      productCategory: productCategory,
                      startPrice: startPrice,
                      showProductDetails: hasProduct,
                      showBidActions: false,
                      onEditPressed: null,
                      onBidPressed: null,
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

  Widget _buildVideoView(BroadcasterStreamState state) {
    if (!state.isConnected || !state.isPublishing || state.videoTrack == null) {
      return _waitingBox('Starting stream...');
    }

    // Initialize thumbnail key if not exists
    final thumbnailKey = state.thumbnailKey ?? GlobalKey();
    if (state.thumbnailKey == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _cubit.updateThumbnailKey(thumbnailKey);
      });
    }

    return RepaintBoundary(
      key: thumbnailKey,
      child: VideoTrackRenderer(
        renderMode: VideoRenderMode.auto,
        state.videoTrack!,
        fit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
      ),
    );
  }

  Widget _waitingBox(String text) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: Colors.white),
            const SizedBox(height: 16),
            Text(
              text,
              style: const TextStyle(color: Colors.white54, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Future<_ExitAction> _showExitDialog() async {
    return await showDialog<_ExitAction>(
          context: context,
          builder: (_) => AlertDialog(
            title: Row(
              children: [
                const Expanded(
                  child: Text('Leave or end stream?'),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () =>
                      Navigator.of(context).pop(_ExitAction.cancel),
                ),
              ],
            ),
            content: const Text(
              'You can end the stream for everyone or just leave.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(_ExitAction.leave),
                child: const Text('Leave'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(_ExitAction.end),
                child: const Text('End Stream'),
              ),
            ],
          ),
        ) ??
        _ExitAction.cancel;
  }

  Future<void> _performExit(_ExitAction action) async {
    final streamId = widget.stream.id ?? 0;

    // Disable camera and microphone
    await _cubit.state.localParticipant?.setCameraEnabled(false);
    await _cubit.state.localParticipant?.setMicrophoneEnabled(false);

    // Stop tracks
    await _cubit.state.videoTrack?.stop();
    await _cubit.state.audioTrack?.stop();

    WakelockPlus.disable();

    // Disconnect from room
    await _cubit.state.room?.disconnect();

    bool ok = false;
    if (action == _ExitAction.leave) {
      ok = await _cubit.leaveStream(streamId: streamId);
    } else if (action == _ExitAction.end) {
      ok = await _cubit.endStream(streamId: streamId);
    }

    if (ok && mounted) {
      Navigator.of(context).pop();
    }
  }
}
