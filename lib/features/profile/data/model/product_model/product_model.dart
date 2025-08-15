import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    List<String>? images,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_description') String? productDescription,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'sale_type') @Default('auction') String saleType,
    @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
    @Default(false)
    bool deliveryAvailable,
    @JsonKey(name: 'delivery_type') String? deliveryType,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
    double? deliveryPrice,
    @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
    double? deliveryDiscount,
    @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
    double? deliveryRadius,
    @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
    @Default(false)
    bool selfPickup,
    @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
    double? deliveryLengthCm,
    @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
    double? deliveryWidthCm,
    @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
    double? deliveryHeightCm,
    @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
    double? deliveryWeightKg,
    int? id,
    List<String>? children,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    String? type,
    String? icon,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
    @JsonKey(fromJson: _boolFromInt) bool? status,
    @JsonKey(name: 'product_pictures') dynamic productPictures,
    @Default([]) List<VariantModel> variants,
    MainCategoryModel? category,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

bool _boolFromInt(dynamic value) {
  if (value == null) return false;
  if (value is bool) return value;
  if (value is int) return value == 1;
  if (value is String) {
    return value.toLowerCase() == 'true' || value == '1';
  }
  return false;
}

double? _parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

@freezed
class VariantModel with _$VariantModel {
  const factory VariantModel({
    @JsonKey(fromJson: _parseDouble) double? price,
    @Default(1) int stock,
    Map<String, dynamic>? attributes,
    @JsonKey(fromJson: _parseDouble) double? discount,
    @JsonKey(name: 'discount_type') String? discountType,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);
}

@freezed
class MainCategoryModel with _$MainCategoryModel {
  const factory MainCategoryModel({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    String? type,
    String? icon,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    bool? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MainCategoryModel;

  factory MainCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryModelFromJson(json);
}
