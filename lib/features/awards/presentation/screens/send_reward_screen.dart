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
      child: const SendRewardContent(),
    );
  }
}
