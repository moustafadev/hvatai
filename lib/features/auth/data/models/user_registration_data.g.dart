// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationDataImpl _$$UserRegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationDataImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      token: json['token'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      house: json['house'] as String?,
      apartment: json['apartment'] as String?,
      entrance: json['entrance'] as String?,
      index: json['index'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      detailedInterests: (json['detailedInterests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isAbove18: json['isAbove18'] as bool?,
      agreedToTerms: json['agreedToTerms'] as bool?,
    );

Map<String, dynamic> _$$UserRegistrationDataImplToJson(
        _$UserRegistrationDataImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'gender': instance.gender,
      'token': instance.token,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'apartment': instance.apartment,
      'entrance': instance.entrance,
      'index': instance.index,
      'interests': instance.interests,
      'detailedInterests': instance.detailedInterests,
      'isAbove18': instance.isAbove18,
      'agreedToTerms': instance.agreedToTerms,
    };
