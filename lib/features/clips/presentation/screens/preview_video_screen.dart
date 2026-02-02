part of '../clips.dart';

class PreviewVideoScreen extends StatefulWidget {
  final String videoPath;

  const PreviewVideoScreen({
    super.key,
    required this.videoPath,
  });

  @override
  State<PreviewVideoScreen> createState() => _PreviewVideoScreenState();
}

class _PreviewVideoScreenState extends State<PreviewVideoScreen> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.file(File(widget.videoPath));
    await _controller.initialize();
    _controller.addListener(() {
      if (mounted) {
        setState(() {
          _isPlaying = _controller.value.isPlaying;
        });
      }
    });
    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        title: CustomText(
          text: 'Preview Video',
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        actions: [
          TextButton(
            onPressed: _uploadToBackend,
            child: CustomText(
              text: 'Upload',
              color: AppColors.primaryColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      body: _isInitialized
          ? Column(
              children: [
                Expanded(
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),
                // Video info
                Container(
                  padding: EdgeInsets.all(16.w),
                  color: Colors.grey[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Video Path:',
                        color: Colors.white70,
                        fontSize: 12.sp,
                      ),
                      4.ph,
                      CustomText(
                        text: widget.videoPath,
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                      8.ph,
                      CustomText(
                        text:
                            'ℹ️ This video is temporarily stored on your device.',
                        color: Colors.yellow[300],
                        fontSize: 12.sp,
                      ),
                      4.ph,
                      CustomText(
                        text:
                            'Upload it to your backend and then delete it from the device.',
                        color: Colors.yellow[300],
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                ),
                // Play/Pause button
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          _isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 64.sp,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          if (_isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
    );
  }

  Future<void> _uploadToBackend() async {
    // TODO: Implement backend upload
    // After successful upload, you can delete the file:
    // await File(widget.videoPath).delete();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
            'Video ready for upload!\nPath: ${widget.videoPath}\n\nUpload this file to your backend API.'),
        duration: const Duration(seconds: 5),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
