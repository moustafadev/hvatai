part of '../../auth.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: 'termsConditions11'.tr(),
          textAlign: TextAlign.center,
          fontSize: 12.sp,
          color: Colors.grey,
        ),
        SizedBox(height: 5.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(fontSize: 14.0.sp),
            children: [
              TextSpan(
                text: '${'termsService'.tr()} ',
                recognizer: TapGestureRecognizer()
                  ..onTap = () => context.push(AppRoutes.termAndConditions),
                style: TextStyle(
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: [AppColors.purple, AppColors.pink],
                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
              TextSpan(
                text: '${'and2'.tr()} ',
                style: const TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'privacy2'.tr(),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => context.push(AppRoutes.privacyPolicy),
                style: TextStyle(
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: [AppColors.purple, AppColors.pink],
                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
