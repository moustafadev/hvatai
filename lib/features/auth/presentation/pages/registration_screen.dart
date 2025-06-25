part of '../auth.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<RegistrationCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: AppBar(
          backgroundColor: AppColors.grey100,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: CustomText(
            text: 'register'.tr(),
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            fontFamily: 'SFProRounded',
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 18.h),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => GoRouter.of(context).pop(),
                tooltip: 'Close',
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: RegistrationForm(),
        ),
      ),
    );
  }
}
