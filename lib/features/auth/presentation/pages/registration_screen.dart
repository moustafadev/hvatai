part of '../auth.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<RegistrationCubit>(),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: RegistrationForm(),
          ),
        ),
      ),
    );
  }
}
