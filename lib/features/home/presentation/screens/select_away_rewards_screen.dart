part of '../home.dart';

class SelectAwayRewardsScreen extends StatefulWidget {
  const SelectAwayRewardsScreen({super.key});

  @override
  State<SelectAwayRewardsScreen> createState() =>
      _SelectAwayRewardsScreenState();
}

class RewardLoadingScreen extends StatelessWidget {
  const RewardLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: AppColors.primaryColor),
            24.ph,
            CustomText(
              text: 'processingPayment'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blackColorIcon,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class RewardSuccessScreen extends StatelessWidget {
  const RewardSuccessScreen({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: onContinue,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              Assets.assetsIconsSuccess,
              width: 60.w,
              height: 60.h,
            ),
            24.ph,
            CustomText(
              text: 'operationCompletedSuccessfully'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomGradientButton(
              text: 'toMain'.tr(),
              onPressed: onContinue,
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
            50.ph,
          ],
        ),
      ),
    );
  }
}

class RewardErrorScreen extends StatelessWidget {
  const RewardErrorScreen({
    super.key,
    required this.onRetry,
    required this.onClose,
  });

  final VoidCallback onRetry;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: () {
            onClose();
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: '🙁',
              fontSize: 80.sp,
            ),
            24.ph,
            CustomText(
              text: 'anErrorOccurred'.tr(),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            40.ph,
            CustomGradientButton(
              text: 'retry'.tr(),
              onPressed: onRetry,
              width: 200.w,
              height: 52,
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectAwayRewardsScreenState extends State<SelectAwayRewardsScreen> {
  late final PaymentMethodCubit _paymentMethodCubit;
  late final ProfileCubit _profileCubit;

  @override
  void initState() {
    super.initState();
    _paymentMethodCubit = locator<PaymentMethodCubit>()..getPaymentMethods();
    _profileCubit = locator<ProfileCubit>()..getProfile();
  }

  @override
  void dispose() {
    _paymentMethodCubit.close();
    _profileCubit.close();
    super.dispose();
  }

  Future<void> _handleAddPaymentMethod(BuildContext context) async {
    await context.push(
      AppRoutes.addNewPaymentMethod,
      extra: _paymentMethodCubit,
    );
    if (!context.mounted) return;
    await _paymentMethodCubit.getPaymentMethods();
  }

  Future<void> _handlePay(BuildContext context, AwardsClubCubit cubit) async {
    await cubit.sendReward();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _paymentMethodCubit),
        BlocProvider.value(value: _profileCubit),
      ],
      child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
        builder: (context, paymentMethodState) {
          return BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, profileState) {
              return BlocBuilder<AwardsClubCubit, AwardsClubState>(
                builder: (context, state) {
                  final cubit = context.read<AwardsClubCubit>();
                  final selectedAmount = cubit.selectedAmount;
                  final processingFee = cubit.selectedAmountFee;
                  final total = selectedAmount != null
                      ? selectedAmount + processingFee
                      : 0;
                  final thankYouText = state.rewardMessage.isNotEmpty
                      ? state.rewardMessage
                      : 'noThanks'.tr();

                  if (profileState.isLoading || paymentMethodState.isLoading) {
                    return const RewardLoadingScreen();
                  }

                  if (state.showRewardLoadingScreen) {
                    return const RewardLoadingScreen();
                  }

                  if (state.showRewardSuccessScreen) {
                    return RewardSuccessScreen(
                      onContinue: () {
                        cubit.resetRewardScreens();
                        context.pop(true);
                      },
                    );
                  }

                  if (state.showRewardErrorScreen) {
                    return RewardErrorScreen(
                      onRetry: () => cubit.sendReward(),
                      onClose: () => cubit.resetRewardScreens(),
                    );
                  }

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
                                text: thankYouText,
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
                                    text: selectedAmount != null
                                        ? '$selectedAmount ₽'
                                        : '--',
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
                                    text: '$processingFee ₽',
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
                                    text: selectedAmount != null
                                        ? '$total ₽'
                                        : '--',
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
                              12.ph,
                              PaymentMethodsSection(
                                walletSelected: true,
                                onAddPaymentTap: () =>
                                    _handleAddPaymentMethod(context),
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
                                  isLoading: state.isRewardSubmitting,
                                  isDisabled: selectedAmount == null ||
                                      state.isRewardSubmitting,
                                  onPressed: selectedAmount == null
                                      ? null
                                      : () => _handlePay(context, cubit),
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
              );
            },
          );
        },
      ),
    );
  }
}
