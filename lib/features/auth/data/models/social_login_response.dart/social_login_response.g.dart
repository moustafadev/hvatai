// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialLoginResponseImpl _$$SocialLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SocialLoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocialLoginResponseImplToJson(
        _$SocialLoginResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$SocialLoginDataImpl _$$SocialLoginDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginDataImpl(
      user: json['user'] == null
          ? null
          : UserRegistrationData.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
    );

Map<String, dynamic> _$$SocialLoginDataImplToJson(
        _$SocialLoginDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };
