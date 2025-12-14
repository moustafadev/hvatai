part of '../profile.dart';

class PrivacyPolicyProfileScreen extends StatelessWidget {
  const PrivacyPolicyProfileScreen({super.key});

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
                text: 'Политика конфиденциальности',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
