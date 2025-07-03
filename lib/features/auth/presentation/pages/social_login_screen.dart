part of '../auth.dart';

class SocialsLoginScreen extends StatelessWidget {
  const SocialsLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SocialLoginCubit>(
      create: (context) => locator<SocialLoginCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: CustomBackgroundScaffold(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TopBar(),
                  Image(image: AssetImage(Assets.assetsImagesBackground)),
                  SizedBox(height: 20.h),
                  TextSection(),
                  SizedBox(height: 20.h),
                  ActionButtons(),
                  SizedBox(height: 20.h),
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
