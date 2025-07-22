part of '../profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.user});
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: CustomText(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.purple,
                    text: 'ready'.tr()))
          ],
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppColors.lightGreyBackground,
          elevation: 0,
        ),
        backgroundColor: AppColors.lightGreyBackground,
        body: SingleChildScrollView(
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              final cubit = context.read<ProfileCubit>();
              if (state.changeInfoProfile.isEmpty) {
                return Center(
                    child: CircularProgressIndicator(
                  color: AppColors.grey,
                ));
              }

              return SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'accountSettings'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomTextField(
                        controller:
                            TextEditingController(text: user.data!.name),
                        hintText: 'firstName'.tr(),
                        isRequired: false,
                      ),
                      12.ph,
                      CustomTextField(
                        controller:
                            TextEditingController(text: user.data!.lastName),
                        hintText: 'lastName'.tr(),
                        isRequired: false,
                      ),
                      12.ph,
                      CustomSelectGender(
                        value: _normalizeGender(user.data!.gender),
                        onChanged: (val) => cubit.setGender(val),
                      ),
                      12.ph,
                      CountryDropdown(
                        country: user.data!.country!,
                      ),
                      12.ph,
                      ChangeInfoProfile(state: state),
                      50.ph,
                      GestureDetector(
                        onTap: () {},
                        child: CustomContainer(
                          height: 40.h,
                          width: double.infinity,
                          borderRadius: BorderRadius.circular(10.r),
                          conColor: AppColors.greyButton,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomContainer(
                                  height: 18.h,
                                  width: 18.w,
                                  image: DecorationImage(
                                    image: AssetImage(Assets.assetsIconsTrash),
                                  ),
                                ),
                                6.pw,
                                CustomText(
                                  text: "deleteAccount".tr(),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  fontFamily: "Manrope",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      12.ph,
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  String? _normalizeGender(String? gender) {
    if (gender == null) return null;
    switch (gender.toLowerCase()) {
      case 'male':
        return 'Male';
      case 'female':
        return 'Female';
      case 'other':
        return 'Other';
      default:
        return null;
    }
  }
}
