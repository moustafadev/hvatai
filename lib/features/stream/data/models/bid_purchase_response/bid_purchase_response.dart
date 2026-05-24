// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_purchase_response.freezed.dart';
part 'bid_purchase_response.g.dart';

@freezed
class BidPurchaseResponse with _$BidPurchaseResponse {
  const factory BidPurchaseResponse({
    bool? success,
    String? message,
    BidPurchaseData? data,
  }) = _BidPurchaseResponse;

  factory BidPurchaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BidPurchaseResponseFromJson(json);
}

@freezed
class BidPurchaseData with _$BidPurchaseData {
  const factory BidPurchaseData({
    @JsonKey(name: 'bid_session') BidSessionModel? bidSession,
    @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession,
  }) = _BidPurchaseData;

  factory BidPurchaseData.fromJson(Map<String, dynamic> json) =>
      _$BidPurchaseDataFromJson(json);
}

@freezed
class BidSessionModel with _$BidSessionModel {
  const factory BidSessionModel({
    int? id,
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'highest_bid_id') int? highestBidId,
    @JsonKey(name: 'session_duration_seconds')
    int? sessionDurationSeconds,
    @JsonKey(name: 'session_end_time') String? sessionEndTime,
    String? status,
    @JsonKey(name: 'winner_determined_at') String? winnerDeterminedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _BidSessionModel;

  factory BidSessionModel.fromJson(Map<String, dynamic> json) =>
      _$BidSessionModelFromJson(json);
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