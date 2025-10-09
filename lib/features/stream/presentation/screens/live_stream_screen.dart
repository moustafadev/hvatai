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

class _LiveStreamScreenState extends State<LiveStreamScreen>
    with WidgetsBindingObserver {
  final _pusherManager = PusherManager();
  PusherClient? _pusher;
  Channel? _streamChannel;

  late final LiveStreamCubit _cubit = locator<LiveStreamCubit>();

  // ---------- Viewer (HLS playback) with media_kit ----------
  // NOTE: Replacing video_player with media_kit for viewer.
  media.Player? _mkPlayer;
  VideoController? _mkVideoController;
  bool _mkReady = false;

  // ---------- Broadcaster (LiveKit publish) ----------
  Room? _room;
  EventsListener<RoomEvent>? _roomListener;
  bool _isLiveKitReady = false;

  // ---------- Mux Playback URL for Viewers ----------
  String get _muxPlaybackUrl {
    final id = widget.stream.muxPlaybackId;
    if (id == null) return '';
    return 'https://stream.mux.com/$id.m3u8';
  }

  // ---------- Misc ----------
  String _formatTime(int s) {
    final m = s ~/ 60, r = s % 60;
    return '${m.toString().padLeft(2, '0')}:${r.toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // 1) Counters/comments
    _cubit
      ..initializeLiveKit(
        role: widget.userRole,
        viewerCount: widget.stream.viewerCount ?? 0,
        initialSeconds: 0,
        channelName: widget.stream.channelName ?? '',
        streamId: widget.stream.id ?? 0,
      )
      ..loadInitialComments(streamId: widget.stream.id ?? 0);

    // 2) Pusher
    _initStreamSocket();

    // 3) Role-specific logic
    if (widget.userRole == UserRole.broadcaster) {
      _initLiveKitBroadcaster();
    } else {
      _logMuxViewerDebug();
      _initMediaKitViewer(); // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< media_kit viewer
    }
  }

  // ---------------- Lifecycle / app visibility ----------------
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (widget.userRole != UserRole.broadcaster || _room == null) return;

    if (state == AppLifecycleState.paused) {
      await _room?.localParticipant?.setCameraEnabled(false);
      await _room?.localParticipant?.setMicrophoneEnabled(false);
    } else if (state == AppLifecycleState.resumed) {
      await _room?.localParticipant?.setCameraEnabled(true);
      await _room?.localParticipant?.setMicrophoneEnabled(true);
    }
  }

  @override
  void dispose() {
    // HLS viewer resources (media_kit)
    _mkPlayer?.dispose();

    // Role-specific cleanup
    if (widget.userRole == UserRole.broadcaster) {
      _roomListener?.dispose();
      _room?.disconnect();
    }

    WidgetsBinding.instance.removeObserver(this);
    _cubit.close();
    super.dispose();
  }

  // ---------------- Pusher (comments/bids/viewers) ----------------
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

    _streamChannel!.bind('pusher:subscription_succeeded', (_) {
      debugPrint('✅ Subscribed: $channelName');
    });
    _streamChannel!.bind('pusher:subscription_error', (e) {
      debugPrint('❌ Subscription error on $channelName: $e');
    });

    _streamChannel!.bind(
        'comment.added', (raw) => _handleComment(raw, source: channelName));
    _streamChannel!.bind(
        'CommentAdded', (raw) => _handleComment(raw, source: channelName));
    _streamChannel!.bind(
        "viewer.joined",
        (raw) => _cubit
            .updateViewerCount(ViewerJoinedEvent.fromJson(raw).viewerCount));
    _streamChannel!.bind(
        "viewer.left",
        (raw) => _cubit
            .updateViewerCount(ViewerJoinedEvent.fromJson(raw).viewerCount));
    _streamChannel!
        .bind('bid.placed', (raw) => _handleBid(raw, source: channelName));
    _streamChannel!
        .bind('BidPlaced', (raw) => _handleBid(raw, source: channelName));
  }

  void _handleComment(dynamic raw, {required String source}) {
    try {
      final model = StreamCommentModel.fromJson(raw['comment']);
      if (!mounted) return;
      _cubit.addIncomingComment(model);
    } catch (e, st) {
      debugPrint('❌ [$source] comment parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  void _handleBid(dynamic raw, {required String source}) {
    try {
      // TODO: forward to product/bid state if needed.
    } catch (e, st) {
      debugPrint('❌ [$source] bid parse error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  // ---------------- Broadcaster (LiveKit publish) ----------------
  Future<void> _initLiveKitBroadcaster() async {
    final statuses = await [Permission.camera, Permission.microphone].request();
    if (statuses[Permission.camera] != PermissionStatus.granted ||
        statuses[Permission.microphone] != PermissionStatus.granted) {
      debugPrint('❌ Camera/Microphone permissions not granted');
      return;
    }

    final serverUrl = widget.stream.livekitServerUrl;
    final roomName = widget.stream.livekitRoomName;
    if (serverUrl == null || roomName == null) {
      debugPrint('❌ LiveKit server URL or room name is missing.');
      return;
    }

    final token =
        await _cubit.startStreamAndGetToken(streamId: widget.stream.id ?? 0);
    if (token == null || token.isEmpty) {
      debugPrint('❌ Failed to get a valid LiveKit token.');
      return;
    }

    _room = Room();
    _roomListener = _room!.createListener();
    const portraitEncoding = VideoEncoding(
      maxBitrate: 1800000,
      maxFramerate: 30,
    );
    // Portrait 720p (9:16)
const portraitParams = VideoParameters(
  dimensions: VideoDimensions( 720, 1280), // 9:16
  encoding: VideoEncoding(
    maxBitrate: 1800000,
    maxFramerate: 30,
  ),
);

    try {
      await _room!.connect(
        serverUrl,
        token,
        roomOptions: const RoomOptions(
          adaptiveStream: true,
          dynacast: true,
          defaultCameraCaptureOptions: CameraCaptureOptions(
            cameraPosition: CameraPosition.front,
            params: portraitParams
          ),
          defaultVideoPublishOptions: VideoPublishOptions(
            videoCodec: 'h264',
            simulcast:
                false, // start with false to avoid unexpected layer aspect ratios
            videoEncoding: portraitEncoding,
          ),
        ),
      );

      await _room!.localParticipant?.setCameraEnabled(true);
      await _room!.localParticipant?.setMicrophoneEnabled(true);

      if (mounted) setState(() => _isLiveKitReady = true);
      debugPrint('✅ LiveKit connected and publishing.');
    } catch (e, st) {
      debugPrint('❌ LiveKit connection error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  // ---------------- Viewer (HLS playback with media_kit) ----------------
  Future<void> _initMediaKitViewer() async {
    final base = _muxPlaybackUrl;
    if (base.isEmpty) {
      debugPrint('⚠️ No Mux playback id/url to play.');
      return;
    }

    final url = Uri.parse(
      base.contains('?')
          ? '$base&low_latency=false&redundant_streams=true'
          : '$base?low_latency=false&redundant_streams=true',
    );

    // Optional: keep your readiness probe so users don’t see a blank player.
    final ok = await _waitForMuxPlaylistReady(url);
    if (!ok) {
      debugPrint('❌ Playlist never became ready; giving up for now.');
      if (mounted) setState(() => _mkReady = false);
      return;
    }

    try {
      _mkPlayer = media.Player();
      _mkVideoController = VideoController(_mkPlayer!);

      // Open HLS and start playing.
      await _mkPlayer!.open(
        media.Media(url.toString()),
        play: true,
      );

      // Improve live experience: low-latency/live hints.
      // (These can be tuned per your needs / CDN)
      await _mkPlayer!.setPlaylistMode(media.PlaylistMode.none);
      // Seek to live edge if available.
      // (media_kit automatically tries to keep up; but you could periodically call:
      // await _mkPlayer!.seek(Duration(days: 3650)); // "jump to live" trick if needed)

      if (mounted) setState(() => _mkReady = true);
    } catch (e, st) {
      debugPrint('❌ media_kit init error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  Future<bool> _waitForMuxPlaylistReady(Uri url,
      {List<int> backoffSecs = const [1, 2, 3, 5, 8, 13, 21, 34]}) async {
    for (final s in backoffSecs) {
      if (!mounted) return false;
      try {
        final res = await http.get(url, headers: const {
          'Accept': 'application/x-mpegURL,application/vnd.apple.mpegurl,*/*',
          'Cache-Control': 'no-cache',
        });
        debugPrint('GET $url -> ${res.statusCode}');
        if (res.statusCode == 200 &&
            res.body.trimLeft().startsWith('#EXTM3U')) {
          debugPrint('✅ HLS playlist is ready');
          return true;
        }
        if (res.statusCode >= 400 && res.body.length < 800) {
          debugPrint('Body: ${res.body}');
        }
      } catch (e) {
        debugPrint('GET probe error: $e');
      }
      debugPrint('⏳ Playlist not ready, retry in ${s}s...');
      await Future.delayed(Duration(seconds: s));
    }
    return false;
  }

  void _logMuxViewerDebug() async {
    final id = widget.stream.muxPlaybackId;
    final url = _muxPlaybackUrl;
    final looksSigned =
        Uri.tryParse(url)?.queryParameters.containsKey('token') == true;
    debugPrint('=== MUX VIEWER DEBUG ===');
    debugPrint('playbackId: $id');
    debugPrint('hls url: $url');
    debugPrint('signed playback? ${looksSigned ? 'yes' : 'no'}');
    try {
      final res = await http.head(Uri.parse(url), headers: {
        'User-Agent': 'Fin5App/ExoPlayer',
        'Accept': 'application/x-mpegURL,application/vnd.apple.mpegurl,*/*',
      });
      debugPrint('HEAD status: ${res.statusCode}');
      debugPrint('HEAD headers: ${res.headers}');
    } catch (e, st) {
      debugPrint('HEAD error: $e');
      debugPrintStack(stackTrace: st);
    }
    debugPrint('========================');
  }

  // ---------------- UI ----------------
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<LiveStreamCubit, LiveStreamState>(
        builder: (context, state) {
          if (state.isInitializing || state.isLoadingComments) {
            return const FullScreenLoader();
          }

          final firstProduct = (widget.stream.streamProducts != null &&
                  widget.stream.streamProducts!.isNotEmpty)
              ? widget.stream.streamProducts!.first
              : null;

          return WillPopScope(
            onWillPop: () async {
              final action = await _showExitDialog();
              if (action == _ExitAction.cancel) return false;
              await _performExit(action);
              return false;
            },
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  Positioned.fill(child: _buildVideoView()),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 20,
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CompanyInfo(streamUserModel: widget.stream.user),
                        ViewerCountWidget(count: state.viewerCount),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: MediaQuery.of(context).size.height * 0.55,
                    child: const RightSideIcons(),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    child: LiveBottomPanel(
                      comments: state.comments,
                      onCommentChanged: (t) =>
                          context.read<LiveStreamCubit>().updateCommentText(t),
                      onSend: () => context
                          .read<LiveStreamCubit>()
                          .sendCommentToServer(streamId: widget.stream.id ?? 0),
                      timerText: _formatTime(state.streamSeconds),
                      productTitle: firstProduct?.product?.name ?? "No product",
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
            ),
          );
        },
      ),
    );
  }

  Widget _buildVideoView() {
    // --- VIEWER (media_kit) ---
    if (widget.userRole == UserRole.viewer) {
      if (!_mkReady || _mkPlayer == null || _mkVideoController == null) {
        return _waitingBox('Connecting to stream...');
      }
// Add a field:

// In the viewer branch:
      return SizedBox.expand(
        child: Video(
          controller: _mkVideoController!,
          aspectRatio: 9 / 16, // optional if your streams are always portrait
          alignment: Alignment.center,
          controls: null,
          filterQuality: FilterQuality.high, // slightly smoother upscale
        ),
      );
    }

    // --- BROADCASTER (LiveKit) ---
    if (!_isLiveKitReady || _room?.localParticipant == null) {
      return _waitingBox('Starting camera...');
    }

    final localParticipant = _room!.localParticipant!;
    final videoPub = localParticipant.trackPublications.values
        .where((pub) => pub.kind == TrackType.VIDEO)
        .firstOrNull;

    if (videoPub == null || videoPub.track == null || videoPub.muted) {
      return _waitingBox('Camera is off');
    }

    return VideoTrackRenderer(
      videoPub.track as VideoTrack,
      fit: rtc.RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
    
      mirrorMode:
          VideoViewMirrorMode.off, // keep it unmirrored to match viewer
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
            Text(text,
                style: const TextStyle(color: Colors.white54, fontSize: 18)),
          ],
        ),
      ),
    );
  }

  Widget _errorBox(String msg) {
    return Center(
      child: Text(msg,
          style: const TextStyle(color: Colors.redAccent),
          textAlign: TextAlign.center),
    );
  }

  Future<_ExitAction> _showExitDialog() async {
    final isBroadcaster = widget.userRole == UserRole.broadcaster;
    return await showDialog<_ExitAction>(
          context: context,
          builder: (_) => AlertDialog(
            title: Row(
              children: [
                Expanded(
                    child: Text(isBroadcaster
                        ? 'Leave or end stream?'
                        : 'Leave stream?')),
                IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () =>
                        Navigator.of(context).pop(_ExitAction.cancel)),
              ],
            ),
            content: Text(isBroadcaster
                ? 'You can end the stream for everyone or just leave.'
                : 'You will leave the live stream.'),
            actions: [
              if (isBroadcaster)
                TextButton(
                  onPressed: () => Navigator.of(context).pop(_ExitAction.leave),
                  child: const Text('Leave'),
                ),
              TextButton(
                onPressed: () => Navigator.of(context)
                    .pop(isBroadcaster ? _ExitAction.end : _ExitAction.leave),
                child: Text(isBroadcaster ? 'End Stream' : 'Leave'),
              ),
            ],
          ),
        ) ??
        _ExitAction.cancel;
  }

  Future<void> _performExit(_ExitAction action) async {
    final streamId = widget.stream.id ?? 0;
    final isBroadcaster = widget.userRole == UserRole.broadcaster;

    if (isBroadcaster) {
      await _room?.disconnect();
    }

    bool ok = false;
    if (action == _ExitAction.leave) {
      ok = await _cubit.leaveStream(streamId: streamId);
    } else if (action == _ExitAction.end && isBroadcaster) {
      ok = await _cubit.endStream(streamId: streamId);
    }

    if (ok && mounted) {
      Navigator.of(context).pop();
    }
  }
}

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
