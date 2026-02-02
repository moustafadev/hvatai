part of '../../awards.dart';

class SendRewardThankYouWidget extends StatefulWidget {
  const SendRewardThankYouWidget({super.key});

  @override
  State<SendRewardThankYouWidget> createState() =>
      _SendRewardThankYouWidgetState();
}

class _SendRewardThankYouWidgetState extends State<SendRewardThankYouWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final cubit = context.read<SendRewardFlowCubit>();
    _controller = TextEditingController(text: cubit.state.rewardMessage);
    _controller.addListener(() {
      cubit.updateRewardMessage(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();

        // Sync controller with state when state changes externally
        if (_controller.text != state.rewardMessage) {
          _controller.text = state.rewardMessage;
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSwitchWidget(
              title: 'addThanks'.tr(),
              value: state.addThankYouNote,
              onChanged: cubit.setAddThankYou,
            ),
            12.ph,
            CustomTextField(
              hintText: 'writeSomething'.tr(),
              controller: _controller,
              fillColor:
                  !state.addThankYouNote ? AppColors.gray : AppColors.white,
              readOnly: !state.addThankYouNote,
            ),
          ],
        );
      },
    );
  }
}
