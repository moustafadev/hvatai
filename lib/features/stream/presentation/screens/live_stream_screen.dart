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

  // ---------- Broadcaster (RTMP streaming) ----------
  CameraController? _cameraController;
  bool _isCameraReady = false;
  bool _enableAudio = true;
  bool _switchCamera = false; // false = front camera, true = back camera
  List<CameraDescription> _cameras = [];

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
      _initRTMPBroadcaster();
    } else {
      _logMuxViewerDebug();
      _initMediaKitViewer(); // media_kit viewer
    }
  }

  // ---------------- Lifecycle / app visibility ----------------
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (widget.userRole != UserRole.broadcaster || _cameraController == null)
      return;

    if (state == AppLifecycleState.paused) {
      if (_cameraController?.value.isStreamingVideoRtmp == true) {
        await _pauseVideoStreaming();
      }
    } else if (state == AppLifecycleState.resumed) {
      if (_cameraController?.value.isStreamingPaused == true) {
        await _resumeVideoStreaming();
      }
    }
  }

  @override
  void dispose() {
    // HLS viewer resources (media_kit)
    _mkPlayer?.dispose();

    // Role-specific cleanup
    if (widget.userRole == UserRole.broadcaster) {
      _cameraController?.dispose();
      WakelockPlus.disable();
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

  // ---------------- Broadcaster (RTMP streaming) ----------------
  Future<void> _initRTMPBroadcaster() async {
    final statuses = await [Permission.camera, Permission.microphone].request();
    if (statuses[Permission.camera] != PermissionStatus.granted ||
        statuses[Permission.microphone] != PermissionStatus.granted) {
      debugPrint('❌ Camera/Microphone permissions not granted');
      return;
    }

    try {
      // Get available cameras
      _cameras = await availableCameras();
      if (_cameras.isEmpty) {
        debugPrint('❌ No cameras available');
        return;
      }

      // Initialize camera with front camera (index 1 if available, otherwise 0)
      final cameraDescription = _cameras.length > 1 ? _cameras[1] : _cameras[0];
      await _initializeCamera(cameraDescription);
      await _cubit.startStreamAndGetToken(streamId: widget.stream.id ?? 0);

      // Wait for camera to be ready
      await Future.delayed(const Duration(milliseconds: 1500));

      // Start streaming automatically
      if (_isCameraReady && _cameraController != null) {
        await _startVideoStreaming();
      }
    } catch (e, st) {
      debugPrint('❌ Camera initialization error: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _initializeCamera(CameraDescription cameraDescription) async {
    if (_cameraController != null) {
      await _stopVideoStreaming();
      await _cameraController?.dispose();
    }

    _cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium, // Using same as working splash screen
      enableAudio: _enableAudio,
      androidUseOpenGL: true,
    );

    // Add listener for camera events - exactly like splash screen
    _cameraController!.addListener(() async {
      if (mounted) setState(() {});

      if (_cameraController != null) {
        if (_cameraController!.value.hasError) {
          debugPrint(
              '❌ Camera error: ${_cameraController!.value.errorDescription}');
          await _stopVideoStreaming();
        } else {
          try {
            final Map<dynamic, dynamic> event =
                _cameraController!.value.event as Map<dynamic, dynamic>;
            debugPrint('Event $event');
            final String eventType = event['eventType'] as String;
            if (eventType == 'rtmp_retry') {
              debugPrint('BadName received, endpoint in use.');
              await _stopVideoStreaming();
            }
          } catch (e) {
            debugPrint('Event error: $e');
          }
        }
      }
    });

    try {
      await _cameraController!.initialize();
    } on CameraException catch (e) {
      debugPrint('❌ Camera exception: ${e.code} - ${e.description}');
      return;
    }

    if (mounted) {
      final number = int.tryParse(cameraDescription.name!);
      _switchCamera = number?.isEven ?? false;
      setState(() => _isCameraReady = true);
    }
    debugPrint('✅ Camera initialized successfully');
  }

  Future<void> _startVideoStreaming() async {
    if (_cameraController == null || !_isCameraReady) {
      debugPrint('⚠️ Camera not ready');
      return;
    }

    if (_cameraController!.value.isStreamingVideoRtmp == true) {
      debugPrint('⚠️ Already streaming');
      return;
    }

    // Get RTMP URL from stream data
    var rtmpUrl = widget.stream.muxStreamKey;
    if (rtmpUrl == null || rtmpUrl.isEmpty) {
      debugPrint('❌ RTMP URL is missing');
      return;
    }

    // Ensure URL is in proper RTMP format
    // Expected format: rtmp://server:port/app/stream-key
    if (!rtmpUrl.startsWith('rtmp://')) {
      // If it's just a stream key, construct the full Mux URL
      debugPrint('⚠️ Stream key format detected, constructing full RTMP URL');
      rtmpUrl =
          "rtmp://global-live.mux.com:5222/app/8c8a4cbb-d6cf-d868-fbbd-51ec0b43d454";
    }

    debugPrint('🎥 Starting RTMP stream to: $rtmpUrl');

    try {
      await _cameraController!.startVideoStreaming(rtmpUrl);
      WakelockPlus.enable();
      debugPrint('✅ Successfully started streaming');
    } on CameraException catch (e) {
      debugPrint('❌ Streaming error: ${e.code} - ${e.description}');
    } catch (e) {
      debugPrint('❌ Unexpected streaming error: $e');
    }
  }

  Future<void> _stopVideoStreaming() async {
    if (_cameraController == null || !_isCameraReady) {
      return;
    }

    if (_cameraController!.value.isStreamingVideoRtmp != true) {
      return;
    }

    try {
      await _cameraController!.stopVideoStreaming();
      WakelockPlus.disable();
      debugPrint('✅ Stopped streaming');
    } on CameraException catch (e) {
      debugPrint('❌ Stop streaming error: ${e.code} - ${e.description}');
    }
  }

  Future<void> _pauseVideoStreaming() async {
    try {
      if (_cameraController?.value.isStreamingVideoRtmp == true &&
          Platform.isIOS) {
        await _cameraController!.pauseVideoStreaming();
        debugPrint('✅ Paused streaming');
      }
    } on CameraException catch (e) {
      debugPrint('❌ Pause streaming error: ${e.code} - ${e.description}');
    }
  }

  Future<void> _resumeVideoStreaming() async {
    try {
      if (_cameraController?.value.isStreamingPaused == true &&
          Platform.isIOS) {
        await _cameraController!.resumeVideoStreaming();
        debugPrint('✅ Resumed streaming');
      }
    } on CameraException catch (e) {
      debugPrint('❌ Resume streaming error: ${e.code} - ${e.description}');
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
        media.Media(
          url.toString(),
          httpHeaders: {
            'User-Agent': 'Fin5App/MediaKit',
            'Accept': 'application/x-mpegURL,application/vnd.apple.mpegurl,*/*',
          },
        ),
        play: true,
      );

      // Improve live experience: low-latency/live hints.
      await _mkPlayer!.setPlaylistMode(media.PlaylistMode.none);

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
                        InkWell(
                            onTap: () async {
                              final action = await _showExitDialog();
                              await _performExit(action);
                            },
                            child: CompanyInfo(
                                streamUserModel: widget.stream.user)),
                        ViewerCountWidget(count: state.viewerCount),
                      ],
                    ),
                  ),
                  // Broadcaster controls
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

      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Video(
          controller: _mkVideoController!,
          fit: BoxFit.cover, // Fill entire screen
          alignment: Alignment.center,
          controls: null,
          filterQuality: FilterQuality.high, // High quality for better clarity
          fill:
              Colors.black, // Black background if video doesn't fill completely
        ),
      );
    }

    // --- BROADCASTER (RTMP) ---
    if (!_isCameraReady || _cameraController == null) {
      return _waitingBox('Starting camera...');
    }

    if (_cameraController!.value.hasError) {
      return _waitingBox('Camera error');
    }

    // Full screen camera preview without black bars
    return ClipRect(
      child: OverflowBox(
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width *
                _cameraController!.value.aspectRatio,
            child: CameraPreview(_cameraController!),
          ),
        ),
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
            Text(text,
                style: const TextStyle(color: Colors.white54, fontSize: 18)),
          ],
        ),
      ),
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
      await _stopVideoStreaming();
      await _cameraController?.dispose();
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
