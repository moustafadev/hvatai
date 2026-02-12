part of '../invite_friend.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<InviteFriendCubit>()..loadInviteCode(),
      child: Scaffold(
        body: BlocBuilder<InviteFriendCubit, InviteFriendState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.ph,
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
                        border:
                            Border.all(color: AppColors.graniteGray, width: 1),
                      ),
                      child: Row(
                        children: [
                          16.pw,
                          Expanded(
                            child: state.isLoading
                                ? const Center(
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    ),
                                  )
                                : CustomText(
                                    text: state.inviteCode.isEmpty
                                        ? 'Loading...'
                                        : state.inviteCode,
                                    color: AppColors.blackDark,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                          ),
                          16.pw,
                          SizedBox(
                            width: 114.w,
                            child: CustomButton(
                              padding: EdgeInsets.zero,
                              radius: 10.r,
                              color: AppColors.primaryColor,
                              title: 'copy'.tr(),
                              fontSize: 14.sp,
                              height: 50,
                              fontWeight: FontWeight.w700,
                              textColor: AppColors.white,
                              onPressed: state.inviteCode.isEmpty
                                  ? null
                                  : () {
                                      Clipboard.setData(
                                        ClipboardData(text: state.inviteCode),
                                      );
                                      // Show success message
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: CustomText(
                                            text: 'Invite code copied!',
                                            color: AppColors.white,
                                          ),
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          duration: const Duration(seconds: 2),
                                        ),
                                      );
                                    },
                            ),
                          ),
                        ],
                      ),
                    ),
                    8.ph,
                    Row(
                      children: [
                        CustomText(
                          text: '${'earned'.tr()}: ${state.joinedUsersCount}',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackDark,
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => ReferralRulesBottomSheet.show(context),
                          child: CustomText(
                            text: 'viewRules'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryPink,
                          ),
                        ),
                      ],
                    ),
                    32.ph
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
