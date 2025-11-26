part of '../profile.dart';

class TradeProfileDetailScreen extends StatelessWidget {
  const TradeProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final user = state.userProfileModel;
        log("useruser: ${state.userProfileModel.email} ");

        return _buildTradeProfileContent(screenHeight, user, context);
      },
    );
  }

  Widget _buildTradeProfileContent(
      double screenHeight, UserRegistrationData user, BuildContext context) {
    final cubit = context.read<ProfileCubit>();

    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: screenHeight * (260 / screenHeight),
            color: AppColors.primaryPink,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
            child: Column(
              children: [
                const TopBarWidget(
                  isSearch: false,
                  isGift: false,
                  isCircle: true,
                ),
                22.ph,
                UserInfoTradeProfileDetail(
                  name: user.firstName ?? '',
                  nickname: user.firstName ?? '',
                  lastName: user.lastName ?? '',
                  image: user.image ?? '',
                  subscribersCount: user.subscribersCount ?? 0,
                  subscribedUsersCount: user.subscribedUsersCount ?? 0,
                ),
                32.ph,
                InfoTradeProfileDetailBottom(rating: user.personalRating ?? 0),
                24.ph,
                const FourContainerTradeProfileDetail(),
                24.ph,
                const StreamerProfileTradeOptions(),
                24.ph,
                GestureDetector(
                  onTap: () => CustomDialog.show(
                    context,
                    title: 'logout'.tr(),
                    content: 'logoutConfirmation'.tr(),
                    confirmText: 'logout'.tr(),
                    isDestructive: true,
                    onConfirm: () => cubit.signOut(context),
                  ),
                  child: CustomContainer(
                    height: 40.h,
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(10.r),
                    conColor: AppColors.greyButton,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomContainer(
                            height: 18.h,
                            width: 18.w,
                            image: const DecorationImage(
                              image:
                                  AssetImage(Assets.assetsIconsArrowsALogout2),
                            ),
                          ),
                          6.pw,
                          CustomText(
                            text: "logout".tr(),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                100.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
