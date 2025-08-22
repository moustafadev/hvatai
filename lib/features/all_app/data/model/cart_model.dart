import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartResponse with _$CartResponse {
  const factory CartResponse({
    List<CartModel>? carts,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    int? id,
    double? total,
    List<CartItem>? items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    int? id,
    int? quantity,
    double? price,
    @JsonKey(name: 'item_type') String? itemType,
    MainVariantModel? item,
    UserModel? seller,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class MainVariantModel with _$MainVariantModel {
  const factory MainVariantModel({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    String? sku,
    @JsonKey(fromJson: _parseDouble) double? price,
    int? stock,
    dynamic attributes,
    @JsonKey(fromJson: _parseDouble) double? discount,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    MainProductModel? product,
  }) = _MainVariantModel;

  factory MainVariantModel.fromJson(Map<String, dynamic> json) =>
      _$MainVariantModelFromJson(json);
}

@freezed
class MainProductModel with _$MainProductModel {
  const factory MainProductModel({
    int? id,
    String? name,
    String? type,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'category_id') int? categoryId,
    String? code,
    dynamic unit,
    @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
    bool? deliveryAvailable,
    @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
    @JsonKey(name: 'delivery_type') String? deliveryType,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
    double? deliveryPrice,
    @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
    double? deliveryDiscount,
    @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
    double? deliveryRadius,
    String? location,
    String? latitude,
    String? longitude,
    @JsonKey(fromJson: _boolFromInt) bool? status,
    int? featured,
    dynamic meta,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
    double? deliveryLengthCm,
    @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
    double? deliveryWidthCm,
    @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
    double? deliveryHeightCm,
    @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
    double? deliveryWeightKg,
    @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
    @JsonKey(name: 'sale_type') String? saleType,
    @JsonKey(fromJson: _imagesFromJson) List<String>? images,
    UserModel? user,
  }) = _MainProductModel;

  factory MainProductModel.fromJson(Map<String, dynamic> json) =>
      _$MainProductModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    @JsonKey(name: 'business_id') int? businessId,
    String? email,
    String? name,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    String? country,
    @JsonKey(name: 'age_confirmation') int? ageConfirmation,
    @JsonKey(name: 'terms_agreement') int? termsAgreement,
    @JsonKey(name: 'personal_rating') double? personalRating,
    String? provider,
    @JsonKey(name: 'provider_id') String? providerId,
    String? role,
    String? phone,
    String? image,
    @JsonKey(name: 'image_business') String? imageBusiness,
    String? description,
    String? lang,
    String? visibility,
    String? sms,
    @JsonKey(name: 'send_email') String? sendEmail,
    String? push,
    String? status,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// Helpers

List<String>? _imagesFromJson(dynamic json) {
  if (json == null) return [];
  if (json is List) {
    return json
        .map((e) =>
            e is Map<String, dynamic> ? e['image_path'] as String? : null)
        .whereType<String>()
        .toList();
  }
  return [];
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
