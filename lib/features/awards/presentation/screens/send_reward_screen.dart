part of '../awards.dart';

class SendRewardScreen extends StatelessWidget {
  const SendRewardScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<SendRewardFlowCubit>()..setInitialData(userId: userId),
      child: const _SendRewardView(),
    );
  }
}

class _SendRewardView extends StatelessWidget {
  const _SendRewardView();

  Future<void> _handleContinue(BuildContext context) async {
    final cubit = context.read<SendRewardFlowCubit>();

    if (cubit.state.selectedIndex == null) {
      showFloatingMessageError('rewardAmountRequired'.tr());
      return;
    }

    final result = await context.push<bool>(
      AppRoutes.selectAwaySend,
    );

    if (!context.mounted) return;
    if (result == true) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        return _SendRewardContent(
          onContinue: () => _handleContinue(context),
        );
      },
    );
  }
}
