// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  const factory OrderResponse({
    String? message,
    @Default([]) List<OrderModel> orders,
    @Default([]) List<OrderPaymentModel> payments,
    @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
class OrderPaymentModel with _$OrderPaymentModel {
  const factory OrderPaymentModel({
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'payment_id') String? paymentId,
    String? status,
    String? amount,
    String? currency,
    String? method,
  }) = _OrderPaymentModel;

  factory OrderPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPaymentModelFromJson(json);
}

@freezed
class PaymentSessionModel with _$PaymentSessionModel {
  const factory PaymentSessionModel({
    @JsonKey(name: 'payment_id') String? paymentId,
    String? status,
    @JsonKey(name: 'gateway_status') String? gatewayStatus,
    @JsonKey(name: 'confirmation_url') String? confirmationUrl,
    @JsonKey(name: 'qr_link') String? qrLink,
    @JsonKey(name: 'qr_image') String? qrImage,
    @JsonKey(name: 'qr_svg') String? qrSvg,
  }) = _PaymentSessionModel;

  factory PaymentSessionModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentSessionModelFromJson(json);
}
