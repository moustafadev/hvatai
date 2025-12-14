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
      currentPassword: json['current_password'] as String?,
      agreedToTerms: intToBool(json['terms_agreement']),
      isAbove18: intToBool(json['age_confirmation']),
      email: json['email'] as String?,
      token: json['token'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      street: json['street'] as String?,
      index: (json['index'] as num?)?.toInt(),
      city: json['city'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      image: _imageFromJson(json['image'] as String?),
      imageBusiness: _imageFromJson(json['image_business'] as String?),
      description: json['description'] as String?,
      lang: json['lang'] as String?,
      businessId: (json['business_id'] as num?)?.toInt(),
      visibility: json['visibility'] as String?,
      sms: toStringNullable(json['sms']),
      push: toStringNullable(json['push']),
      sendEmail: toStringNullable(json['send_email']),
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
      latitude: toStringNullable(json['latitude']),
      longitude: toStringNullable(json['longitude']),
      createdAt: json['created_at'] as String?,
      walletBalance: toStringNullable(json['wallet_balance']),
      walletId: (json['wallet_id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      detailedInterests: (json['detailedInterests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subscribersCount: (json['subscribers_count'] as num?)?.toInt(),
      subscribedUsersCount: (json['subscribed_users_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserRegistrationDataImplToJson(
        _$UserRegistrationDataImpl instance) =>
    <String, dynamic>{
      if (instance.firstName case final value?) 'name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.googleId case final value?) 'google_id': value,
      if (instance.appleId case final value?) 'apple_id': value,
      if (instance.passwordConfirmation case final value?)
        'password_confirmation': value,
      if (instance.currentPassword case final value?) 'current_password': value,
      if (instance.agreedToTerms case final value?) 'terms_agreement': value,
      if (instance.isAbove18 case final value?) 'age_confirmation': value,
      if (instance.email case final value?) 'email': value,
      if (instance.token case final value?) 'token': value,
      if (instance.password case final value?) 'password': value,
      if (instance.gender case final value?) 'gender': value,
      if (instance.id case final value?) 'id': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.street case final value?) 'street': value,
      if (instance.index case final value?) 'index': value,
      if (instance.city case final value?) 'city': value,
      if (instance.country case final value?) 'country': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.role case final value?) 'role': value,
      if (instance.image case final value?) 'image': value,
      if (instance.imageBusiness case final value?) 'image_business': value,
      if (instance.description case final value?) 'description': value,
      if (instance.lang case final value?) 'lang': value,
      if (instance.businessId case final value?) 'business_id': value,
      if (instance.visibility case final value?) 'visibility': value,
      if (instance.sms case final value?) 'sms': value,
      if (instance.push case final value?) 'push': value,
      if (instance.sendEmail case final value?) 'send_email': value,
      if (instance.status case final value?) 'status': value,
      if (instance.fcmTokens case final value?) 'fcm_tokens': value,
      if (instance.emailVerifiedAt case final value?)
        'email_verified_at': value,
      if (instance.address case final value?) 'address': value,
      if (instance.personalRating case final value?) 'personal_rating': value,
      if (instance.personalRatingCount case final value?)
        'personal_rating_count': value,
      if (instance.businessRating case final value?) 'business_rating': value,
      if (instance.businessRatingCount case final value?)
        'business_rating_count': value,
      if (instance.isFavorited case final value?) 'is_favorited': value,
      if (instance.favoritesCount case final value?) 'favorites_count': value,
      if (instance.floor case final value?) 'Floor': value,
      if (instance.frontDoor case final value?) 'Front_door': value,
      if (instance.intercomCode case final value?) 'Intercom_code': value,
      if (instance.apartment case final value?) 'Apartment': value,
      if (instance.isPrimary case final value?) 'is_primary': value,
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.walletBalance case final value?) 'wallet_balance': value,
      if (instance.walletId case final value?) 'wallet_id': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.interests case final value?) 'interests': value,
      if (instance.detailedInterests case final value?)
        'detailedInterests': value,
      if (instance.subscribersCount case final value?)
        'subscribers_count': value,
      if (instance.subscribedUsersCount case final value?)
        'subscribed_users_count': value,
    };
