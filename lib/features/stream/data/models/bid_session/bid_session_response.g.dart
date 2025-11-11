// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidSessionResponseImpl _$$BidSessionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionResponseImpl(
      success: json['success'] as bool,
      data: json['data'] as Map<String, dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BidSessionResponseImplToJson(
        _$BidSessionResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
