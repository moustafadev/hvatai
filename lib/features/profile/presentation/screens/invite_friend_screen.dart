part of '../profile.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    Assets.assetsIconsReferfriend,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    right: 0,
                    child: GestureDetector(
                      onTap: () => context.pop(),
                      child: Icon(
                        size: 28.sp,
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              CustomText(
                text: 'bringFriend'.tr(),
                fontWeight: FontWeight.w800,
                fontSize: 28.sp,
              ),
              8.ph,
              CustomRowInviteFriend(
                title: 'inviteFriends'.tr(),
                description: 'yourFriendReceives'.tr(),
              ),
              16.ph,
              CustomRowInviteFriend(
                title: 'getRewards'.tr(),
                description: 'youWillReceive'.tr(),
              ),
              16.ph,
              CustomRowInviteFriend(
                title: 'noRestrictions'.tr(),
                description: 'theMoreFriends'.tr(),
              ),
              16.ph,
              Container(
                height: 52.h,
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.graniteGray, width: 1),
                ),
                child: Row(
                  children: [
                    CustomText(
                      text: 'hvatai.com/invite/754623',
                      color: AppColors.blackDark,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    Spacer(),
                    SizedBox(
                      width: 114.w,
                      child: CustomButton(
                        padding: EdgeInsets.zero,
                        radius: 10.r,
                        color: AppColors.primaryColor,
                        title: 'copy'.tr(),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        textColor: AppColors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              53.ph,
              CustomButton(
                padding: EdgeInsets.zero,
                radius: 10.r,
                height: 54.h,
                color: AppColors.primaryColor,
                title: 'continue'.tr(),
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                textColor: AppColors.white,
                onPressed: () {},
              ),
              8.ph,
              Row(
                children: [
                  CustomText(
                    text: 'earned'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackDark,
                  ),
                  Spacer(),
                  CustomText(
                    text: 'viewRules'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryPink,
                  ),
                ],
              ),
              32.ph
            ],
          ),
        ),
      )),
    );
  }
}
