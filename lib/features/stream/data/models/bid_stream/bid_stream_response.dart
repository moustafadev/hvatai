// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'bid_stream_response.freezed.dart';
part 'bid_stream_response.g.dart';

@freezed
class BidStreamResponse with _$BidStreamResponse {
  const factory BidStreamResponse({
    required bool success,
    required BidStreamData data,
  }) = _BidStreamResponse;

  factory BidStreamResponse.fromJson(Map<String, dynamic> json) =>
      _$BidStreamResponseFromJson(json);
}

@freezed
class BidStreamData with _$BidStreamData {
  const factory BidStreamData({
    @JsonKey(name: "current_page") required int currentPage,
    required List<BidStreamItem> data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<BidStreamLink>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _BidStreamData;

  factory BidStreamData.fromJson(Map<String, dynamic> json) =>
      _$BidStreamDataFromJson(json);
}

@freezed
class BidStreamItem with _$BidStreamItem {
  const factory BidStreamItem({
    required int id,
    @JsonKey(name: "stream_id") required int streamId,
    @JsonKey(name: "stream_product_id") required int streamProductId,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "bid_amount") required String bidAmount,
    required String status,
    String? notes,
    @JsonKey(name: "bid_at") required String bidAt,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    required StreamUserModel user,
    @JsonKey(name: "stream_product") required StreamProductModel streamProduct,
  }) = _BidStreamItem;

  factory BidStreamItem.fromJson(Map<String, dynamic> json) =>
      _$BidStreamItemFromJson(json);
}

@freezed
class BidProduct with _$BidProduct {
  const factory BidProduct({
    required int id,
    required String name,
    required String type,
    String? description,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "category_id") required int categoryId,
    String? code,
    String? unit,
    @JsonKey(name: "delivery_available") int? deliveryAvailable,
    @JsonKey(name: "self_pickup") int? selfPickup,
    @JsonKey(name: "delivery_type") String? deliveryType,
    @JsonKey(name: "delivery_time") String? deliveryTime,
    @JsonKey(name: "delivery_price") String? deliveryPrice,
    @JsonKey(name: "delivery_discount") String? deliveryDiscount,
    @JsonKey(name: "delivery_radius") String? deliveryRadius,
    String? location,
    String? latitude,
    String? longitude,
    int? status,
    int? featured,
    String? meta,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    @JsonKey(name: "delivery_length_cm") String? deliveryLengthCm,
    @JsonKey(name: "delivery_width_cm") String? deliveryWidthCm,
    @JsonKey(name: "delivery_height_cm") String? deliveryHeightCm,
    @JsonKey(name: "delivery_weight_kg") String? deliveryWeightKg,
    @JsonKey(name: "delivery_methods") String? deliveryMethods,
    @JsonKey(name: "sale_type") String? saleType,
  }) = _BidProduct;

  factory BidProduct.fromJson(Map<String, dynamic> json) =>
      _$BidProductFromJson(json);
}

@freezed
class BidStreamLink with _$BidStreamLink {
  const factory BidStreamLink({
    String? url,
    String? label,
    bool? active,
  }) = _BidStreamLink;

  factory BidStreamLink.fromJson(Map<String, dynamic> json) =>
      _$BidStreamLinkFromJson(json);
}
