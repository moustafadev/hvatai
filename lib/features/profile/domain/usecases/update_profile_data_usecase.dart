import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/user_profile_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class UpdateProfileDataUsecase
    implements UseCase<UserProfileModel, UpdateProfileParams> {
  final ProfileRepository _profileRepository;

  UpdateProfileDataUsecase(this._profileRepository);

  @override
  Future<Either<String, UserProfileModel>> call(UpdateProfileParams params) {
    return _profileRepository.updateProfileData(params);
  }
}

class UpdateProfileParams {
  final String name;
  final String lastName;
  final String email;
  final String phone; // سيتم التعامل معها كسلسلة نصية دائماً
  final bool sms;
  final bool push;
  final bool sendEmail;
  final String fcmToken;
  final String gender;
  final String country;

  UpdateProfileParams({
    required this.name,
    required this.lastName,
    required this.email,
    required this.phone, // مطلوب الآن وليس optional
    required this.gender,
    required this.country,
    required this.sms,
    required this.push,
    required this.sendEmail,
    required this.fcmToken,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "last_name": lastName,
      "email": email,
      "phone": '90987678887',
      "gender": gender.toLowerCase(),
      "country": country,
      "sms": sms,
      "push": push,
      "send_email": sendEmail,
      "fcm_token": 'fcmToken',
    };
  }
}
