// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyAuthUserImpl _$$VerifyAuthUserImplFromJson(Map<String, dynamic> json) =>
    _$VerifyAuthUserImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$VerifyAuthUserImplToJson(
        _$VerifyAuthUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'image': instance.image,
    };

_$AuthVerifyResponseImpl _$$AuthVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthVerifyResponseImpl(
      message: json['message'] as String? ?? '',
      token: json['token'] as String? ?? '',
      user: json['user'] == null
          ? null
          : VerifyAuthUser.fromJson(json['user'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      isSetup: json['is_setup'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthVerifyResponseImplToJson(
        _$AuthVerifyResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
      'user': instance.user,
      'user_id': instance.userId,
      'is_setup': instance.isSetup,
    };
