part of '../search.dart';

class CustomRowCompanyName extends StatelessWidget {
  const CustomRowCompanyName(
      {super.key, required this.text, required this.image, required this.onTap});
  final String text;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(children: [
      CircleAvatar(
        radius: 22.r,
        backgroundColor: AppColors.gray,
        child: Image.asset(
          image,
          color: AppColors.blackDark,
          height: 25.h,
          width: 25.w,
        ),
      ),
      12.pw,
      Expanded(
        child: CustomText(
          text: text,
          fontSize: 15.sp,
          fontWeight: FontWeight.w700,
        ),
      )
    ]));
  }
}
