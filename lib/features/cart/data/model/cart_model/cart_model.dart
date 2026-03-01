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
    @JsonKey(name: 'business_id') int? businessId,
    @JsonKey(fromJson: _parseDouble) double? total,
    List<CartItem>? items,
    @JsonKey(name: 'delivery_availability')
    DeliveryAvailability? deliveryAvailability,
    @JsonKey(name: 'checkout_totals') CheckoutTotals? checkoutTotals,
    Totals? totals,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    int? id,
    int? quantity,
    @JsonKey(fromJson: _parseDouble) double? price,
    @JsonKey(name: 'original_price', fromJson: _parseDouble)
    double? originalPrice,
    @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
    double? discountAmount,
    @JsonKey(name: 'discount_type') String? discountType,
    Discount? discount,
    @JsonKey(name: 'total_price', fromJson: _parseDouble) double? totalPrice,
    @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
    double? totalOriginalPrice,
    @JsonKey(name: 'bundle_info') dynamic bundleInfo,
    Fulfillment? fulfillment,
    CartItemProductWrapper? item,
    Business? business,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

@freezed
class CartItemProductWrapper with _$CartItemProductWrapper {
  const factory CartItemProductWrapper({
    int? id,
    CartItemProduct? product,
  }) = _CartItemProductWrapper;

  factory CartItemProductWrapper.fromJson(Map<String, dynamic> json) =>
      _$CartItemProductWrapperFromJson(json);
}

@freezed
class CartItemProduct with _$CartItemProduct {
  const factory CartItemProduct({
    int? id,
    @JsonKey(name: 'product_code') String? productCode,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_description') String? productDescription,
    String? type,
    @JsonKey(name: 'sale_type') String? saleType,
    @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
    bool? deliveryAvailable,
    @JsonKey(name: 'delivery_type') String? deliveryType,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
    double? deliveryPrice,
    @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
    double? deliveryDiscount,
    @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
    double? deliveryRadius,
    @JsonKey(fromJson: _boolFromInt) bool? status,
    @JsonKey(name: 'go_home') dynamic goHome,
    @JsonKey(name: 'self_destruction') dynamic selfDestruction,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'average_rating', fromJson: _parseDouble)
    double? averageRating,
    @JsonKey(name: 'ratings_count') int? ratingsCount,
    @JsonKey(fromJson: _imagesFromJson) List<String>? images,
    List<CartItemVariant>? variants,
    Category? category,
    UserModel? user,
    UserModel? owner,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
    List<dynamic>? ratings,
    @JsonKey(name: 'is_in_live_auction') bool? isInLiveAuction,
    @JsonKey(name: 'live_auction') dynamic liveAuction,
  }) = _CartItemProduct;

  factory CartItemProduct.fromJson(Map<String, dynamic> json) =>
      _$CartItemProductFromJson(json);
}

@freezed
class CartItemVariant with _$CartItemVariant {
  const factory CartItemVariant({
    int? id,
    String? sku,
    @JsonKey(fromJson: _parseDouble) double? price,
    int? stock,
    dynamic attributes,
    @JsonKey(fromJson: _parseDouble) double? discount,
    @JsonKey(name: 'discount_type') String? discountType,
  }) = _CartItemVariant;

  factory CartItemVariant.fromJson(Map<String, dynamic> json) =>
      _$CartItemVariantFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    String? type,
    String? icon,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(fromJson: _boolFromInt) bool? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Business with _$Business {
  const factory Business({
    int? id,
    @JsonKey(name: 'company_name') String? companyName,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}

@freezed
class Discount with _$Discount {
  const factory Discount({
    String? kind,
    @JsonKey(fromJson: _parseDouble) double? amount,
    DiscountMeta? meta,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
}

@freezed
class DiscountMeta with _$DiscountMeta {
  const factory DiscountMeta({
    @JsonKey(fromJson: _parseDouble) double? value,
    @JsonKey(name: 'value_type') String? valueType,
  }) = _DiscountMeta;

  factory DiscountMeta.fromJson(Map<String, dynamic> json) =>
      _$DiscountMetaFromJson(json);
}

@freezed
class Fulfillment with _$Fulfillment {
  const factory Fulfillment({
    bool? pickup,
    bool? delivery,
    String? type,
  }) = _Fulfillment;

  factory Fulfillment.fromJson(Map<String, dynamic> json) =>
      _$FulfillmentFromJson(json);
}

@freezed
class DeliveryAvailability with _$DeliveryAvailability {
  const factory DeliveryAvailability({
    PickupDeliveryOption? pickup,
    PickupDeliveryOption? delivery,
  }) = _DeliveryAvailability;

  factory DeliveryAvailability.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAvailabilityFromJson(json);
}

@freezed
class PickupDeliveryOption with _$PickupDeliveryOption {
  const factory PickupDeliveryOption({
    bool? available,
    String? reason,
  }) = _PickupDeliveryOption;

  factory PickupDeliveryOption.fromJson(Map<String, dynamic> json) =>
      _$PickupDeliveryOptionFromJson(json);
}

@freezed
class CheckoutTotals with _$CheckoutTotals {
  const factory CheckoutTotals({
    GrandTotal? pickup,
    GrandTotal? delivery,
  }) = _CheckoutTotals;

  factory CheckoutTotals.fromJson(Map<String, dynamic> json) =>
      _$CheckoutTotalsFromJson(json);
}

@freezed
class GrandTotal with _$GrandTotal {
  const factory GrandTotal({
    GrandTotalDetails? grand,
  }) = _GrandTotal;

  factory GrandTotal.fromJson(Map<String, dynamic> json) =>
      _$GrandTotalFromJson(json);
}

@freezed
class GrandTotalDetails with _$GrandTotalDetails {
  const factory GrandTotalDetails({
    @JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue,
  }) = _GrandTotalDetails;

  factory GrandTotalDetails.fromJson(Map<String, dynamic> json) =>
      _$GrandTotalDetailsFromJson(json);
}

@freezed
class Totals with _$Totals {
  const factory Totals({
    TotalDetails? items,
    TotalDetails? delivery,
    TotalDetails? grand,
  }) = _Totals;

  factory Totals.fromJson(Map<String, dynamic> json) => _$TotalsFromJson(json);
}

@freezed
class TotalDetails with _$TotalDetails {
  const factory TotalDetails({
    @JsonKey(fromJson: _parseDouble) double? original,
    @JsonKey(fromJson: _parseDouble) double? discount,
    @JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue,
  }) = _TotalDetails;

  factory TotalDetails.fromJson(Map<String, dynamic> json) =>
      _$TotalDetailsFromJson(json);
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

double? _parseStringToDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) {
    if (value.isEmpty) return null;
    return double.tryParse(value);
  }
  return null;
}
