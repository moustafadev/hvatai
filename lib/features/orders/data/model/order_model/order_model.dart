// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    String? uuid,
    int? id,
    @JsonKey(name: 'invoice_number') String? invoiceNumber,
    @JsonKey(name: 'total_amount') String? totalAmount,
    String? status,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'created_at') String? createdAt,
    String? address,
    @Default(<OrderItemModel>[]) List<OrderItemModel> items,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    @JsonKey(name: 'product_name') String? productName,
    int? quantity,
    num? price,
    num? total,
    String? image,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

