// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';


/// ===============================
/// Order Model
/// ===============================
@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    int? id,
    String? uuid,

    @JsonKey(name: 'total_amount')
    String? totalAmount,

    @JsonKey(name: 'delivery_total')
    num? deliveryTotal,

    @JsonKey(name: 'items_total')
    num? itemsTotal,

    String? status,

    @JsonKey(name: 'payment_status')
    String? paymentStatus,

    @JsonKey(name: 'payment_method')
    String? paymentMethod,

    @JsonKey(name: 'delivery_method')
    String? deliveryMethod,

    TotalsModel? totals,

    @JsonKey(name: 'details')
    @Default([])
    List<OrderItemModel> items,

    UserModel? user,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

/// ===============================
/// Totals
/// ===============================
@freezed
class TotalsModel with _$TotalsModel {
  const factory TotalsModel({
    TotalSectionModel? items,
    TotalSectionModel? delivery,
    TotalSectionModel? grand,
  }) = _TotalsModel;

  factory TotalsModel.fromJson(Map<String, dynamic> json) =>
      _$TotalsModelFromJson(json);
}

@freezed
class TotalSectionModel with _$TotalSectionModel {
  const factory TotalSectionModel({
    num? original,
    num? discount,

    @JsonKey(name: 'final')
    num? finalAmount,
  }) = _TotalSectionModel;

  factory TotalSectionModel.fromJson(Map<String, dynamic> json) =>
      _$TotalSectionModelFromJson(json);
}

/// ===============================
/// Order Item
/// ===============================
@freezed
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    int? id,
    num? price,

    @JsonKey(name: 'original_price')
    num? originalPrice,

    int? quantity,

    StoreModel? store,
    VariantModel? variant,

    @JsonKey(name: 'product_images')
    @Default([])
    List<ImageModel> productImages,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

/// ===============================
/// Store
/// ===============================
@freezed
class StoreModel with _$StoreModel {
  const factory StoreModel({
    int? id,

    @JsonKey(name: 'company_name')
    String? companyName,

    String? image,
    num? rating,

    @JsonKey(name: 'rating_count')
    int? ratingCount,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

/// ===============================
/// Variant
/// ===============================
@freezed
class VariantModel with _$VariantModel {
  const factory VariantModel({
    int? id,
    num? price,
    ProductModel? product,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);
}

/// ===============================
/// Product
/// ===============================
@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? name,

    @JsonKey(name: 'delivery_time')
    String? deliveryTime,

    @JsonKey(name: 'delivery_price')
    String? deliveryPrice,

    @Default([])
    List<ImageModel> images,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

/// ===============================
/// Image
/// ===============================
@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    int? id,
    String? url,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

/// ===============================
/// User
/// ===============================
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}