// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpRequestResponseImpl _$$OtpRequestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpRequestResponseImpl(
      message: json['message'] as String? ?? '',
      otp: json['otp'] as String? ?? '',
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$OtpRequestResponseImplToJson(
        _$OtpRequestResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'otp': instance.otp,
      'user_id': instance.userId,
    };
