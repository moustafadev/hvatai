import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(EditProfileState());

  void setNewGender(String? gender) => emit(state.copyWith(gender: gender!));

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
    }
  }

  Future<void> loadProfile() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(Duration(milliseconds: 500));

    emit(state.copyWith(
      firstName: "Mock User",
      // changeInfoProfile: _buildChangeInfoProfile(),
      isLoading: false,
    ));
  }

  // ignore: unused_element
  List<Map<String, dynamic>> _buildChangeInfoProfile() {
    return [
      {
        "icon": Assets.assetsIconsEmail,
        "title": "changeEmail".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.changeEmail,
          );
        },
      },
      {
        "icon": Assets.assetsIconsPasswordMinimalisticInput,
        "title": "changePassword".tr(),
        "screen": (BuildContext context) {
          context.push(
            AppRoutes.changePassword,
          );
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

  // ignore: unused_element
}
