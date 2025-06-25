part of '../../auth.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SocialLoginCubit>();

    return Column(
      children: [
        CustomIconButton(
          onPressed: cubit.signUpWithGoogle,
          text: 'continueWithGoogle'.tr(),
          iconPath: Assets.assetsIconsGoogle,
        ),
        SizedBox(height: 10.h),
        CustomIconButton(
          onPressed: () => context.push(AppRoutes.registration),
          text: 'continueWithEmail'.tr(),
          iconPath: Assets.assetsIconsEmail,
        ),
      ],
    );
  }
}
