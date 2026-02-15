part of '../profile.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'termsAndConditions'.tr(),
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
