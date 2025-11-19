// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_winner_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidWinnerEventImpl _$$BidWinnerEventImplFromJson(Map<String, dynamic> json) =>
    _$BidWinnerEventImpl(
      sessionId: (json['session_id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      winner: json['winner'] == null
          ? null
          : BidWinnerUser.fromJson(json['winner'] as Map<String, dynamic>),
      sessionStatus: json['session_status'] as String?,
      wonAt: json['won_at'] == null
          ? null
          : DateTime.parse(json['won_at'] as String),
    );

Map<String, dynamic> _$$BidWinnerEventImplToJson(
        _$BidWinnerEventImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'stream_id': instance.streamId,
      'stream_product_id': instance.streamProductId,
      'winner': instance.winner,
      'session_status': instance.sessionStatus,
      'won_at': instance.wonAt?.toIso8601String(),
    };

_$BidWinnerUserImpl _$$BidWinnerUserImplFromJson(Map<String, dynamic> json) =>
    _$BidWinnerUserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      bidAmount: _parseDouble(json['bid_amount']),
      bidId: (json['bid_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BidWinnerUserImplToJson(_$BidWinnerUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'bid_amount': instance.bidAmount,
      'bid_id': instance.bidId,
    };
