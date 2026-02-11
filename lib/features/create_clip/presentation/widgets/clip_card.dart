part of '../clips.dart';

class ClipCard extends StatefulWidget {
  final ClipModel clip;
  final bool showCompanyInfo;
  final bool showSettingsIcon;
  final Uint8List? thumbnailBytes;
  final VoidCallback? onSettingsIconTap;
  final VoidCallback? onSaveIconTap;

  const ClipCard({
    super.key,
    required this.clip,
    this.showCompanyInfo = true,
    this.showSettingsIcon = true,
    this.thumbnailBytes,
    this.onSettingsIconTap,
    this.onSaveIconTap,
  });

  @override
  State<ClipCard> createState() => _ClipCardState();
}

class _ClipCardState extends State<ClipCard> {
  Uint8List? _thumbnailBytes;
  bool _isLoadingThumbnail = true;
  bool _useNetworkImage = false;

  @override
  void initState() {
    super.initState();
    // Use cached thumbnail bytes if provided
    if (widget.thumbnailBytes != null) {
      _thumbnailBytes = widget.thumbnailBytes;
      _isLoadingThumbnail = false;
      _useNetworkImage = false;
    } else if (widget.clip.videoUrl.isNotEmpty) {
      // Generate thumbnail from video
      _loadThumbnail();
    } else {
      _isLoadingThumbnail = false;
    }
  }

  Future<void> _loadThumbnail() async {
    if (widget.clip.videoUrl.isEmpty) {
      setState(() {
        _isLoadingThumbnail = false;
      });
      return;
    }

    try {
      final thumbnail = await VideoThumbnail.thumbnailData(
        video: widget.clip.videoUrl,
        imageFormat: ImageFormat.JPEG,
        timeMs: 1000, // Get thumbnail at 1 second
        quality: 75,
      );

      if (mounted) {
        setState(() {
          _thumbnailBytes = thumbnail;
          _isLoadingThumbnail = false;
        });
      }
    } catch (e) {
      debugPrint('Error loading thumbnail: $e');
      if (mounted) {
        setState(() {
          _isLoadingThumbnail = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppRoutes.previewVideo,
          extra: {
            'videoPath': widget.clip.videoUrl,
            'clipName': widget.clip.name,
          },
        );
      },
      behavior: HitTestBehavior.opaque,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Video thumbnail container
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: _isLoadingThumbnail && _thumbnailBytes == null
                      ? Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : _useNetworkImage && widget.clip.videoUrl.isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: widget.clip.videoUrl,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.grey[300],
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                              errorWidget: (context, url, error) {
                                // Schedule fallback after build phase
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  if (mounted &&
                                      widget.clip.videoUrl.isNotEmpty &&
                                      _useNetworkImage &&
                                      _thumbnailBytes == null) {
                                    setState(() {
                                      _useNetworkImage = false;
                                      _isLoadingThumbnail = true;
                                    });
                                    _loadThumbnail();
                                  }
                                });
                                return Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.video_library),
                                );
                              },
                            )
                          : _thumbnailBytes != null
                              ? Image.memory(
                                  _thumbnailBytes!,
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                )
                              : Container(
                                  color: Colors.grey[300],
                                  child: const Icon(Icons.video_library),
                                ),
                ),
                // Settings/Save icon overlay (top right)
                if (widget.showSettingsIcon)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        widget.onSettingsIconTap?.call();
                      },
                      behavior: HitTestBehavior.opaque,
                      child: SvgPicture.asset(
                        Assets.assetsIconsSettingsClip,
                      ),
                    ),
                  ),
                // Save icon overlay (for company screen)
                if (!widget.showSettingsIcon)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () {
                        // Handle save tap
                        widget.onSaveIconTap?.call();
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        padding: EdgeInsets.all(6.r),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          Assets.assetsIconsSave,
                          width: 16.w,
                          height: 16.h,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                // Bottom section: Company info + Clip name
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Company image and name
                        if (widget.showCompanyInfo && widget.clip.user != null)
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.r),
                                child: CustomImage(
                                  imageSource: widget.clip.user?.image ?? '',
                                  width: 40.w,
                                  height: 40.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              8.pw,
                              Flexible(
                                child: CustomText(
                                  text:
                                      widget.clip.user?.name ?? 'company_name',
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w800,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        // SizedBox 4 above clip name
                        SizedBox(height: 4.h),
                        // Clip name container
                        Container(
                          padding: EdgeInsets.all(4.w),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFF000000)
                                .withOpacity(0.65), // #000000A6
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: CustomText(
                            text: widget.clip.name,
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
