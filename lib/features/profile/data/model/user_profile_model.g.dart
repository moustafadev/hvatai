// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileModelImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileModelImplToJson(
        _$UserProfileModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      termsAgreement: (json['terms_agreement'] as num?)?.toInt(),
      ageConfirmation: (json['age_confirmation'] as num?)?.toInt(),
      role: json['role'] as String?,
      image: json['image'] as String?,
      imageBusiness: json['image_business'] as String?,
      description: json['description'] as String?,
      lang: json['lang'] as String?,
      businessId: (json['business_id'] as num?)?.toInt(),
      visibility: json['visibility'] as String?,
      sms: json['sms'] as String?,
      push: json['push'] as String?,
      sendEmail: json['send_email'] as String?,
      status: json['status'] as String?,
      fcmTokens: (json['fcm_tokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      emailVerifiedAt: json['email_verified_at'] as String?,
      address: json['address'] as String?,
      personalRating: (json['personal_rating'] as num?)?.toInt(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      businessRating: (json['business_rating'] as num?)?.toInt(),
      businessRatingCount: (json['business_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'country': instance.country,
      'terms_agreement': instance.termsAgreement,
      'age_confirmation': instance.ageConfirmation,
      'role': instance.role,
      'image': instance.image,
      'image_business': instance.imageBusiness,
      'description': instance.description,
      'lang': instance.lang,
      'business_id': instance.businessId,
      'visibility': instance.visibility,
      'sms': instance.sms,
      'push': instance.push,
      'send_email': instance.sendEmail,
      'status': instance.status,
      'fcm_tokens': instance.fcmTokens,
      'email_verified_at': instance.emailVerifiedAt,
      'address': instance.address,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'business_rating': instance.businessRating,
      'business_rating_count': instance.businessRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };
