part of '../stream.dart';

class RightIcon extends StatelessWidget {
  final String icon;
  final String label;
  final double size;
  final String? counter;
  final VoidCallback? onTap;
  const RightIcon({
    super.key,
    required this.icon,
    required this.label,
    this.size = 24,
    this.counter,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: size,
                height: size,
                child: Image.asset(icon, fit: BoxFit.contain),
              ),
              if (counter != null)
                Positioned(
                  top: -12,
                  right: -5,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.purple2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints:
                        const BoxConstraints(minWidth: 20, minHeight: 20),
                    child: CustomText(
                      text: counter!,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 10,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 4.h),
          CustomText(
            text: label,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 10,
          ),
        ],
      ),
    );
  }
}
