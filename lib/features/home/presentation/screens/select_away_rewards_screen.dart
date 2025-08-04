part of '../home.dart';

class SelectAwayRewardsScreen extends StatelessWidget {
  const SelectAwayRewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocBuilder<AwardsClubCubit, AwardsClubState>(
        builder: (context, state) {
          final cubit = context.read<AwardsClubCubit>();
          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            appBar: AppBar(
              backgroundColor: AppColors.lightGreyBackground,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.blackDark,
                ),
                onPressed: () => context.pop(),
              ),
            ),
            body: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      Row(
                        children: [
                          CustomText(
                            text: 'sendReward'.tr(),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.info_outline_rounded,
                              color: AppColors.graniteGray,
                              size: 24.sp,
                            ),
                          ),
                        ],
                      ),
                      12.ph,
                      CustomText(
                        text: 'noThanks'.tr(),
                        fontSize: 14.sp,
                        color: AppColors.graniteGray,
                        fontWeight: FontWeight.w500,
                      ),
                      50.ph,
                      Row(
                        children: [
                          CustomText(
                            text: 'reward'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          const Spacer(),
                          CustomText(
                            text: '50 ₽',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                      20.ph,
                      Row(
                        children: [
                          CustomText(
                            text: 'processingFee'.tr(),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          const Spacer(),
                          CustomText(
                            text: '14 ₽',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                      15.ph,
                      Row(
                        children: [
                          CustomText(
                            text: 'total'.tr(),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          const Spacer(),
                          CustomText(
                            text: '64 ₽',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      32.ph,
                      CustomText(
                        text: 'paymentMethod'.tr(),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // لا تجعلها scrollable داخليًا
                        itemCount: 2,
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        itemBuilder: (context, index) {
                          return CustomSwipeableListTitle(
                            onDelete: () {
                              CustomDialog.show(
                                context,
                                title: 'deletePaymentMethod'.tr(),
                                content: 'deletePaymentMethodMessage'.tr(),
                                confirmText: 'delete'.tr(),
                                isDestructive: true,
                                onConfirm: () {},
                              );
                            },
                            contentPadding: EdgeInsets.all(0),
                            leading: CircleAvatar(
                              radius: 25.r,
                              backgroundColor: AppColors.gray,
                              child: SvgPicture.asset(
                                Assets.assetsIconsVisa,
                                width: 35.w,
                                height: 12.h,
                              ),
                            ),
                            title: CustomText(
                              text: '**** 1234',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            trailing: GradientCheckbox(
                                selected: state.selectedMethodIndex == index,
                                onTap: () {
                                  cubit.toggleMethodPayment(index);
                                }),
                          );
                        },
                      ),
                      25.ph,
                      Divider(
                        height: 1.h,
                        color: AppColors.gray,
                        thickness: 1,
                      ),
                      5.ph,
                      ListTile(
                        onTap: () {},
                        contentPadding: EdgeInsets.all(0),
                        leading: SvgPicture.asset(
                          Assets.assetsIconsCardAdd,
                          height: 24.h,
                          width: 24.w,
                        ),
                        title: CustomText(
                          text: 'addNewMethod'.tr(),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: AppColors.blackDark,
                          size: 28,
                        ),
                      ),
                    ]),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 20.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomGradientButton(
                          text: 'pay'.tr(),
                          isLoading: state.isLoading,
                          isDisabled: state.selectedIndex == null,
                          onPressed: () {},
                        ),
                        20.ph,
                      ],
                    ),
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
