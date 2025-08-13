part of '../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as UserRegistrationData?;

    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocProvider(
        create: (context) => locator<ProfileCubit>()..getProfile(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (extra != null) {
              context.read<ProfileCubit>().updateUserData(extra);
            }

            debugPrint('Current role: ${state.userProfileModel.role}');
            return state.userProfileModel.role == 'business_user'
                ? const TradeProfileDetailScreen()
                : const BodyNormalProfile();
          },
        ),
      ),
    );
  }
}
