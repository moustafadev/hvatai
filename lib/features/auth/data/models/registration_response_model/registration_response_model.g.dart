// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationResponseModelImpl _$$RegistrationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationResponseModelImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RegistrationResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegistrationResponseModelImplToJson(
        _$RegistrationResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'user_id': instance.userId,
    };

_$RegistrationResponseDataImpl _$$RegistrationResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationResponseDataImpl(
      email: json['email'] as String?,
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      ageConfirmation: json['age_confirmation'] as bool?,
      termsAgreement: json['terms_agreement'] as bool?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
      personalRating: (json['personal_rating'] as num?)?.toInt(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegistrationResponseDataImplToJson(
        _$RegistrationResponseDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'country': instance.country,
      'age_confirmation': instance.ageConfirmation,
      'terms_agreement': instance.termsAgreement,
      'email_verified_at': instance.emailVerifiedAt,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };
