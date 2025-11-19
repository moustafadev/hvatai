// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_placed_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidPlacedEventImpl _$$BidPlacedEventImplFromJson(Map<String, dynamic> json) =>
    _$BidPlacedEventImpl(
      bid: BidStreamItem.fromJson(json['bid'] as Map<String, dynamic>),
      streamProduct: json['stream_product'] == null
          ? null
          : StreamProductModel.fromJson(
              json['stream_product'] as Map<String, dynamic>),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      bidSession: json['bid_session'] == null
          ? null
          : BidPlacedSessionModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidPlacedEventImplToJson(
        _$BidPlacedEventImpl instance) =>
    <String, dynamic>{
      'bid': instance.bid,
      'stream_product': instance.streamProduct,
      'timestamp': instance.timestamp?.toIso8601String(),
      'bid_session': instance.bidSession,
    };

_$BidPlacedSessionModelImpl _$$BidPlacedSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BidPlacedSessionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      remainingSeconds: (json['remaining_seconds'] as num?)?.toInt(),
      sessionEndsAt: json['session_ends_at'] == null
          ? null
          : DateTime.parse(json['session_ends_at'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$BidPlacedSessionModelImplToJson(
        _$BidPlacedSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'remaining_seconds': instance.remainingSeconds,
      'session_ends_at': instance.sessionEndsAt?.toIso8601String(),
      'status': instance.status,
    };
