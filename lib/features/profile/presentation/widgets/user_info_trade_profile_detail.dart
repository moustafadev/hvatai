part of '../profile.dart';

class UserInfoTradeProfileDetail extends StatelessWidget {
  const UserInfoTradeProfileDetail({
    required this.name,
    super.key,
    required this.nickname,
    required this.lastName,
  });
  final String nickname;
  final String name;
  final String lastName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          height: 72.h,
          width: 72.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            shape: BoxShape.circle,
            image: DecorationImage(
              image:
                  AssetImage(Assets.assetsImagesProfileImage) as ImageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
        8.pw,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: nickname,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
              4.ph,
              CustomText(
                text: "$name $lastName",
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
              4.ph,
              CustomText(
                text: "95K subscribers - 132 subscriptions ",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
