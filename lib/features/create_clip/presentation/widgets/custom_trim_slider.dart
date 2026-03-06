part of '../clips.dart';

class CustomTrimSlider extends StatefulWidget {
  final Duration videoDuration;
  final List<String?>? previewImageUrls; // New: URLs from server
  final bool isLoading;
  final double startValue; // in milliseconds
  final double endValue; // in milliseconds
  final ValueChanged<double> onStartChanged;
  final ValueChanged<double> onEndChanged;
  final int thumbnailCount;
  final double thumbnailHeight;
  final bool showTimeDisplay;
  final VoidCallback? onThumbnailsLoaded;

  const CustomTrimSlider({
    super.key,
    required this.videoDuration,
    required this.startValue,
    this.previewImageUrls,
    required this.isLoading,
    required this.endValue,
    required this.onStartChanged,
    required this.onEndChanged,
    this.thumbnailCount = 20, // Fixed number of thumbnails
    this.thumbnailHeight = 60.0,
    this.showTimeDisplay = true,
    this.onThumbnailsLoaded,
  });

  @override
  State<CustomTrimSlider> createState() => _CustomTrimSliderState();
}

class _CustomTrimSliderState extends State<CustomTrimSlider> {
  double _startPosition = 0.0;
  double _endPosition = 0.0;
  bool _isDraggingStart = false;
  bool _isDraggingEnd = false;
  double? _availableWidth;

  @override
  void initState() {
    super.initState();
    _updatePositions();
  }

