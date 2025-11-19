part of '../stream.dart';

class SlideToBidButton extends StatefulWidget {
  const SlideToBidButton({
    super.key,
    required this.priceText,
    required this.onSlideComplete,
    this.height = 40,
    this.backgroundColor,
    this.borderColor,
    this.fillColor,
    this.arrowIconLarge,
    this.arrowIconSmall,
    this.isLoading = false,
  });

  final String priceText;
  final VoidCallback onSlideComplete;
  final double height;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? fillColor;
  final String? arrowIconLarge;
  final String? arrowIconSmall;
  final bool isLoading;

  @override
  State<SlideToBidButton> createState() => _SlideToBidButtonState();
}

class _SlideToBidButtonState extends State<SlideToBidButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  double _dragX = 0.0;
  bool _completed = false;
  bool _initializedPosition = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateBack() {
    _controller.forward(from: 0).whenComplete(() {
      setState(() {
        _dragX = 4;
      });
      _controller.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    final fillColor = widget.fillColor ?? const Color(0xFF79E7F2);

    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;
        // Inner pill width (similar to button inside bordered container). Leave small gutter.
        final innerWidth = (totalWidth - 70).clamp(0.0, totalWidth);
        final maxDrag = (totalWidth - innerWidth).clamp(0.0, totalWidth);
        // Initialize pill position at ~3/4 of the slide distance
        if (!_initializedPosition && maxDrag > 0.0) {
          _dragX = 4;
          _initializedPosition = true;
        }

        return Stack(
          children: [
            // Outer border
            Container(
  height: 40,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(24),
                                ),
            ),
            // Sliding cyan pill (the button itself)
            Positioned(
              left: _dragX,
              top: 4,
              bottom: 4,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onHorizontalDragUpdate: (details) {
                  if (_completed || widget.isLoading) return;
                  setState(() {
                    _dragX = (_dragX + details.delta.dx).clamp(4.0, maxDrag);
                  });
                },
                onHorizontalDragEnd: (_) {
                  if (_completed || widget.isLoading) return;
                  if (maxDrag == 0) {
                    // Edge case, consider as completed
                    _completed = true;
                    widget.onSlideComplete();
                    return;
                  }
                  if (_dragX >= maxDrag * 0.92) {
                    _completed = true;
                    setState(() {
                      _dragX = maxDrag;
                    });
                    widget.onSlideComplete();
                  } else {
                    _animateBack();
                  }
                },
                child: Container(
                  width: innerWidth,
                  height: 32,
                  decoration: BoxDecoration(
                    color: fillColor,
                    borderRadius: BorderRadius.circular(100),
                  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: widget.isLoading
                        ? const Center(
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(width: 8),
                              const Text(
                                'Ставка:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                widget.priceText,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                ),
                              ),
                              if (widget.arrowIconLarge != null)
                                SvgPicture.asset(
                                  widget.arrowIconLarge!,
                                ),
                              if (widget.arrowIconSmall != null)
                                SvgPicture.asset(
                                  widget.arrowIconSmall!,
                                ),
                              const SizedBox(width: 8),
                            ],
                          ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


