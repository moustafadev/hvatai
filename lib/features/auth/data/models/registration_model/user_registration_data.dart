// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

part 'user_registration_data.freezed.dart';
part 'user_registration_data.g.dart';

bool? intToBool(dynamic value) {
  if (value == null) return null;
  if (value is bool) return value;
  if (value is int) return value == 1;
  return null;
}

String? toStringNullable(dynamic value) => value?.toString();

String? _imageFromJson(String? value) {
  if (value == null || value.isEmpty) return value;
  // Avoid double-prefixing if the value is already a full URL
  if (value.startsWith('http')) return value;
  // If value contains '/', prepend domain only; otherwise prepend domain + "storage"
  if (value.contains('/')) {
    return "${ServerConfig.domen}storage/$value";
  } else {
    return "${ServerConfig.domen}storage/$value";
  }
}

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    @JsonKey(name: 'name', includeIfNull: false) String? firstName,
    @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
    @JsonKey(name: 'google_id', includeIfNull: false) String? googleId,
    @JsonKey(name: 'apple_id', includeIfNull: false) String? appleId,
    @JsonKey(name: 'password_confirmation', includeIfNull: false)
    String? passwordConfirmation,
    @JsonKey(name: 'current_password', includeIfNull: false)
    String? currentPassword,
    @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
    bool? agreedToTerms,
    @JsonKey(
        name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
    bool? isAbove18,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? gender,
    @JsonKey(includeIfNull: false) int? id,
    @JsonKey(name: 'user_id', includeIfNull: false) int? userId,
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeIfNull: false) int? index,
    @JsonKey(includeIfNull: false) String? city,
    @JsonKey(includeIfNull: false) String? country,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? role,
    @JsonKey(includeIfNull: false, fromJson: _imageFromJson) String? image,
    @JsonKey(
        name: 'image_business', includeIfNull: false, fromJson: _imageFromJson)
    String? imageBusiness,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) String? lang,
    @JsonKey(name: 'business_id', includeIfNull: false) int? businessId,
    @JsonKey(includeIfNull: false) String? visibility,
    @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? sms,
    @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? push,
    @JsonKey(
        name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
    String? sendEmail,
    @JsonKey(includeIfNull: false) String? status,
    @JsonKey(name: 'fcm_tokens', includeIfNull: false) List<String>? fcmTokens,
    @JsonKey(name: 'email_verified_at', includeIfNull: false)
    String? emailVerifiedAt,
    @JsonKey(includeIfNull: false) String? address,
    @JsonKey(name: 'personal_rating', includeIfNull: false) int? personalRating,
    @JsonKey(name: 'personal_rating_count', includeIfNull: false)
    int? personalRatingCount,
    @JsonKey(name: 'business_rating', includeIfNull: false) int? businessRating,
    @JsonKey(name: 'business_rating_count', includeIfNull: false)
    int? businessRatingCount,
    @JsonKey(name: 'is_favorited', includeIfNull: false) bool? isFavorited,
    @JsonKey(name: 'favorites_count', includeIfNull: false) int? favoritesCount,
    @JsonKey(name: 'Floor', includeIfNull: false) String? floor,
    @JsonKey(name: 'Front_door', includeIfNull: false) String? frontDoor,
    @JsonKey(name: 'Intercom_code', includeIfNull: false) String? intercomCode,
    @JsonKey(name: 'Apartment', includeIfNull: false) String? apartment,
    @JsonKey(name: 'is_primary', includeIfNull: false) int? isPrimary,
    @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? latitude,
    @JsonKey(includeIfNull: false, fromJson: toStringNullable)
    String? longitude,
    @JsonKey(name: 'created_at', includeIfNull: false) String? createdAt,
    @JsonKey(
        name: 'wallet_balance',
        includeIfNull: false,
        fromJson: toStringNullable)
    String? walletBalance,
    @JsonKey(name: 'wallet_id', includeIfNull: false) int? walletId,
    @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
    @JsonKey(includeIfNull: false) List<String>? interests,
    @JsonKey(includeIfNull: false) List<String>? detailedInterests,
    @JsonKey(name: 'subscribers_count', includeIfNull: false)
    int? subscribersCount,
    @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
    int? subscribedUsersCount,
  }) = _UserRegistrationData;

  factory UserRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationDataFromJson(json);
}
