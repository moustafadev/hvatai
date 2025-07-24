part of '../auth.dart';

class SocialsLoginScreen extends StatelessWidget {
  const SocialsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SocialLoginCubit>(
      create: (context) => locator<SocialLoginCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        body: SafeArea(
          bottom: false,
          child: CustomBackgroundScaffold(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TopBar(),
                  Image(image: AssetImage(Assets.assetsImagesBackground)),
                  20.ph,
                  TextSection(),
                  20.ph,
                  ActionButtons(),
                  20.ph,
                  TermsAndPrivacy(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