  @override
  void didUpdateWidget(CustomTrimSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.startValue != widget.startValue ||
        oldWidget.endValue != widget.endValue) {
      _updatePositions();
    }
  }

  void _updatePositions() {
    if (_availableWidth == null) return;

    final totalDuration = widget.videoDuration.inMilliseconds;
    
    setState(() {
      // Positions are relative to the thumbnail area (inside the light blue container)
      _startPosition = (widget.startValue / totalDuration) * _availableWidth!;
      _endPosition = (widget.endValue / totalDuration) * _availableWidth!;
      print("==================");
      print(widget.endValue);
      print(totalDuration);
      print(_startPosition);
      print(_endPosition);
      print("==================");
    });
  }

  double _getValueFromPosition(double position) {
    if (_availableWidth == null) return 0.0;
    final ratio = position.clamp(0.0, _availableWidth!) / _availableWidth!;
    return ratio * widget.videoDuration.inMilliseconds;
  }

  void _onStartDragUpdate(DragUpdateDetails details) {
    if (!_isDraggingStart || _availableWidth == null) return;

    final newPosition = _startPosition + details.delta.dx;
    final clampedPosition = newPosition.clamp(0.0, _endPosition);

    setState(() {
      _startPosition = clampedPosition;
    });

    widget.onStartChanged(_getValueFromPosition(clampedPosition));
  }

  void _onEndDragUpdate(DragUpdateDetails details) {
    if (!_isDraggingEnd || _availableWidth == null) return;

    final newPosition = _endPosition + details.delta.dx;
    final clampedPosition = newPosition.clamp(_startPosition, _availableWidth!);

    setState(() {
      _endPosition = clampedPosition;
    });

    widget.onEndChanged(_getValueFromPosition(clampedPosition));
  }

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = 0.w;
    final arrowButtonSize = 21.0;

    return LayoutBuilder(
      builder: (context, constraints) {
        // Use the actual available width from constraints instead of screen width
        final availableWidth = constraints.maxWidth;
        final timelineWidth =
            availableWidth - (horizontalPadding * 2) - (arrowButtonSize * 2);

        // Update available width when constraints change
        if (_availableWidth == null || _availableWidth != timelineWidth) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              setState(() {
                _availableWidth = timelineWidth;
              });
              _updatePositions();
            }
          });
        }

        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: widget.showTimeDisplay ? 16.h : 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.showTimeDisplay)
                _TimeDisplayWidget(
                  startValue: widget.startValue,
                  endValue: widget.endValue,
                ),
              _TimelineWrapperWidget(
                arrowButtonSize: arrowButtonSize,
                thumbnailHeight: widget.thumbnailHeight,
                isLoading: widget.isLoading,
                thumbnails: widget.previewImageUrls ?? [],
                thumbnailCount: widget.thumbnailCount,
                startPosition: _startPosition,
                endPosition: _endPosition,
                availableWidth: _availableWidth,
                onStartDragStart: () => _isDraggingStart = true,
                onStartDragUpdate: _onStartDragUpdate,
                onStartDragEnd: () => _isDraggingStart = false,
                onEndDragStart: () => _isDraggingEnd = true,
                onEndDragUpdate: _onEndDragUpdate,
                onEndDragEnd: () => _isDraggingEnd = false,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// Time display widget showing start and end times
class _TimeDisplayWidget extends StatelessWidget {
  final double startValue;
  final double endValue;

  const _TimeDisplayWidget({
    required this.startValue,
    required this.endValue,
  });

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: _formatDuration(Duration(milliseconds: startValue.toInt())),
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          CustomText(
            text: _formatDuration(Duration(milliseconds: endValue.toInt())),
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

// Timeline wrapper widget containing the timeline container and arrow sliders
class _TimelineWrapperWidget extends StatelessWidget {
  final double arrowButtonSize;
  final double thumbnailHeight;
  final bool isLoading;
  final List<String?> thumbnails;
  final int thumbnailCount;
  final double startPosition;
  final double endPosition;
  final double? availableWidth;
  final VoidCallback onStartDragStart;
  final ValueChanged<DragUpdateDetails> onStartDragUpdate;
  final VoidCallback onStartDragEnd;
  final VoidCallback onEndDragStart;
  final ValueChanged<DragUpdateDetails> onEndDragUpdate;
  final VoidCallback onEndDragEnd;

  const _TimelineWrapperWidget({
    required this.arrowButtonSize,
    required this.thumbnailHeight,
    required this.isLoading,
    required this.thumbnails,
    required this.thumbnailCount,
    required this.startPosition,
    required this.endPosition,
    required this.availableWidth,
    required this.onStartDragStart,
    required this.onStartDragUpdate,
    required this.onStartDragEnd,
    required this.onEndDragStart,
    required this.onEndDragUpdate,
    required this.onEndDragEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: arrowButtonSize),
            Expanded(
              child: _TimelineContainerWidget(
                thumbnailHeight: thumbnailHeight,
                isLoading: isLoading,
                thumbnails: thumbnails,
                thumbnailCount: thumbnailCount,
                startPosition: startPosition,
                endPosition: endPosition,
                availableWidth: availableWidth,
              ),
            ),
            SizedBox(width: arrowButtonSize),
          ],
        ),
        _ArrowSliderWidget(
          position: startPosition,
          arrowButtonSize: arrowButtonSize,
          thumbnailHeight: thumbnailHeight,
          isLeft: true,
          onDragStart: onStartDragStart,
          onDragUpdate: onStartDragUpdate,
          onDragEnd: onStartDragEnd,
        ),
        _ArrowSliderWidget(
          position: arrowButtonSize + endPosition,
          arrowButtonSize: arrowButtonSize,
          thumbnailHeight: thumbnailHeight,
          isLeft: false,
          onDragStart: onEndDragStart,
          onDragUpdate: onEndDragUpdate,
          onDragEnd: onEndDragEnd,
        ),
      ],
    );
  }
}

// Timeline container widget with border and thumbnails
class _TimelineContainerWidget extends StatelessWidget {
  final double thumbnailHeight;
  final bool isLoading;
  final List<String?> thumbnails;
  final int thumbnailCount;
  final double startPosition;
  final double endPosition;
  final double? availableWidth;

  const _TimelineContainerWidget({
    required this.thumbnailHeight,
    required this.isLoading,
    required this.thumbnails,
    required this.thumbnailCount,
    required this.startPosition,
    required this.endPosition,
    required this.availableWidth,
  });

