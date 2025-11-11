part of '../stream.dart';

enum _ViewerExitAction { cancel, leave }

class ViewerStreamScreen extends StatefulWidget {
  final StreamDataModel stream;
  final JoinStreamData? joinData;

  const ViewerStreamScreen({
    super.key,
    required this.stream,
    this.joinData,
  });

  @override
  State<ViewerStreamScreen> createState() => _ViewerStreamScreenState();
}

class _ViewerStreamScreenState extends State<ViewerStreamScreen> {
  late final ViewerStreamCubit _cubit;
  bool _hasHandledStreamEnd = false;

  @override
  void initState() {
    super.initState();
    _cubit = ViewerStreamCubit(
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      stream: widget.stream,
      joinData: widget.joinData,
    );
  }

  @override
  void dispose() {
    _cubit.cleanup();
    super.dispose();
  }

  String _formatTime(int s) {
    final m = s ~/ 60, r = s % 60;
    return '${m.toString().padLeft(2, '0')}:${r.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocListener<ViewerStreamCubit, ViewerStreamState>(
        listenWhen: (previous, current) =>
            previous.isStreamEnded != current.isStreamEnded,
        listener: (context, state) {
          if (state.isStreamEnded && !_hasHandledStreamEnd && mounted) {
            _hasHandledStreamEnd = true;
            // Stream ended - navigate away
            showFloatingMessageSuccess('Stream ended');
            Navigator.of(context).pop();
          }
        },
        child: BlocBuilder<ViewerStreamCubit, ViewerStreamState>(
          builder: (context, state) {
            if (state.isInitializing) {
              return const FullScreenLoader();
            }

            final firstProduct = (widget.stream.streamProducts != null &&
                    widget.stream.streamProducts!.isNotEmpty)
                ? widget.stream.streamProducts!.first
                : null;

            return Scaffold(
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
                      children: [
                        InkWell(
                          onTap: () async {
                            final action = await _showExitDialog();
                            await _performExit(action);
                          },
                          child: CompanyInfo(
                            streamUserModel: widget.stream.user,
                          ),
                        ),
                        ViewerCountWidget(count: state.viewerCount),
                      ],
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
                          .read<ViewerStreamCubit>()
                          .updateCommentText(t),
                      onSend: () => context
                          .read<ViewerStreamCubit>()
                          .sendCommentToServer(streamId: widget.stream.id ?? 0),
                      timerText: _formatTime(state.streamSeconds),
                      productTitle:
                          firstProduct?.product?.productName ?? "No product",
                      productCategory:
                          firstProduct?.product?.category?.name ?? "",
                      startPrice:
                          double.tryParse(firstProduct?.startingPrice ?? "") ??
                              0,
                      onEditPressed: () {},
                      onBidPressed: () {},
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

  Widget _buildVideoView(ViewerStreamState state) {
    if (!state.isConnected || state.remoteVideoTrack == null) {
      return _waitingBox('Connecting to stream...');
    }

    return VideoTrackRenderer(
      renderMode: VideoRenderMode.auto,
      state.remoteVideoTrack!,
      fit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
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

  Future<_ViewerExitAction> _showExitDialog() async {
    return await showDialog<_ViewerExitAction>(
          context: context,
          builder: (_) => AlertDialog(
            title: Row(
              children: [
                const Expanded(
                  child: Text('Leave stream?'),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () =>
                      Navigator.of(context).pop(_ViewerExitAction.cancel),
                ),
              ],
            ),
            content: const Text(
              'You will leave the live stream.',
            ),
            actions: [
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pop(_ViewerExitAction.leave),
                child: const Text('Leave'),
              ),
            ],
          ),
        ) ??
        _ViewerExitAction.cancel;
  }

  Future<void> _performExit(_ViewerExitAction action) async {
    final streamId = widget.stream.id ?? 0;

    // Disconnect from room
    await _cubit.state.room?.disconnect();

    if (action == _ViewerExitAction.leave) {
      final ok = await _cubit.leaveStream(streamId: streamId);
      if (ok && mounted) {
        Navigator.of(context).pop();
      }
    }
  }
}
