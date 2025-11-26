import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/sign_out_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileDataUsecase getProfileDataUseCase;
  final SignOutUsecase signOutUsecase;

  ProfileCubit(
    this.getProfileDataUseCase,
    this.signOutUsecase,
  ) : super(ProfileState(userProfileModel: UserRegistrationData()));

  Future<void> signOut(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await signOutUsecase.call(unit);

    result.fold(
      (failure) {
        emit(
            state.copyWith(isLoading: false, errorMessage: failure.toString()));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        context.go(AppRoutes.socialLogin);
      },
    );
  }

  void updateUserData(UserRegistrationData updatedUser) {
    final currentUser = state.userProfileModel;

    final mergedUser = currentUser.copyWith(
      firstName: updatedUser.firstName ?? currentUser.firstName,
      lastName: updatedUser.lastName ?? currentUser.lastName,
      email: updatedUser.email ?? currentUser.email,
      phone: updatedUser.phone ?? currentUser.phone,
      country: updatedUser.country ?? currentUser.country,
      gender: updatedUser.gender ?? currentUser.gender,
      image: updatedUser.image ?? currentUser.image,
      walletBalance: updatedUser.walletBalance ?? currentUser.walletBalance,
      personalRating: updatedUser.personalRating ?? currentUser.personalRating,
      role: updatedUser.role ?? currentUser.role,
    );

    emit(state.copyWith(userProfileModel: mergedUser));
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
         "screen": (BuildContext context) {
          ChatsCubit.get(context).getChats();
          // ChatsCubit.get(context).getSupportChat();
          context.push('${AppRoutes.chatRoot}/${AppRoutes.chat}');
        },
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
        "screen": (BuildContext context) {
          context.push(AppRoutes.inviteFriends);
        },
      },
      {
        "icon": Assets.assetsIconsStar2,
        "title": "myReviews".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.reviewCompany);
        },
      },
      {
        "icon": Assets.assetsIconsMessage,
        "title": "chat".tr(),
        "screen": (BuildContext context) {
          ChatsCubit.get(context).getChats();
          // ChatsCubit.get(context).getSupportChat();
          context.push('${AppRoutes.chatRoot}/${AppRoutes.chat}');
        },
      },
      {
        "icon": Assets.assetsImagesAnalyticsIcon,
        "title": "analytics".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.analytics);
        },
      },
      {
        "icon": Assets.assetsImagesDeliveryIcon,
        "title": "deliverySettings".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.newAddress);
        },
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
