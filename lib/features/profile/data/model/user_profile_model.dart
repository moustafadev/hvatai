import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    String? message,
    UserProfileData? data,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    int? id,
    String? name,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    String? phone,
    String? gender,
    String? country,
    @JsonKey(name: 'terms_agreement') int? termsAgreement,
    @JsonKey(name: 'age_confirmation') int? ageConfirmation,
    String? role,
    String? image,
    @JsonKey(name: 'image_business') String? imageBusiness,
    String? description,
    String? lang,
    @JsonKey(name: 'business_id') int? businessId,
    String? visibility,
    String? sms,
    String? push,
    @JsonKey(name: 'send_email') String? sendEmail,
    String? status,
    @JsonKey(name: 'fcm_tokens') List<String>? fcmTokens,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    String? address,
    @JsonKey(name: 'personal_rating') int? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'business_rating') int? businessRating,
    @JsonKey(name: 'business_rating_count') int? businessRatingCount,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}
