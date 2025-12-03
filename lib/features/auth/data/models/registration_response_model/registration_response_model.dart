// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response_model.freezed.dart';
part 'registration_response_model.g.dart';

@freezed
class RegistrationResponseModel with _$RegistrationResponseModel {
  const factory RegistrationResponseModel({
    String? message,
    RegistrationResponseData? data,
    @JsonKey(name: 'user_id') int? userId,
  }) = _RegistrationResponseModel;

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseModelFromJson(json);
}

@freezed
class RegistrationResponseData with _$RegistrationResponseData {
  const factory RegistrationResponseData({
    String? email,
    String? name,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    String? country,
    @JsonKey(name: 'age_confirmation') bool? ageConfirmation,
    @JsonKey(name: 'terms_agreement') bool? termsAgreement,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    int? id,
    @JsonKey(name: 'personal_rating') int? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
  }) = _RegistrationResponseData;

  factory RegistrationResponseData.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseDataFromJson(json);
}
