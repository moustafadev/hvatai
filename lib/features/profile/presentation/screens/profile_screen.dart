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
            if (state.isLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.grey,
              ));
            }

            if (state.errorMessage.isNotEmpty) {
              return Center(child: CustomText(text: state.errorMessage));
            }
            if (extra != null) {
              context.read<ProfileCubit>().updateUserData(extra);
            }

            return state.userProfileModel.role == 'business_user'
                ? const TradeProfileDetailScreen()
                : const BodyNormalProfile();
          },
        ),
      ),
    );
  }
}
