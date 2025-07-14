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
          backgroundColor: AppColors.grey100,
          // appBar: AppBar(
          //   backgroundColor: AppColors.grey100,
          //   centerTitle: true,
          //   automaticallyImplyLeading: false,
          //   title: CustomText(
          //     text: 'register'.tr(),
          //     fontSize: 24.sp,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'SFProRounded',
          //     color: AppColors.blackDark,
          //   ),
          //   actions: [
          //     Padding(
          //       padding: EdgeInsets.only(right: 18.h),
          //       child: IconButton(
          //         icon: Icon(Icons.close),
          //         onPressed: () => GoRouter.of(context).pop(),
          //         tooltip: 'Close',
          //         color: AppColors.blackDark,
          //       ),
          //     ),
          //   ],
          // ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: RegistrationForm(),
          ),
        ),
      ),
    );
  }
}
