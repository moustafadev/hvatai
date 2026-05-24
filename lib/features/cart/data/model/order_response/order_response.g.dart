// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseImpl _$$OrderResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrderResponseImpl(
      message: json['message'] as String?,
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      payments: (json['payments'] as List<dynamic>?)
              ?.map(
                  (e) => OrderPaymentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paymentSession: json['payment_session'] == null
          ? null
          : PaymentSessionModel.fromJson(
              json['payment_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseImplToJson(_$OrderResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'orders': instance.orders,
      'payments': instance.payments,
      'payment_session': instance.paymentSession,
    };

_$OrderPaymentModelImpl _$$OrderPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPaymentModelImpl(
      orderId: (json['order_id'] as num?)?.toInt(),
      paymentId: json['payment_id'] as String?,
      status: json['status'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$$OrderPaymentModelImplToJson(
        _$OrderPaymentModelImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'payment_id': instance.paymentId,
      'status': instance.status,
      'amount': instance.amount,
      'currency': instance.currency,
      'method': instance.method,
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
