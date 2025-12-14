part of '../profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.user});
  final UserRegistrationData user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<EditProfileCubit>()
        ..initProfileModel(user)
        ..prefillData(),
      child: BlocConsumer<EditProfileCubit, EditProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = context.read<EditProfileCubit>();

            if (state.isLoading) {
              return Scaffold(
                body: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.grey,
                )),
              );
            }

            return Scaffold(
                appBar: AppBar(
                  actions: [
                    TextButton(
                        onPressed: () {
                          if ((state.user.firstName?.isNotEmpty ?? false) &&
                              (state.user.lastName?.isNotEmpty ?? false)) {
                            cubit.submit(context);
                          } else {
                            showFloatingMessageError('fillAllFields'.tr());
                          }
                        },
                        child: CustomText(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.purple,
                            text: 'ready'.tr()))
                  ],
                  leading: GestureDetector(
                    onTap: () {
                      context.pop(state.user);
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  backgroundColor: AppColors.lightGreyBackground,
                  elevation: 0,
                ),
                backgroundColor: AppColors.lightGreyBackground,
                body: SingleChildScrollView(
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
                          initialValue: state.user.firstName,
                          onChanged: (v) => cubit.updateNewField('name', v),
                          hintText: 'firstName'.tr(),
                          isRequired: false,
                        ),
                        12.ph,
                        CustomTextField(
                          initialValue: state.user.lastName,
                          onChanged: (v) => cubit.updateNewField('lastName', v),
                          hintText: 'lastName'.tr(),
                          isRequired: false,
                        ),
                        12.ph,
                        CustomSelectGender(
                          value: _normalizeGender(
                              (state.user.gender?.isEmpty ?? true)
                                  ? user.gender ?? ''
                                  : state.user.gender),
                          onChanged: (val) => cubit.setNewGender(val),
                        ),
                        12.ph,
                        UpdateCountryDropdown(
                          country: (state.user.country == null ||
                                  state.user.country!.isEmpty)
                              ? user.country ?? ''
                              : state.user.country!,
                        ),
                        20.ph,
                        ChangeInfoProfile(),
                        const PaymentAndDelivery(),
                        50.ph,
                        GestureDetector(
                          onTap: () {
                            CustomDialog.show(
                              context,
                              title: 'deleteAccount'.tr(),
                              content: 'deleteAccountWarning'.tr(),
                              confirmText: 'delete'.tr(),
                              isDestructive: true,
                              onConfirm: () {
                                cubit.deleteAccount(context);
                              },
                            );
                          },
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
                                      image:
                                          AssetImage(Assets.assetsIconsTrash),
                                    ),
                                  ),
                                  6.pw,
                                  CustomText(
                                    text: "deleteAccount".tr(),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        30.ph,
                      ],
                    ),
                  ),
                ));
          }),
    );
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
