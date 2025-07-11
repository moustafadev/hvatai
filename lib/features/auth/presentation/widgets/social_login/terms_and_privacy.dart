part of '../../auth.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 1,
      children: [
        CustomText(
          text: 'termsConditions11'.tr(),
          textAlign: TextAlign.center,
          fontSize: 12.sp,
          color: AppColors.blackDark,
          fontWeight: FontWeight.w600,
        ),
        GestureDetector(
          onTap: () => context.push(AppRoutes.termAndConditions),
          child: CustomText(
            text: 'termsService'.tr(),
            textAlign: TextAlign.center,
            fontSize: 12.sp,
            color: AppColors.primaryPink,
            fontWeight: FontWeight.w600,
          ),
        ),
        2.pw,
        CustomText(
          text: 'and2'.tr(),
          // textAlign: TextAlign.center,
          fontSize: 12.sp,
          color: AppColors.blackDark,
          fontWeight: FontWeight.w600,
        ),
        2.pw,
        GestureDetector(
          onTap: () => context.push(AppRoutes.privacyPolicy),
          child: Center(
            child: CustomText(
              text: 'privacy2'.tr(),
              textAlign: TextAlign.center,
              fontSize: 12.sp,
              color: AppColors.primaryPink,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        15.ph,
      ],
    );
  }
}
