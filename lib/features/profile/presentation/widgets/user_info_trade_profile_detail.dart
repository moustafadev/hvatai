part of '../profile.dart';

class UserInfoTradeProfileDetail extends StatelessWidget {
  const UserInfoTradeProfileDetail({
    required this.name,
    super.key,
    required this.nickname,
    required this.lastName,
    required this.image,
  });
  final String nickname;
  final String name;
  final String lastName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 36.r,
            backgroundColor: AppColors.gray,
            backgroundImage: image.isNotEmpty
                ? (image.startsWith('http')
                    ? CachedNetworkImageProvider(image)
                    : CachedNetworkImageProvider('https://khvatai.ru/${image}'))
                : AssetImage(Assets.assetsImagesProfileImage) as ImageProvider,
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
    });
  }
}
