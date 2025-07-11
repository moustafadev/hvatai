part of '../../auth.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SocialLoginCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCircleButton(
          assetPath: Assets.assetsIconsApple,
          onTap: cubit.signUpWithApple,
        ),
        16.pw,
        SocialCircleButton(
          assetPath: Assets.assetsIconsGoogle,
          onTap: cubit.signUpWithGoogle,
        ),
        16.pw,
        GestureDetector(
          onTap: () => context.push(AppRoutes.registration),
          child: CircleAvatar(
            radius: 24.r,
            backgroundColor: AppColors.primaryColor,
            child: Center(
                child: Icon(
              Icons.email,
              size: 24,
              color: AppColors.white,
            )),
          ),
        ),
      ],
    );
  }
}
