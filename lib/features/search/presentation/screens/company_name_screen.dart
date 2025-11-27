part of '../search.dart';

class CompanyNameScreen extends StatelessWidget {
  const CompanyNameScreen({
    required this.userId,
    super.key,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider<CompanyNameCubit>(
      create: (_) => locator<CompanyNameCubit>()..loadCompanyProfile(userId),
      child: _CompanyNameView(screenHeight: screenHeight),
    );
  }
}

class _CompanyNameView extends StatelessWidget {
  const _CompanyNameView({required this.screenHeight});

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocBuilder<CompanyNameCubit, CompanyNameState>(
        builder: (context, state) {
          final cubit = context.read<CompanyNameCubit>();

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primaryColor),
            );
          }

          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomText(
                  text: state.errorMessage,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          final user = state.user;
          if (user == null) {
            return const SizedBox.shrink();
          }

          final fullName = [
            user.name,
            user.lastName,
          ].where((element) => (element ?? '').isNotEmpty).join(' ').trim();

          final statsText =
              '${user.subscribersCount ?? 0} ${'subscribers'.tr()} • ${user.subscribedUsersCount ?? 0} ${'subscriptions'.tr()}';

          final description = (user.description ?? '').trim().isEmpty
              ? 'noDescription'.tr()
              : user.description!.trim();
          final profileUserId = user.id ?? 0;
          final isSubscribed = state.isSubscribed;
          final buttonTitle =
              isSubscribed ? 'unsubscribe'.tr() : 'subscribe'.tr();
          final buttonColor =
              isSubscribed ? AppColors.white : AppColors.primaryColor;
          final textColor =
              isSubscribed ? AppColors.primaryColor : AppColors.white;
          final borderColor = isSubscribed ? AppColors.primaryColor : null;

          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: screenHeight * (260 / screenHeight),
                  color: AppColors.darkYellow,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => context.pop(),
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      22.ph,
                      InfoCompanyNameDetail(
                        title: fullName.isEmpty ? 'companyName'.tr() : fullName,
                        subtitle: user.email ?? user.phone ?? '',
                        statsText: statsText,
                        imageUrl: user.image,
                      ),
                      32.ph,
                      InfoCompanyNameBottom(
                        rating: user.personalAvg ?? 0,
                        reviews: user.personalRatingCount ?? 0,
                        favorites: user.favoritesCount ?? 0,
                        deliveryEstimate: '--',
                      ),
                      16.ph,
                      CustomText(
                        text: description,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      6.ph,
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            CustomText(
                              text: 'viewAll'.tr(),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryPink,
                            ),
                            8.pw,
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 14.sp,
                              color: AppColors.primaryPink,
                            ),
                          ],
                        ),
                      ),
                      16.ph,
                      CustomRowCompanyName(
                        text: 'sendReward'.tr(),
                        image: Assets.assetsIconsTips,
                        onTap: () {
                          context.push<bool>(
                            AppRoutes.awardsGift,
                            extra: {
                              'user': user,
                              'isSubscribed': isSubscribed,
                              'companyCubit': cubit,
                            },
                          ).then((value) {
                            if (value != null) {
                              cubit.syncSubscriptionStatus(value);
                            }
                          });
                        },
                      ),
                      12.ph,
                      CustomRowCompanyName(
                        text: 'write'.tr(),
                        image: Assets.assetsIconsMessage,
                        onTap: () {
                          final user = state.user;
                          if (user != null) {
                            showChatBottomSheet(context, user);
                          }
                        },
                      ),
                      24.ph,
                      FourContainerCompanyName(
                        userId: user.id,
                        userName: fullName.isEmpty ? null : fullName,
                      ),
                      24.ph,
                      CustomButton(
                        title: buttonTitle,
                        color: buttonColor,
                        textColor: textColor,
                        colorBorderSide: borderColor,
                        isLoading: state.isToggleLoading,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        onPressed: profileUserId == 0
                            ? null
                            : () => cubit.toggleSubscription(profileUserId),
                      ),
                      24.ph,
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
