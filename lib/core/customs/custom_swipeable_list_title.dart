part of 'customs.dart';

class CustomSwipeableListTitle extends StatefulWidget {
  final Widget leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;
  final EdgeInsetsGeometry? contentPadding;

  const CustomSwipeableListTitle({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onDelete,
    this.contentPadding,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomSwipeableListTitleState createState() =>
      _CustomSwipeableListTitleState();
}

class _CustomSwipeableListTitleState extends State<CustomSwipeableListTitle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  bool _isSwipeActive = false;
  final double _maxSlideDistance = 80.0;

  static OverlayEntry? _currentOverlay;
  static _CustomSwipeableListTitleState? _activeInstance;

  final GlobalKey _deleteButtonKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.2, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  @override
  void dispose() {
    _removeGlobalOverlay();
    _controller.dispose();
    super.dispose();
  }

  void _addGlobalOverlay() {
    _removeGlobalOverlay();
    _activeInstance = this;

    _currentOverlay = OverlayEntry(
      builder: (context) => Positioned.fill(
        child: GestureDetector(
          onTapDown: (details) {
            if (_isDeleteButtonTapped(details.globalPosition)) {
              Future.delayed(const Duration(milliseconds: 10), () {
                _handleDelete();
              });
              return;
            }
            _resetSwipe();
          },
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
    );

    Overlay.of(context)?.insert(_currentOverlay!);
  }

  bool _isDeleteButtonTapped(Offset globalPosition) {
    if (_deleteButtonKey.currentContext == null) return false;

    final RenderBox? renderBox =
        _deleteButtonKey.currentContext!.findRenderObject() as RenderBox?;

    if (renderBox == null) return false;

    final Offset localPosition = renderBox.globalToLocal(globalPosition);
    final Size size = renderBox.size;

    return localPosition.dx >= 0 &&
        localPosition.dx <= size.width &&
        localPosition.dy >= 0 &&
        localPosition.dy <= size.height;
  }

  void _removeGlobalOverlay() {
    if (_currentOverlay != null && _activeInstance == this) {
      _currentOverlay!.remove();
      _currentOverlay = null;
      _activeInstance = null;
    }
  }

  void _handlePanUpdate(DragUpdateDetails details) {
    if (details.delta.dx < 0) {
      final double newValue =
          (_controller.value - details.delta.dx / 200).clamp(0.0, 1.0);
      _controller.value = newValue;

      if (newValue > 0.1 && !_isSwipeActive) {
        setState(() => _isSwipeActive = true);
        _addGlobalOverlay();
      }
    }
  }

  void _handlePanEnd(DragEndDetails details) {
    if (_controller.value > 0.3) {
      _controller.forward();
    } else {
      _controller.reverse();
      setState(() => _isSwipeActive = false);
      _removeGlobalOverlay();
    }
  }

  void _resetSwipe() {
    _controller.reverse();
    setState(() => _isSwipeActive = false);
    _removeGlobalOverlay();
  }

  void _handleDelete() {
    _resetSwipe();
    Future.delayed(const Duration(milliseconds: 50), () {
      widget.onDelete?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _handlePanUpdate,
      onPanEnd: _handlePanEnd,
      onTap: _isSwipeActive ? _resetSwipe : widget.onTap,
      child: Stack(
        children: [
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return AnimatedOpacity(
                      opacity: _controller.value,
                      duration: const Duration(milliseconds: 0),
                      child: SizedBox(
                        width: _maxSlideDistance,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                key: _deleteButtonKey,
                                height: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(100.r),
                                    bottomLeft: Radius.circular(100.r),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Assets.assetsIconsTrash,
                                      color: AppColors.white,
                                      height: 24.h,
                                      width: 24.w,
                                    ),
                                    CustomText(
                                      text: 'delete'.tr(),
                                      color: AppColors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: _slideAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  _slideAnimation.value.dx * MediaQuery.of(context).size.width,
                  0,
                ),
                child: ListTile(
                  contentPadding:
                      widget.contentPadding ?? const EdgeInsets.all(16),
                  leading: widget.leading,
                  title: widget.title,
                  subtitle: widget.subtitle,
                  trailing: widget.trailing,
                  onTap: _isSwipeActive ? _resetSwipe : widget.onTap,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
