// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidSessionResponseImpl _$$BidSessionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionResponseImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : BidSessionData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BidSessionResponseImplToJson(
        _$BidSessionResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$BidSessionDataImpl _$$BidSessionDataImplFromJson(Map<String, dynamic> json) =>
    _$BidSessionDataImpl(
      hasSession: json['has_session'] as bool?,
      stream: json['stream'] == null
          ? null
          : BidSessionStreamModel.fromJson(
              json['stream'] as Map<String, dynamic>),
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
          : BidSessionDetailsModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
      remainingSeconds: (json['remaining_seconds'] as num?)?.toInt(),
      isActiveSession: json['is_active_session'] as bool?,
      hasEnded: json['has_ended'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$BidSessionDataImplToJson(
        _$BidSessionDataImpl instance) =>
    <String, dynamic>{
      'has_session': instance.hasSession,
      'stream': instance.stream,
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
      'message': instance.message,
    };

_$BidSessionStreamModelImpl _$$BidSessionStreamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionStreamModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      status: json['status'] as String?,
      isLive: json['is_live'] as bool?,
      isPublic: json['is_public'] as bool?,
      user: json['user'] == null
          ? null
          : BidSessionStreamUserModel.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidSessionStreamModelImplToJson(
        _$BidSessionStreamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'is_live': instance.isLive,
      'is_public': instance.isPublic,
      'user': instance.user,
    };

_$BidSessionStreamUserModelImpl _$$BidSessionStreamUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionStreamUserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$BidSessionStreamUserModelImplToJson(
        _$BidSessionStreamUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$BidSessionDetailsModelImpl _$$BidSessionDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionDetailsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      sessionDurationSeconds:
          (json['session_duration_seconds'] as num?)?.toInt(),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
      status: json['status'] as String?,
      currentHighestBid: _parseDouble(json['current_highest_bid']),
      currentHighestBidder: json['current_highest_bidder'],
      totalBids: (json['total_bids'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BidSessionDetailsModelImplToJson(
        _$BidSessionDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session_duration_seconds': instance.sessionDurationSeconds,
      'started_at': instance.startedAt?.toIso8601String(),
      'ends_at': instance.endsAt?.toIso8601String(),
      'status': instance.status,
      'current_highest_bid': instance.currentHighestBid,
      'current_highest_bidder': instance.currentHighestBidder,
      'total_bids': instance.totalBids,
    };
