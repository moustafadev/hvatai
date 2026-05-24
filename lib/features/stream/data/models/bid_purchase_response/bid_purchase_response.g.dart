// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_purchase_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidPurchaseResponseImpl _$$BidPurchaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BidPurchaseResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BidPurchaseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidPurchaseResponseImplToJson(
        _$BidPurchaseResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$BidPurchaseDataImpl _$$BidPurchaseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BidPurchaseDataImpl(
      bidSession: json['bid_session'] == null
          ? null
          : BidSessionModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
      paymentSession: json['payment_session'] == null
          ? null
          : PaymentSessionModel.fromJson(
              json['payment_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidPurchaseDataImplToJson(
        _$BidPurchaseDataImpl instance) =>
    <String, dynamic>{
      'bid_session': instance.bidSession,
      'payment_session': instance.paymentSession,
    };

_$BidSessionModelImpl _$$BidSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BidSessionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      highestBidId: (json['highest_bid_id'] as num?)?.toInt(),
      sessionDurationSeconds:
          (json['session_duration_seconds'] as num?)?.toInt(),
      sessionEndTime: json['session_end_time'] as String?,
      status: json['status'] as String?,
      winnerDeterminedAt: json['winner_determined_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BidSessionModelImplToJson(
        _$BidSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'stream_product_id': instance.streamProductId,
      'user_id': instance.userId,
      'highest_bid_id': instance.highestBidId,
      'session_duration_seconds': instance.sessionDurationSeconds,
      'session_end_time': instance.sessionEndTime,
      'status': instance.status,
      'winner_determined_at': instance.winnerDeterminedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PaymentSessionModelImpl _$$PaymentSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentSessionModelImpl(
      paymentId: json['payment_id'] as String?,
      status: json['status'] as String?,
      gatewayStatus: json['gateway_status'] as String?,
      confirmationUrl: json['confirmation_url'] as String?,
      qrLink: json['qr_link'] as String?,
      qrImage: json['qr_image'] as String?,
      qrSvg: json['qr_svg'] as String?,
    );

Map<String, dynamic> _$$PaymentSessionModelImplToJson(
        _$PaymentSessionModelImpl instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'status': instance.status,
      'gateway_status': instance.gatewayStatus,
      'confirmation_url': instance.confirmationUrl,
      'qr_link': instance.qrLink,
      'qr_image': instance.qrImage,
      'qr_svg': instance.qrSvg,
    };
