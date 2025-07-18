part of 'customs.dart';

class CustomStatColumn extends StatelessWidget {
  final String value;
  final String label;
  final String? iconPath;

  const CustomStatColumn({
    super.key,
    required this.value,
    required this.label,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (iconPath != null)
          Row(
            children: [
              Image.asset(
                iconPath!,
                height: 13.33,
                width: 13.33,
                color: AppColors.white,
              ),
              5.pw,
              CustomText(
                text: value,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.blackDark,
              ),
            ],
          )
        else
          CustomText(
            text: value,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
          ),
        2.ph,
        FittedBox(
          child: CustomText(
            text: label,
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.blackDark,
          ),
        ),
      ],
    );
  }
}
