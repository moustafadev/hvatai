// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationDataImpl _$$UserRegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationDataImpl(
      firstName: json['name'] as String?,
      lastName: json['last_name'] as String?,
      googleId: json['google_id'] as String?,
      appleId: json['apple_id'] as String?,
      passwordConfirmation: json['password_confirmation'] as String?,
      agreedToTerms: json['terms_agreement'] as bool?,
      isAbove18: json['age_confirmation'] as bool?,
      email: json['email'] as String?,
      token: json['token'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      street: json['street'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
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
      floor: json['Floor'] as String?,
      frontDoor: json['Front_door'] as String?,
      intercomCode: json['Intercom_code'] as String?,
      apartment: json['Apartment'] as String?,
      isPrimary: (json['is_primary'] as num?)?.toInt(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      detailedInterests: (json['detailedInterests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserRegistrationDataImplToJson(
        _$UserRegistrationDataImpl instance) =>
    <String, dynamic>{
      'name': instance.firstName,
      'last_name': instance.lastName,
      'google_id': instance.googleId,
      'apple_id': instance.appleId,
      'password_confirmation': instance.passwordConfirmation,
      'terms_agreement': instance.agreedToTerms,
      'age_confirmation': instance.isAbove18,
      'email': instance.email,
      'token': instance.token,
      'password': instance.password,
      'gender': instance.gender,
      'id': instance.id,
      'user_id': instance.userId,
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'phone': instance.phone,
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
      'Floor': instance.floor,
      'Front_door': instance.frontDoor,
      'Intercom_code': instance.intercomCode,
      'Apartment': instance.apartment,
      'is_primary': instance.isPrimary,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'interests': instance.interests,
      'detailedInterests': instance.detailedInterests,
    };
