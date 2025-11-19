// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'bid_session_response.freezed.dart';
part 'bid_session_response.g.dart';

@freezed
class BidSessionResponse with _$BidSessionResponse {
  const factory BidSessionResponse({
    bool? success,
    BidSessionData? data,
    String? message,
  }) = _BidSessionResponse;

  factory BidSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$BidSessionResponseFromJson(json);
}

@freezed
class BidSessionData with _$BidSessionData {
  const factory BidSessionData({
    @JsonKey(name: 'has_session') bool? hasSession,
    BidSessionStreamModel? stream,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    ProductModel? product,
    @JsonKey(name: 'starting_bid', fromJson: _parseStringToDouble)
    double? startingBid,
    @JsonKey(name: 'minimum_bid_increment', fromJson: _parseStringToDouble)
    double? minimumBidIncrement,
    @JsonKey(name: 'next_minimum_bid', fromJson: _parseIntToDouble)
    double? nextMinimumBid,
    @JsonKey(name: 'can_bid') bool? canBid,
    @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'bid_session') BidSessionDetailsModel? bidSession,
    @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
    @JsonKey(name: 'is_active_session') bool? isActiveSession,
    @JsonKey(name: 'has_ended') bool? hasEnded,
    String? message,
  }) = _BidSessionData;

  factory BidSessionData.fromJson(Map<String, dynamic> json) =>
      _$BidSessionDataFromJson(json);
}

@freezed
class BidSessionStreamModel with _$BidSessionStreamModel {
  const factory BidSessionStreamModel({
    int? id,
    String? title,
    String? status,
    @JsonKey(name: 'is_live') bool? isLive,
    @JsonKey(name: 'is_public') bool? isPublic,
    BidSessionStreamUserModel? user,
  }) = _BidSessionStreamModel;

  factory BidSessionStreamModel.fromJson(Map<String, dynamic> json) =>
      _$BidSessionStreamModelFromJson(json);
}

@freezed
class BidSessionStreamUserModel with _$BidSessionStreamUserModel {
  const factory BidSessionStreamUserModel({
    int? id,
    String? name,
  }) = _BidSessionStreamUserModel;

  factory BidSessionStreamUserModel.fromJson(Map<String, dynamic> json) =>
      _$BidSessionStreamUserModelFromJson(json);
}

@freezed
class BidSessionDetailsModel with _$BidSessionDetailsModel {
  const factory BidSessionDetailsModel({
    int? id,
    @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ends_at') DateTime? endsAt,
    String? status,
    @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
    double? currentHighestBid,
    @JsonKey(name: 'current_highest_bidder') dynamic currentHighestBidder,
    @JsonKey(name: 'total_bids') int? totalBids,
  }) = _BidSessionDetailsModel;

  factory BidSessionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BidSessionDetailsModelFromJson(json);
}

double? _parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) {
    return double.tryParse(value);
  }
  return null;
}

double? _parseStringToDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) {
    return double.tryParse(value);
  }
  return null;
}

double? _parseIntToDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) {
    return double.tryParse(value);
  }
  return null;
}