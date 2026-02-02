part of '../awards.dart';

class SelectAwayRewardsScreen extends StatefulWidget {
  const SelectAwayRewardsScreen({super.key});

  @override
  State<SelectAwayRewardsScreen> createState() =>
      _SelectAwayRewardsScreenState();
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

  Future<void> _handlePay(BuildContext context) async {
    final cubit = context.read<SendRewardFlowCubit>();
    await cubit.sendReward();
  }

  @override
  Widget build(BuildContext context) {
    // Try to get cubit from parent context, otherwise create new one
    SendRewardFlowCubit sendRewardFlowCubit;
    try {
      sendRewardFlowCubit = context.read<SendRewardFlowCubit>();
    } catch (_) {
      // If cubit doesn't exist in context, create a new one
      // This shouldn't happen in normal flow, but handle gracefully
      sendRewardFlowCubit = locator<SendRewardFlowCubit>();
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _paymentMethodCubit),
        BlocProvider.value(value: _profileCubit),
        BlocProvider.value(value: sendRewardFlowCubit),
      ],
      child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
        builder: (context, paymentMethodState) {
          return BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, profileState) {
              return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
                builder: (context, state) {
                  if (profileState.isLoading || paymentMethodState.isLoading) {
                    return const RewardLoadingScreen();
                  }

                  if (state.showRewardLoadingScreen) {
                    return const RewardLoadingScreen();
                  }

                  if (state.showRewardSuccessScreen) {
                    return const RewardSuccessScreen();
                  }

                  if (state.showRewardErrorScreen) {
                    return const RewardErrorScreen();
                  }

                  return _SelectAwayRewardsContent(
                    onAddPayment: () => _handleAddPaymentMethod(context),
                    onPay: () => _handlePay(context),
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
