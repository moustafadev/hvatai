// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_bidding_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToggleBiddingResponseModelImpl _$$ToggleBiddingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleBiddingResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ToggleBiddingDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToggleBiddingResponseModelImplToJson(
        _$ToggleBiddingResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$ToggleBiddingDataModelImpl _$$ToggleBiddingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleBiddingDataModelImpl(
      hasSession: json['has_session'] as bool?,
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      startingBid: _parseDouble(json['starting_bid']),
      canBid: json['can_bid'] as bool?,
      biddingEnabled: json['bidding_enabled'] as bool?,
      isActive: json['is_active'] as bool?,
      bidSession: json['bid_session'] == null
          ? null
          : ToggleBiddingSessionModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
      remainingSeconds: (json['remaining_seconds'] as num?)?.toInt(),
      isActiveSession: json['is_active_session'] as bool?,
      hasEnded: json['has_ended'] as bool?,
    );

Map<String, dynamic> _$$ToggleBiddingDataModelImplToJson(
        _$ToggleBiddingDataModelImpl instance) =>
    <String, dynamic>{
      'has_session': instance.hasSession,
      'stream_product_id': instance.streamProductId,
      'product': instance.product,
      'starting_bid': instance.startingBid,
      'can_bid': instance.canBid,
      'bidding_enabled': instance.biddingEnabled,
      'is_active': instance.isActive,
      'bid_session': instance.bidSession,
      'remaining_seconds': instance.remainingSeconds,
      'is_active_session': instance.isActiveSession,
      'has_ended': instance.hasEnded,
    };

_$ToggleBiddingSessionModelImpl _$$ToggleBiddingSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleBiddingSessionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      highestBidId: (json['highest_bid_id'] as num?)?.toInt(),
      sessionDurationSeconds:
          (json['session_duration_seconds'] as num?)?.toInt(),
      sessionEndTime: json['session_end_time'] == null
          ? null
          : DateTime.parse(json['session_end_time'] as String),
      status: json['status'] as String?,
      winnerDeterminedAt: json['winner_determined_at'] == null
          ? null
          : DateTime.parse(json['winner_determined_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ToggleBiddingSessionModelImplToJson(
        _$ToggleBiddingSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'stream_product_id': instance.streamProductId,
      'user_id': instance.userId,
      'highest_bid_id': instance.highestBidId,
      'session_duration_seconds': instance.sessionDurationSeconds,
      'session_end_time': instance.sessionEndTime?.toIso8601String(),
      'status': instance.status,
      'winner_determined_at': instance.winnerDeterminedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
