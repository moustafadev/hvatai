part of '../profile.dart';

class TradeProfileScreen extends StatelessWidget {
  const TradeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ProfileCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: AppBar(
          backgroundColor: AppColors.grey100,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body:
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          final cubit = context.read<ProfileCubit>();
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
              Image.asset(
                Assets.assetsImagesProfileAdvertisementImage,
                width: double.infinity,
              ),
            ],
          );
        }),
      ),
    );
  }
}
