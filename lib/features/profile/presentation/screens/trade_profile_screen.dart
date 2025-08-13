part of '../profile.dart';

class TradeProfileScreen extends StatelessWidget {
  const TradeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            final cubit = context.read<EditProfileCubit>();
            final user = state.user;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'profileType'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomText(
                        text: 'currentProfileType'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                      8.ph,
                      CustomTextField(
                        hintText: 'profileType'.tr(),
                        initialValue: user.role == 'business_user'
                            ? 'sellerProfile'.tr()
                            : 'tradeProfile'.tr(),
                        keyboardType: TextInputType.text,
                        isRequired: false,
                        readOnly: true,
                      ),
                      16.ph,
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                          Assets.assetsImagesProfileAdvertisementImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'becomeSeller'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grey,
                      ),
                      2.ph,
                      CustomText(
                        text: 'lowCommission'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      2.ph,
                      CustomText(
                        text: 'lowCommissionDescription'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                        color: AppColors.grey,
                      ),
                      16.ph,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 90,
                        ),
                        child: CustomButton(
                          isLoading: state.isLoading,
                          color: AppColors.primaryColor,
                          title: 'startSelling'.tr(),
                          onPressed: () {
                            cubit.updateNewField('role', 'business_user');
                            cubit.updateProfileType(context);
                          },
                        ),
                      ),
                      60.ph
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
