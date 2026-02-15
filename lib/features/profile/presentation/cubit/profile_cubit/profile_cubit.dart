
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/home/presentation/home.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/sign_out_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:image_picker/image_picker.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileDataUsecase getProfileDataUseCase;
  final SignOutUsecase signOutUsecase;
  final UpdateProfileDataUsecase updateProfileDataUseCase;

  ProfileCubit(
    this.getProfileDataUseCase,
    this.signOutUsecase,
    this.updateProfileDataUseCase,
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
      image: updatedUser.image?.isNotEmpty == true
          ? updatedUser.image
          : currentUser.image,
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
        helpAndContact: _buildHelpOptions(),
      ));
    });
  }

  List<Map<String, dynamic>> _buildHelpOptions() {
    return [
      {
        "icon": Assets.assetsIconsLetterOpened,
        "title": "contactUs".tr(),
        "screen": (BuildContext context) async {
          final cubit = ChatsCubit.get(context);

          // Navigate immediately with existing chat ID or 0 as placeholder
          final existingChatId = cubit.state.supportChat?.id ?? 0;
          inChat = true;

          context.push(
            '${AppRoutes.chatRoot}/${AppRoutes.chatSupportDetails}',
            extra: {
              'chatId': existingChatId,
            },
          );
        },
      },
      {
        "icon": Assets.assetsIconsDangerTriangle,
        "title": "reportAbuse".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.reportViolation);
        },
      },
      {
        "icon": Assets.assetsIconsInfoCircle,
        "title": "privacyPolicy".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.privacyPolicyProfile);
        },
      },
      {
        "icon": Assets.assetsIconsFile,
        "title": "termsConditions".tr(),
        "screen": (BuildContext context) {
          context.push(AppRoutes.termsAndConditions);
        },
      },
    ];
  }

  Future<void> pickAndUpdateImage(
    BuildContext context,
    ImageSource source,
  ) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null && context.mounted) {
        await updateProfileImage(context, pickedFile.path);
      }
    } catch (e) {
      if (context.mounted) {
        showFloatingMessageError('somethingWentWrong'.tr());
      }
    }
  }

  Future<void> updateProfileImage(
    BuildContext context,
    String imagePath,
  ) async {
    final user = state.userProfileModel;
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final updatedUser = user.copyWith(image: imagePath);
    final result = await updateProfileDataUseCase.call(
      UpdateProfileParams(userRegistrationData: updatedUser),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
        if (context.mounted) {
          showFloatingMessageError('somethingWentWrong'.tr());
        }
      },
      (updatedUserData) {
        emit(state.copyWith(
          isLoading: false,
          userProfileModel: updatedUserData,
        ));
        if (context.mounted) {
          showFloatingMessageSuccess('profileUpdated'.tr());
        }
      },
    );
  }
}
