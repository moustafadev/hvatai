part of '../../awards.dart';

class SendRewardThankYouWidget extends StatelessWidget {
  const SendRewardThankYouWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSwitchWidget(
              title: 'addThanks'.tr(),
              value: state.addThankYouNote,
              onChanged: (val) {
                cubit.setAddThankYou(val);
                if (!val) {
                  controller.clear();
                  cubit.updateRewardMessage('');
                }
              },
            ),
            12.ph,
            CustomTextField(
              hintText: 'writeSomething'.tr(),
              controller: controller,
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