  @override
  Widget build(BuildContext context) {
    const borderWidth = 5.0;

    return Container(
      height: thumbnailHeight,
      decoration: BoxDecoration(
        color: const Color(0xFFB3E5FC), // Light blue background
        border: Border(
          top: BorderSide(
            color: AppColors.primaryColor,
            width: borderWidth,
          ),
          bottom: BorderSide(
            color: AppColors.primaryColor,
            width: borderWidth,
          ),
          left: BorderSide(
            color: AppColors.primaryColor,
            width: borderWidth,
          ),
          right: BorderSide(
            color: AppColors.primaryColor,
            width: borderWidth,
          ),
        ),
        borderRadius: BorderRadius.zero,
      ),
      child: Stack(
        children: [
          if (isLoading)
            Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            )
          else
            _ThumbnailsRowWidget(
              thumbnails: thumbnails,
              thumbnailCount: thumbnailCount,
              thumbnailHeight: thumbnailHeight,
              startPosition: startPosition,
              endPosition: endPosition,
              availableWidth: availableWidth,
            ),
        ],
      ),
    );
  }
}

// Thumbnails row widget with clipping
class _ThumbnailsRowWidget extends StatelessWidget {
  final List<String?> thumbnails;
  final int thumbnailCount;
  final double thumbnailHeight;
  final double startPosition;
  final double endPosition;
  final double? availableWidth;

  const _ThumbnailsRowWidget({
    required this.thumbnails,
    required this.thumbnailCount,
    required this.thumbnailHeight,
    required this.startPosition,
    required this.endPosition,
    required this.availableWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: thumbnailHeight,
      child: Row(
        children: List.generate(thumbnailCount, (index) {
          return _ThumbnailItemWidget(
            thumbnail: thumbnails[index],
            thumbnailHeight: thumbnailHeight,
          );
        }),
      ),
    );
  }
}

// Individual thumbnail item widget
class _ThumbnailItemWidget extends StatelessWidget {
  final String? thumbnail;
  final double thumbnailHeight;

  const _ThumbnailItemWidget({
    required this.thumbnail,
    required this.thumbnailHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: thumbnailHeight,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[700]!.withValues(alpha: 0.3),
            width: 0.5,
          ),
        ),
        child: thumbnail != null
            ? CustomImage(
                imageSource: thumbnail ?? "",
                fit: BoxFit.cover,
              )
            : Container(
                color: Colors.grey[800],
                child: Icon(
                  Icons.image,
                  color: Colors.grey[600],
                  size: 20,
                ),
              ),
      ),
    );
  }
}

// Arrow slider widget (reusable for left and right)
class _ArrowSliderWidget extends StatelessWidget {
  final double position;
  final double arrowButtonSize;
  final double thumbnailHeight;
  final bool isLeft;
  final VoidCallback onDragStart;
  final ValueChanged<DragUpdateDetails> onDragUpdate;
  final VoidCallback onDragEnd;

  const _ArrowSliderWidget({
    required this.position,
    required this.arrowButtonSize,
    required this.thumbnailHeight,
    required this.isLeft,
    required this.onDragStart,
    required this.onDragUpdate,
    required this.onDragEnd,
  });

  @override
  Widget build(BuildContext context) {
    const borderRadius = 10.0;

    return Positioned(
      left: position,
      top: 0,
      child: GestureDetector(
        onPanStart: (_) => onDragStart(),
        onPanUpdate: onDragUpdate,
        onPanEnd: (_) => onDragEnd(),
        child: Container(
          width: arrowButtonSize,
          height: thumbnailHeight,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: isLeft ? Radius.circular(borderRadius) : Radius.zero,
              bottomLeft: isLeft ? Radius.circular(borderRadius) : Radius.zero,
              topRight: !isLeft ? Radius.circular(borderRadius) : Radius.zero,
              bottomRight:
                  !isLeft ? Radius.circular(borderRadius) : Radius.zero,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              isLeft
                  ? Assets.assetsIconsArrowLeftStream
                  : Assets.assetsIconsArrowRightStream,
              width: 10,
              height: 28,
            ),
          ),
        ),
      ),
    );
  }
}
