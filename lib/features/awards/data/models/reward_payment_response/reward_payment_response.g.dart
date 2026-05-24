// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardPaymentResponseImpl _$$RewardPaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardPaymentResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RewardPaymentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardPaymentResponseImplToJson(
        _$RewardPaymentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$RewardPaymentDataImpl _$$RewardPaymentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardPaymentDataImpl(
      reward: json['reward'] == null
          ? null
          : RewardModel.fromJson(json['reward'] as Map<String, dynamic>),
      recipient: json['recipient'] == null
          ? null
          : RewardRecipientModel.fromJson(
              json['recipient'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble(),
      commission: (json['commission'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      paymentMethod: json['payment_method'] as String?,
      paymentSession: json['payment_session'] == null
          ? null
          : PaymentSessionModel.fromJson(
              json['payment_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardPaymentDataImplToJson(
        _$RewardPaymentDataImpl instance) =>
    <String, dynamic>{
      'reward': instance.reward,
      'recipient': instance.recipient,
      'amount': instance.amount,
      'commission': instance.commission,
      'total': instance.total,
      'payment_method': instance.paymentMethod,
      'payment_session': instance.paymentSession,
    };

_$RewardModelImpl _$$RewardModelImplFromJson(Map<String, dynamic> json) =>
    _$RewardModelImpl(
      id: (json['id'] as num?)?.toInt(),
      senderUserId: (json['sender_user_id'] as num?)?.toInt(),
      recipientUserId: (json['recipient_user_id'] as num?)?.toInt(),
      paymentId: json['payment_id'] as String?,
      paymentMethod: json['payment_method'] as String?,
      status: json['status'] as String?,
      amount: json['amount'] as String?,
      commission: json['commission'] as String?,
      total: json['total'] as String?,
      message: json['message'] as String?,
      metadata: json['metadata'] == null
          ? null
          : RewardMetadataModel.fromJson(
              json['metadata'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$RewardModelImplToJson(_$RewardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_user_id': instance.senderUserId,
      'recipient_user_id': instance.recipientUserId,
      'payment_id': instance.paymentId,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'amount': instance.amount,
      'commission': instance.commission,
      'total': instance.total,
      'message': instance.message,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$RewardMetadataModelImpl _$$RewardMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardMetadataModelImpl(
      gateway: json['gateway'] as String?,
      gatewayStatus: json['gateway_status'] as String?,
    );

Map<String, dynamic> _$$RewardMetadataModelImplToJson(
        _$RewardMetadataModelImpl instance) =>
    <String, dynamic>{
      'gateway': instance.gateway,
      'gateway_status': instance.gatewayStatus,
    };

_$RewardRecipientModelImpl _$$RewardRecipientModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RewardRecipientModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$RewardRecipientModelImplToJson(
        _$RewardRecipientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
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
