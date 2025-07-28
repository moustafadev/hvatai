part of 'customs.dart';

class CustomRowInviteFriend extends StatelessWidget {
  const CustomRowInviteFriend(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 26.r,
          backgroundColor: AppColors.gray,
          child: Image.asset(
            Assets.assetsIconsBoost,
            color: AppColors.blackDark,
            height: 32.h,
            width: 32.w,
          ),
        ),
        12.pw,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
              CustomText(
                text: description,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        )
      ],
    );
  }
}
