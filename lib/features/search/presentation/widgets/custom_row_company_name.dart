part of '../search.dart';

class CustomRowCompanyName extends StatelessWidget {
  const CustomRowCompanyName(
      {super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
    ]);
  }
}
