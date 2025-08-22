import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(fromJson: _imagesFromJson) List<String>? images,
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
    UserModel? user,
    OwnerModel? owner,
    @JsonKey(name: 'is_favorited') @Default(false) bool isFavorited,
    @JsonKey(name: 'favorites_count') @Default(0) int favoritesCount,
    @Default([]) List<dynamic> ratings,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
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

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    int? id,
    String? name,
    String? email,
    String? image,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}

List<String>? _imagesFromJson(dynamic json) {
  if (json == null) return [];
  if (json is List) {
    return json
        .map((e) => e is Map<String, dynamic> ? e['url'] as String? : null)
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

@freezed
class VariantModel with _$VariantModel {
  const factory VariantModel({
    @JsonKey(fromJson: _parseDouble) double? price,
    @Default(1) int stock,
    int? id,
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
