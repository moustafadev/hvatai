// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      message: json['message'] as String?,
      isSetup: json['is_setup'] as bool?,
      token: json['token'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'is_setup': instance.isSetup,
      'token': instance.token,
      'user_id': instance.userId,
    };
