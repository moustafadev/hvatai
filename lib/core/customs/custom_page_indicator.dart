part of 'customs.dart';

class CustomPageIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final Color activeColor;
  final Color inactiveColor;
  final double activeSize;
  final double inactiveSize;
  final Duration animationDuration;

  const CustomPageIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    this.activeColor = AppColors.hotPink,
    this.inactiveColor = AppColors.gray,
    this.activeSize = 8.0,
    this.inactiveSize = 8.0,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: animationDuration,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: isActive ? activeSize : inactiveSize,
          height: isActive ? activeSize : inactiveSize,
          decoration: BoxDecoration(
            color: isActive ? activeColor : inactiveColor,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
