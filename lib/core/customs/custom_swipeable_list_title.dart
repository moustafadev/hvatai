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
    _controller.dispose();
    super.dispose();
  }

  void _handlePanUpdate(DragUpdateDetails details) {
    if (details.delta.dx < 0) {
      final double newValue =
          (_controller.value - details.delta.dx / 200).clamp(0.0, 1.0);
      _controller.value = newValue;

      if (newValue > 0.1 && !_isSwipeActive) {
        setState(() => _isSwipeActive = true);
      }
    }
  }

  void _handlePanEnd(DragEndDetails details) {
    if (_controller.value > 0.3) {
      _controller.forward();
    } else {
      _controller.reverse();
      setState(() => _isSwipeActive = false);
    }
  }

  void _resetSwipe() {
    _controller.reverse();
    setState(() => _isSwipeActive = false);
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
                              child: InkWell(
                                onTap: () {
                                  _resetSwipe();
                                  widget.onDelete?.call();
                                },
                                child: Container(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
