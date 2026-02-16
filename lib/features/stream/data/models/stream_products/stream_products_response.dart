// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'stream_products_response.freezed.dart';
part 'stream_products_response.g.dart';

@freezed
class StreamProductsResponseModel with _$StreamProductsResponseModel {
  const factory StreamProductsResponseModel({
    bool? success,
    String? message,
    StreamProductsDataModel? data,
  }) = _StreamProductsResponseModel;

  factory StreamProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StreamProductsResponseModelFromJson(json);
}

@freezed
class StreamProductsDataModel with _$StreamProductsDataModel {
  const factory StreamProductsDataModel({
    @Default([]) List<StreamProductItemModel> products,
    @JsonKey(name: 'total_products') @Default(0) int totalProducts,
    @JsonKey(name: 'active_products') @Default(0) int activeProducts,
    @JsonKey(name: 'biddable_products') @Default(0) int biddableProducts,
  }) = _StreamProductsDataModel;

  factory StreamProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$StreamProductsDataModelFromJson(json);
}

@freezed
class StreamProductItemModel with _$StreamProductItemModel {
  const factory StreamProductItemModel({
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    @JsonKey(fromJson: _productFromJson) ProductModel? product,
    @JsonKey(name: 'starting_bid', fromJson: _parseDouble) double? startingBid,
    @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
    double? currentHighestBid,
    @JsonKey(name: 'current_highest_bidder')
    Map<String, dynamic>? currentHighestBidder,
    @JsonKey(name: 'total_bids') @Default(0) int totalBids,
    @JsonKey(name: 'can_bid') @Default(false) bool canBid,
    @JsonKey(name: 'bidding_enabled') @Default(false) bool biddingEnabled,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @JsonKey(name: 'display_order') @Default(0) int displayOrder,
    @JsonKey(name: 'added_at') DateTime? addedAt,
    @JsonKey(name: 'bid_session') Map<String, dynamic>? bidSession,
  }) = _StreamProductItemModel;

  factory StreamProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$StreamProductItemModelFromJson(json);
}

double? _parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

ProductModel? _productFromJson(dynamic json) {
  if (json == null) return null;
  if (json is! Map<String, dynamic>) return null;

  // Transform the JSON to match ProductModel's expected format
  final Map<String, dynamic> productJson = Map<String, dynamic>.from(json);

  // Map 'name' to 'product_name' if needed
  if (productJson.containsKey('name') &&
      !productJson.containsKey('product_name')) {
    productJson['product_name'] = productJson['name'];
  }

  // Map 'description' to 'product_description' if needed
  if (productJson.containsKey('description') &&
      !productJson.containsKey('product_description')) {
    productJson['product_description'] = productJson['description'];
  }

  // Map 'image' to 'images' if needed (handle single image or null)
  if (productJson.containsKey('image') && !productJson.containsKey('images')) {
    final image = productJson['image'];
    if (image != null) {
      productJson['images'] = [image];
    } else {
      productJson['images'] = [];
    }
  }

  try {
    return ProductModel.fromJson(productJson);
  } catch (e) {
    return null;
  }
}
