// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteCodeResponseImpl _$$InviteCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteCodeResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : InviteCodeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InviteCodeResponseImplToJson(
        _$InviteCodeResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$InviteCodeDataImpl _$$InviteCodeDataImplFromJson(Map<String, dynamic> json) =>
    _$InviteCodeDataImpl(
      inviteCode: json['invite_code'] as String,
      joinedUsersCount: (json['joined_users_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InviteCodeDataImplToJson(
        _$InviteCodeDataImpl instance) =>
    <String, dynamic>{
      'invite_code': instance.inviteCode,
      'joined_users_count': instance.joinedUsersCount,
    };
