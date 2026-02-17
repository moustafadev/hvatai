// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/cart/data/model/cart_model/cart_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_description') String? productDescription,
    @JsonKey(name: 'sale_type') @Default('buy_now') String saleType,
    @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
    bool? deliveryAvailable,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
    double? deliveryDiscount,
    @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
    @Default(false)
    bool? selfPickup,
    @JsonKey(name: 'self_destruction') String? selfDestruction,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
    int? categoryId,
    @JsonKey(name: 'average_rating', fromJson: _parseDouble)
    double? averageRating,
    @JsonKey(name: 'ratings_count') @Default(0) int ratingsCount,
    @JsonKey(fromJson: _imagesFromJson) @Default([]) List<String> images,
    @Default([]) List<VariantModel> variants,
    MainCategoryModel? category,
    UserModel? user,
    OwnerModel? owner,
    @JsonKey(name: 'is_favorited') @Default(false) bool isFavorited,
    @JsonKey(name: 'favorites_count') @Default(0) int favoritesCount,
    @Default([]) List<dynamic> ratings,
    @JsonKey(name: 'is_in_live_auction') @Default(false) bool isInLiveAuction,
    @JsonKey(name: 'live_auction') LiveAuctionModel? liveAuction,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
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

List<String> _imagesFromJson(dynamic json) {
  if (json == null) return [];
  if (json is List) {
    if (json.isEmpty) return [];
    return json
        .map((e) {
          String? imagePath;
          if (e is String) {
            imagePath = e;
          } else if (e is Map<String, dynamic>) {
            imagePath = e['url'] as String?;
          }
          if (imagePath == null || imagePath.isEmpty) return null;
          // Avoid double-prefixing if the value is already a full URL
          if (imagePath.startsWith('http://') ||
              imagePath.startsWith('https://')) {
            return imagePath;
          }
          // Remove leading slash if present
          String normalizedPath =
              imagePath.startsWith('/') ? imagePath.substring(1) : imagePath;
          // Prepend base URL
          return "${ServerConfig.domen}storage/$normalizedPath";
        })
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

int? _categoryIdFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) {
    return int.tryParse(value);
  }
  return null;
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
    int? id,
    String? sku,
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

@freezed
class LiveAuctionModel with _$LiveAuctionModel {
  const factory LiveAuctionModel({
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'stream_title') String? streamTitle,
    @JsonKey(name: 'stream_status') String? streamStatus,
    @JsonKey(name: 'viewer_count') int? viewerCount,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    @JsonKey(name: 'starting_price', fromJson: _parseDouble)
    double? startingPrice,
    @JsonKey(name: 'current_bid', fromJson: _parseDouble) double? currentBid,
    @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
    @JsonKey(name: 'bid_session') LiveAuctionBidSessionModel? bidSession,
  }) = _LiveAuctionModel;

  factory LiveAuctionModel.fromJson(Map<String, dynamic> json) =>
      _$LiveAuctionModelFromJson(json);
}

@freezed
class LiveAuctionBidSessionModel with _$LiveAuctionBidSessionModel {
  const factory LiveAuctionBidSessionModel({
    int? id,
    String? status,
    @JsonKey(name: 'session_end_time') DateTime? sessionEndTime,
    @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
    @JsonKey(name: 'highest_bid_amount', fromJson: _parseDouble)
    double? highestBidAmount,
  }) = _LiveAuctionBidSessionModel;

  factory LiveAuctionBidSessionModel.fromJson(Map<String, dynamic> json) =>
      _$LiveAuctionBidSessionModelFromJson(json);
}
