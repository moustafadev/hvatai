part of '../home.dart';

class CustomRowAwardsGift extends StatelessWidget {
  const CustomRowAwardsGift(
      {super.key,
      required this.title,
      required this.imagePath,
      this.color,
      required this.onTap});
  final String title;
  final String imagePath;
  final Color? color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.gray,
            child: Image.asset(
              imagePath,
              color: color ?? AppColors.blackDark,
              width: 20.w,
              height: 20.h,
            ),
          ),
          12.pw,
          CustomText(
            text: title,
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
