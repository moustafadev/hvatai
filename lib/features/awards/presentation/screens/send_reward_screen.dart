part of '../awards.dart';

class SendRewardScreen extends StatefulWidget {
  const SendRewardScreen({super.key});

  @override
  State<SendRewardScreen> createState() => _SendRewardScreenState();
}

class _SendRewardScreenState extends State<SendRewardScreen> {
  late final TextEditingController _noteController;

  @override
  void initState() {
    super.initState();
    final initialMessage = context.read<AwardsClubCubit>().state.rewardMessage;
    _noteController = TextEditingController(text: initialMessage);
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _handleContinue(BuildContext context) async {
    final cubit = context.read<AwardsClubCubit>();

    if (cubit.state.selectedIndex == null) {
      showFloatingMessageError('rewardAmountRequired'.tr());
      return;
    }

    final message =
        cubit.state.addThankYouNote ? _noteController.text.trim() : '';
    cubit.updateRewardMessage(message);

    final result = await context.push<bool>(
      AppRoutes.selectAwaySend,
      extra: cubit,
    );

    if (!context.mounted) return;
    if (result == true) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        return _SendRewardContent(
          controller: _noteController,
          onContinue: () => _handleContinue(context),
        );
      },
    );
  }
}
