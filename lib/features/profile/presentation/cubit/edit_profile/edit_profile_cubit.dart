import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart'; // استخدمنا UseCase لجلب البيانات
import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this.updateProfileDataUseCase,
    this.getProfileDataUsecase, // Injected
  ) : super(EditProfileState(user: UserProfileModel())) {
    loadProfile();
  }

  final UpdateProfileDataUsecase updateProfileDataUseCase;
  final GetProfileDataUsecase getProfileDataUsecase; // New

  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final newEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final lastNameController = TextEditingController();

  void initProfileModel(UserProfileModel user) {
    emit(state.copyWith(user: user));
  }

  void prefillData() {
    final userData = state.user.data;
    final firstName = userData?.name ?? '';
    final lastName = userData?.lastName ?? '';
    final email = userData?.email ?? '';
    final phone = userData?.phone ?? '';
    final country = userData?.country ?? '';
    final gender = userData?.gender ?? '';

    firstNameController.text = firstName;
    lastNameController.text = lastName;
    emailController.text = email;

    emit(state.copyWith(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      country: country,
      gender: gender,
      sms: userData?.sms == 1,
      push: userData?.push == 1,
      sendEmail: userData?.sendEmail == 1,
    ));
  }

  void setNewGender(String? gender) => emit(state.copyWith(gender: gender!));

  Future<void> loadProfile() async {
    emit(state.copyWith(isLoading: true));
    final result = await getProfileDataUsecase
        .call(unit); // Use API to fetch latest user data

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false));
        showFloatingMessageError(failure);
      },
      (user) {
        emit(state.copyWith(
          user: user,
          isLoading: false,
          changeInfoProfile: _buildChangeInfoProfile(),
        ));
        prefillData(); // ← تحديث الحقول بعد تحميل البيانات
      },
    );
  }

  void updateNewField(String field, String value) {
    switch (field) {
      case 'country':
        emit(state.copyWith(country: value));
        break;
      case 'name':
        emit(state.copyWith(firstName: value));
        break;
      case 'lastName':
        emit(state.copyWith(lastName: value));
        break;
      case 'gender':
        emit(state.copyWith(gender: value));
        break;
      case 'email':
        emit(state.copyWith(email: value));
        break;
      case 'phone':
        emit(state.copyWith(phone: value));
        break;
      case 'image':
        emit(state.copyWith(image: File(value)));
        break;
      case 'imageBusiness':
        emit(state.copyWith(imageBusiness: File(value)));
        break;
    }
  }

  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": "changeEmail".tr(),
        "screen": (BuildContext context) async {
          final result =
              await context.push(AppRoutes.changeEmail, extra: state.user);
          if (result == true) {
            await loadProfile(); // تحديث البيانات عند الرجوع من الشاشة
          }
        },
      },
      {
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.changePassword, extra: state.user.data?.email);
        },
      },
      {
        "icon": Assets.assetsIconsProfileType,
        "title": "profileType".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.tradeProfile);
        },
      },
      {
        "icon": Assets.assetsIconsBell,
        "title": "settingUpNotifications".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.notificationSettings);
        },
      },
    ];
  }

  Future<void> submit(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result =
        await updateProfileDataUseCase.call(state.toUpdateProfileParams());

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError(failure);
      },
      (updatedUser) {
        emit(state.copyWith(
          isLoading: false,
          success: true,
          user: updatedUser,
          firstName: updatedUser.data?.name ?? state.firstName,
          lastName: updatedUser.data?.lastName ?? state.lastName,
          country: updatedUser.data?.country ?? state.country,
          gender: updatedUser.data?.gender ?? state.gender,
          email: updatedUser.data?.email ?? state.email,
        ));

        firstNameController.text = updatedUser.data?.name ?? '';
        lastNameController.text = updatedUser.data?.lastName ?? '';
        newEmailController.text = updatedUser.data?.email ?? '';

        showFloatingMessageSuccess('profileUpdated'.tr());

        context.pop(true); // رجوع مع نتيجة true
      },
    );
  }
}
