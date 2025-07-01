part of '../search.dart';

class ReusableCustomContainer extends StatelessWidget {
  final double height;
  final BorderRadius borderRadius;
  final Gradient gradient;
  final String backgroundImage;
  final String title;
  final String viewsText;
  final String viewsIcon;

  const ReusableCustomContainer({
    super.key,
    required this.height,
    required this.borderRadius,
    required this.gradient,
    required this.backgroundImage,
    required this.title,
    required this.viewsText,
    required this.viewsIcon,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: height,
      borderRadius: borderRadius,
      gradient: gradient,
      image: DecorationImage(
        image: AssetImage(backgroundImage),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.darken,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: title,
                textAlign: TextAlign.center,
                color: AppColors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 12.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Image.asset(
                    viewsIcon,
                    height: 18.h,
                    width: 18.w,
                  ),
                  15.pw,
                  CustomText(
                    text: viewsText,
                    textAlign: TextAlign.center,
                    color: AppColors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
