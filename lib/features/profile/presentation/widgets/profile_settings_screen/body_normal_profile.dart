part of '../../profile.dart';

class BodyNormalProfile extends StatelessWidget {
  const BodyNormalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final cubit = context.read<ProfileCubit>();

          if (state.isLoading) {
            return const Center(child: CustomCircularProgressIndicator());
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: state.errorMessage,
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  20.ph,
                  CustomButton(
                    title: 'retry'.tr(),
                    onPressed: cubit.getProfile,
                  ),
                ],
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  14.ph,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => context.pop(),
                        child: const Icon(Icons.arrow_back_ios),
                      ),
                      12.pw,
                      CustomText(
                        text: 'profileSettings'.tr(),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                    ],
                  ),
                  12.ph,
                  const TopProfileInfo(),
                  20.ph,

                  // ✅ Delivery settings
                  ReusableProfileTile(
                    title: "deliverySettings".tr(),
                    iconAsset: Assets.assetsImagesDeliveryIcon,
                    onTap: () => showDeliverySettingsBottomSheet(context),
                  ),

                  12.ph,

                  // ✅ Analytics
                  ReusableProfileTile(
                    title: "analytics".tr(),
                    iconAsset: Assets.assetsImagesAnalyticsIcon,
                    onTap: () => context.push(AppRoutes.analytics),
                  ),

                  20.ph,

                  // ✅ Help & Contacts list (same tile)
                  const HelpContactsSection(),

                  30.ph,

                  GestureDetector(
                    onTap: () {
                      showLogoutBottomSheet(
                        context,
                        () => cubit.signOut(context),
                      );
                    },
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
                                image: AssetImage(
                                    Assets.assetsIconsArrowsALogout2),
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

                  16.ph,
                  const Center(child: AppVersionWidget()),
                  100.ph,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// ✅ HelpContacts section using the same reusable tile
class HelpContactsSection extends StatelessWidget {
  const HelpContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: CustomText(
                text: "helpContacts".tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
                fontFamily: "Manrope",
              ),
            ),
            ...state.helpAndContact.map(
              (item) {
                return ReusableProfileTile(
                  title: item['title'],
                  iconAsset: item['icon'],
                  onTap: () {
                    final screen = item['screen'];
                    if (screen is Function(BuildContext)) {
                      screen(context);
                    } else if (screen is Function()) {
                      screen();
                    }
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class AppVersionWidget extends StatelessWidget {
  const AppVersionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const SizedBox.shrink();
        }
        final v = snap.data!;
        final version = v.version;
        final build = v.buildNumber;
        return CustomText(
          text: "v$version ($build)\n© 2023 Hvatai",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: AppColors.blackColor.withValues(alpha: 0.2),
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
