part of '../../awards.dart';

class SendRewardThankYouWidget extends StatelessWidget {
  const SendRewardThankYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendRewardFlowCubit, SendRewardFlowState>(
      builder: (context, state) {
        final cubit = context.read<SendRewardFlowCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSwitchWidget(
              title: 'addThanks'.tr(),
              value: state.addThankYouNote,
              onChanged: (value) {
                cubit.setAddThankYou(value);
                FocusScope.of(context).unfocus();
              },
            ),
            12.ph,
            CustomTextField(
              hintText: 'writeSomething'.tr(),
              enabled: state.addThankYouNote,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: !state.addThankYouNote
                    ? AppColors.disabledBackground
                    : AppColors.blackColor,
              ),
              fillColor:
                  !state.addThankYouNote ? AppColors.gray : AppColors.white,
              readOnly: !state.addThankYouNote,
              onChanged: cubit.updateRewardMessage,
            ),
          ],
        );
      },
    );
  }
}
