import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileDataUsecase getProfileDataUseCase;

  ProfileCubit(this.getProfileDataUseCase)
      : super(ProfileState(userProfileModel: UserRegistrationData())) {
    getProfile();
  }

  Future<void> getProfile() async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
    ));

    final result = await getProfileDataUseCase.call(unit);

    result.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: failure,
      ));
    }, (userProfile) {
      emit(state.copyWith(
        isLoading: false,
        userProfileModel: userProfile,
        settingsOptions: _buildSettingsOptions(),
        helpAndContact: _buildHelpOptions(),
        streamerOptions: _buildTradeStreamerOptions(),
      ));
    });
  }

  List<Map<String, dynamic>> _buildSettingsOptions() {
    return [
      {
        "icon": Assets.assetsIconsMessage,
        "title": "chat".tr(),
      },
      {
        "icon": Assets.assetsIconsCard,
        "title": "paymentMethod".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.payments);
        },
      },
      {
        "icon": Assets.assetsIconsMapPoint,
        "title": "addresses".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.newAddress);
        },
      },
    ];
  }

  List<Map<String, dynamic>> _buildTradeStreamerOptions() {
    return [
      {
        "icon": Assets.assetsIconsUsersGroupRoundedIcon,
        "title": "Invite a friend and get up to 10,000 ₽\nBalance: 300 ₽".tr(),
      },
      {
        "icon": Assets.assetsIconsStar2,
        "title": "My reviews".tr(),
      },
      {
        "icon": Assets.assetsIconsMessage,
        "title": "Chat".tr(),
      },
      {
        "icon": Assets.assetsImagesAnalyticsIcon,
        "title": "Analytics".tr(),
      },
      {
        "icon": Assets.assetsImagesDeliveryIcon,
        "title": "Delivery settings".tr(),
      },
    ];
  }

  List<Map<String, dynamic>> _buildHelpOptions() {
    return [
      {
        "icon": Assets.assetsIconsLetterOpened,
        "title": "contactUs".tr(),
      },
      {
        "icon": Assets.assetsIconsDangerTriangle,
        "title": "reportAbuse".tr(),
      },
      {
        "icon": Assets.assetsIconsInfoCircle,
        "title": "privacyPolicy".tr(),
      },
      {
        "icon": Assets.assetsIconsFile,
        "title": "termsConditions".tr(),
      },
    ];
  }
}
