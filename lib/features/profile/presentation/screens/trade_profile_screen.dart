part of '../profile.dart';

class TradeProfileScreen extends StatelessWidget {
  const TradeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<EditProfileCubit>(),
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
                    CustomDropdown(
                      hintText: 'Trade',
                      isRequired: false,
                      value: state.type,
                      onChanged: cubit.setType,
                      items: const ['Trade', 'Buyer', 'Seller']
                          .map((val) => DropdownMenuItem(
                                value: val,
                                child: Text(val),
                              ))
                          .toList(),
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
                      text: 'Become a seller'.tr(),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.grey,
                    ),
                    2.ph,
                    CustomText(
                      text: 'Low commission'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    2.ph,
                    CustomText(
                      text:
                          'Grab!\'s 8% commission is one of\n the lowest in the industry.'
                              .tr(),
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
                        color: AppColors.primaryColor,
                        title: 'Get started'.tr(),
                        onPressed: () {},
                      ),
                    ),
                    60.ph
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
