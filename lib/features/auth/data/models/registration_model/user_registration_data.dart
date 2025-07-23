import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_data.freezed.dart';
part 'user_registration_data.g.dart';

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    @JsonKey(name: 'name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'google_id') String? googleId,
    @JsonKey(name: 'apple_id') String? appleId,
    @JsonKey(name: 'password_confirmation') String? passwordConfirmation,
    @JsonKey(name: 'terms_agreement') bool? agreedToTerms,
    @JsonKey(name: 'age_confirmation') bool? isAbove18,
    String? email,
    String? token,
    String? password,
    String? gender,
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? street,
    String? city,
    String? country,
    String? phone,
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
    @JsonKey(name: 'Floor') String? floor,
    @JsonKey(name: 'Front_door') String? frontDoor,
    @JsonKey(name: 'Intercom_code') String? intercomCode,
    @JsonKey(name: 'Apartment') String? apartment,
    @JsonKey(name: 'is_primary') int? isPrimary,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    List<String>? interests,
    List<String>? detailedInterests,
  }) = _UserRegistrationData;

  factory UserRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationDataFromJson(json);
}
