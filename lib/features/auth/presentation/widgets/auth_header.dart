part of '../auth.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 16.w),
        CustomText(
          text: title,
          color: AppColors.blackDark,
          fontWeight: FontWeight.w700,
          fontSize: 18.sp,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => context.pop(),
          child: Icon(
            Icons.close,
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
