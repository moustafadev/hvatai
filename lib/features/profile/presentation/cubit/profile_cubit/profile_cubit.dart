import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
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
        streamerOptions: _buildTradeStreamerOptions(),
      ));
    });
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

  void updateRole(bool isSeller) {
    emit(state.copyWith(isSeller: isSeller));
  }

  Future<void> pickAndUpdateImage(
    BuildContext context,
    ImageSource source,
  ) async {
    debugPrint(
        '📸 [ProfileCubit] Starting image pick - source: ${source.name}');
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null && context.mounted) {
        debugPrint(
            '✅ [ProfileCubit] Image picked successfully - path: ${pickedFile.path}');
        await updateProfileImage(context, pickedFile.path);
      } else {
        debugPrint('⚠️ [ProfileCubit] No image picked or context not mounted');
      }
    } catch (e, stackTrace) {
      debugPrint('❌ [ProfileCubit] Error picking image: $e');
      debugPrint('Stack trace: $stackTrace');
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
    debugPrint('🔄 [ProfileCubit] Starting image update');
    debugPrint('   - Image path: $imagePath');
    debugPrint('   - User firstName: ${user.firstName}');
    debugPrint('   - User lastName: ${user.lastName}');

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final updatedUser = user.copyWith(image: imagePath);
    debugPrint('📦 [ProfileCubit] Preparing form data...');
    final formData = await _prepareProfileFormData(updatedUser);
    debugPrint('✅ [ProfileCubit] Form data prepared');

    debugPrint('🌐 [ProfileCubit] Calling updateProfileDataUseCase...');
    final result = await updateProfileDataUseCase.call(
      UpdateProfileParams(formData: formData),
    );

    result.fold(
      (failure) {
        debugPrint('❌ [ProfileCubit] Update failed: $failure');
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
        if (context.mounted) {
          showFloatingMessageError('somethingWentWrong'.tr());
        }
      },
      (updatedUserData) {
        debugPrint('✅ [ProfileCubit] Update successful');
        debugPrint('   - Updated user image: ${updatedUserData.image}');
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

  Future<FormData> _prepareProfileFormData(UserRegistrationData params) async {
    debugPrint('📋 [ProfileCubit] _prepareProfileFormData - Starting');
    final dataMap = Map<String, dynamic>.from(params.toJson());
    dataMap.remove('phone');
    debugPrint('   - Removed phone from dataMap');

    dataMap['terms_agreement'] = params.agreedToTerms ?? false ? 1 : 0;
    dataMap['age_confirmation'] = params.isAbove18 ?? false ? 1 : 0;
    debugPrint('   - terms_agreement: ${dataMap['terms_agreement']}');
    debugPrint('   - age_confirmation: ${dataMap['age_confirmation']}');

    MultipartFile? imageFile;
    if (params.image != null && File(params.image!).existsSync()) {
      debugPrint('   - Image path exists, preparing image file...');
      imageFile = await _prepareImageFile(params.image);
      debugPrint('   - Image file prepared: ${imageFile != null}');
    } else {
      debugPrint('   - Image path is null or file does not exist');
    }

    if (imageFile != null) {
      dataMap['image'] = imageFile;
      debugPrint('   - Added image to dataMap');
    } else {
      dataMap.remove('image');
      debugPrint('   - Removed image from dataMap');
    }

    debugPrint('✅ [ProfileCubit] _prepareProfileFormData - Completed');
    return FormData.fromMap(dataMap);
  }

  Future<File> compressImage(File file, {int quality = 70}) async {
    final originalSize = await file.length();
    debugPrint('🗜️ [ProfileCubit] compressImage - Starting');
    debugPrint('   - Original file: ${file.path}');
    debugPrint(
        '   - Original size: ${(originalSize / 1024).toStringAsFixed(2)} KB');
    debugPrint('   - Quality: $quality');

    final targetPath = file.absolute.path.replaceAll('.jpg', '_compressed.jpg');
    debugPrint('   - Target path: $targetPath');

    final result = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      targetPath,
      quality: quality,
      minWidth: 1080,
      minHeight: 1080,
    );

    if (result != null) {
      final compressedFile = File(result.path);
      final compressedSize = await compressedFile.length();
      debugPrint('✅ [ProfileCubit] compressImage - Completed');
      debugPrint('   - Compressed file: ${compressedFile.path}');
      debugPrint(
          '   - Compressed size: ${(compressedSize / 1024).toStringAsFixed(2)} KB');
      debugPrint(
          '   - Size reduction: ${((1 - compressedSize / originalSize) * 100).toStringAsFixed(1)}%');
      return compressedFile;
    } else {
      debugPrint(
          '⚠️ [ProfileCubit] compressImage - Compression returned null, using original');
      return file;
    }
  }

  Future<MultipartFile?> _prepareImageFile(String? imagePath) async {
    debugPrint('🖼️ [ProfileCubit] _prepareImageFile - Starting');
    debugPrint('   - Image path: $imagePath');

    if (imagePath == null || imagePath.isEmpty) {
      debugPrint(
          '❌ [ProfileCubit] _prepareImageFile - Image path is null or empty');
      return null;
    }

    try {
      File file = File(imagePath);
      if (!await file.exists()) {
        debugPrint('❌ [ProfileCubit] _prepareImageFile - File does not exist');
        return null;
      }

      final initialSize = await file.length();
      debugPrint(
          '   - Initial file size: ${(initialSize / 1024 / 1024).toStringAsFixed(2)} MB');

      int quality = 85;
      int compressionRound = 1;
      while (await file.length() > 1 * 1024 * 1024 && quality > 30) {
        debugPrint(
            '   - Compression round $compressionRound: size > 1MB, quality: $quality');
        file = await compressImage(file, quality: quality);
        quality -= 15;
        compressionRound++;
      }

      final afterLoopSize = await file.length();
      if (afterLoopSize > 2 * 1024 * 1024) {
        debugPrint(
            '   - Final compression: size still > 2MB, applying quality 50');
        file = await compressImage(file, quality: 50);
        final finalSize = await file.length();
        if (finalSize > 2 * 1024 * 1024) {
          debugPrint(
              '❌ [ProfileCubit] _prepareImageFile - File still too large after compression: ${(finalSize / 1024 / 1024).toStringAsFixed(2)} MB');
          return null;
        }
        debugPrint(
            '✅ [ProfileCubit] _prepareImageFile - Final size after compression: ${(finalSize / 1024 / 1024).toStringAsFixed(2)} MB');
      } else {
        debugPrint(
            '✅ [ProfileCubit] _prepareImageFile - Size acceptable: ${(afterLoopSize / 1024 / 1024).toStringAsFixed(2)} MB');
      }

      final filename = file.path.split('/').last;
      debugPrint('   - Creating MultipartFile with filename: $filename');
      final multipartFile =
          MultipartFile.fromFile(file.path, filename: filename);
      debugPrint('✅ [ProfileCubit] _prepareImageFile - Completed successfully');
      return multipartFile;
    } catch (e, stackTrace) {
      debugPrint('❌ [ProfileCubit] _prepareImageFile - Error: $e');
      debugPrint('Stack trace: $stackTrace');
      return null;
    }
  }
}
