part of '../profile.dart';

class UserInfoTradeProfileDetail extends StatelessWidget {
  const UserInfoTradeProfileDetail({
    required this.name,
    super.key,
    required this.nickname,
    required this.lastName,
    required this.image,
    required this.subscribersCount,
    required this.subscribedUsersCount,
  });
  final String nickname;
  final String name;
  final String lastName;
  final String image;
  final int subscribersCount;
  final int subscribedUsersCount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                100.r,
              ),
              border: Border.all(
                color: AppColors.gray,
                width: 1,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                100.r,
              ),
              child: CustomImage(
                width: 72.w,
                height: 72.h,
                imageSource: image,
                fit: BoxFit.cover,
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
                  text: "$subscribersCount subscribers - $subscribedUsersCount subscriptions ",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
