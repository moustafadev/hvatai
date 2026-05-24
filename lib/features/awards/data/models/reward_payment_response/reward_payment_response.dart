// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_payment_response.freezed.dart';
part 'reward_payment_response.g.dart';

@freezed
class RewardPaymentResponse with _$RewardPaymentResponse {
  const factory RewardPaymentResponse({
    bool? success,
    String? message,
    RewardPaymentData? data,
  }) = _RewardPaymentResponse;

  factory RewardPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$RewardPaymentResponseFromJson(json);
}

@freezed
class RewardPaymentData with _$RewardPaymentData {
  const factory RewardPaymentData({
    RewardModel? reward,
    RewardRecipientModel? recipient,
    double? amount,
    double? commission,
    double? total,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'payment_session')
    PaymentSessionModel? paymentSession,
  }) = _RewardPaymentData;

  factory RewardPaymentData.fromJson(Map<String, dynamic> json) =>
      _$RewardPaymentDataFromJson(json);
}

@freezed
class RewardModel with _$RewardModel {
  const factory RewardModel({
    int? id,
    @JsonKey(name: 'sender_user_id') int? senderUserId,
    @JsonKey(name: 'recipient_user_id') int? recipientUserId,
    @JsonKey(name: 'payment_id') String? paymentId,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    String? status,
    String? amount,
    String? commission,
    String? total,
    String? message,
    RewardMetadataModel? metadata,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _RewardModel;

  factory RewardModel.fromJson(Map<String, dynamic> json) =>
      _$RewardModelFromJson(json);
}

@freezed
class RewardMetadataModel with _$RewardMetadataModel {
  const factory RewardMetadataModel({
    String? gateway,
    @JsonKey(name: 'gateway_status') String? gatewayStatus,
  }) = _RewardMetadataModel;

  factory RewardMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$RewardMetadataModelFromJson(json);
}

@freezed
class RewardRecipientModel with _$RewardRecipientModel {
  const factory RewardRecipientModel({
    int? id,
    String? name,
    String? image,
  }) = _RewardRecipientModel;

  factory RewardRecipientModel.fromJson(Map<String, dynamic> json) =>
      _$RewardRecipientModelFromJson(json);
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