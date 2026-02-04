part of '../../profile.dart';

class TabSwitchWidget extends StatelessWidget {
  final bool isFirstSelected;
  final String firstLabel;
  final String secondLabel;
  final ValueChanged<bool> onChanged;

  const TabSwitchWidget({
    super.key,
    required this.isFirstSelected,
    required this.firstLabel,
    required this.secondLabel,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000), // #00000005 at ~5% opacity
            offset: Offset(0, 3),
            blurRadius: 7,
          ),
          BoxShadow(
            color: Color(0x0C000000), // #00000005
            offset: Offset(0, 13),
            blurRadius: 13,
          ),
          BoxShadow(
            color: Color(0x08000000), // #00000003
            offset: Offset(0, 30),
            blurRadius: 18,
          ),
          BoxShadow(
            color: Color(0x00000000), // #00000000
            offset: Offset(0, 53),
            blurRadius: 21,
          ),
          BoxShadow(
            color: Color(0x00000000), // #00000000
            offset: Offset(0, 83),
            blurRadius: 23,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final thumbWidth = constraints.maxWidth / 2;
            return Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeInOut,
                  left: isFirstSelected ? 0 : thumbWidth,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: thumbWidth,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onChanged(true),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 8),
                          alignment: Alignment.center,
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeInOut,
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              height: 1.2,
                              letterSpacing: 0,
                              color: isFirstSelected
                                  ? AppColors.white
                                  : AppColors.blackColorIcon,
                            ),
                            child: Text(firstLabel),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onChanged(false),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 8),
                          alignment: Alignment.center,
                          child: AnimatedDefaultTextStyle(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeInOut,
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                              height: 1.2,
                              letterSpacing: 0,
                              color: !isFirstSelected
                                  ? AppColors.white
                                  : AppColors.blackColorIcon,
                            ),
                            child: Text(secondLabel),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
