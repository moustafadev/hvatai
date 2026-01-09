// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'user_bids_response.freezed.dart';
part 'user_bids_response.g.dart';

@freezed
class UserBidsResponse with _$UserBidsResponse {
  const factory UserBidsResponse({
    bool? success,
    String? message,
    @Default([]) List<UserBidItem> data,
  }) = _UserBidsResponse;

  factory UserBidsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserBidsResponseFromJson(json);
}

@freezed
class UserBidItem with _$UserBidItem {
  const factory UserBidItem({
    int? id,
    @JsonKey(name: 'bid_amount') double? bidAmount,
    String? status,
    @JsonKey(name: 'status_ru') String? statusRu,
    @JsonKey(name: 'bid_at') DateTime? bidAt,
    UserBidStream? stream,
    ProductModel? product,
    dynamic order,
  }) = _UserBidItem;

  factory UserBidItem.fromJson(Map<String, dynamic> json) =>
      _$UserBidItemFromJson(json);
}

@freezed
class UserBidStream with _$UserBidStream {
  const factory UserBidStream({
    int? id,
    String? title,
    String? status,
    @JsonKey(name: 'is_public') bool? isPublic,
  }) = _UserBidStream;

  factory UserBidStream.fromJson(Map<String, dynamic> json) =>
      _$UserBidStreamFromJson(json);
}

