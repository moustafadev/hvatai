part of '../../auth.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SocialLoginCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialCircleButton(
          assetPath: Assets.assetsIconsApple,
          onTap: cubit.signUpWithApple,
        ),
        SocialCircleButton(
          assetPath: Assets.assetsIconsGoogle,
          onTap: cubit.signUpWithGoogle,
        ),
        SocialCircleButton(
          assetPath: Assets.assetsIconsEmail,
          onTap: () => context.push(AppRoutes.registration),
        ),
      ],
    );
  }
}
