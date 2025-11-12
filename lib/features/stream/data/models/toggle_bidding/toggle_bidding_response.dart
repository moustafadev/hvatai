// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'toggle_bidding_response.freezed.dart';
part 'toggle_bidding_response.g.dart';

@freezed
class ToggleBiddingResponseModel with _$ToggleBiddingResponseModel {
  const factory ToggleBiddingResponseModel({
    bool? success,
    String? message,
    ToggleBiddingDataModel? data,
  }) = _ToggleBiddingResponseModel;

  factory ToggleBiddingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ToggleBiddingResponseModelFromJson(json);
}

@freezed
class ToggleBiddingDataModel with _$ToggleBiddingDataModel {
  const factory ToggleBiddingDataModel({
    @JsonKey(name: 'has_session') bool? hasSession,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    ProductModel? product,
    @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
    double? startingBid,
    @JsonKey(name: 'can_bid') bool? canBid,
    @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'bid_session') ToggleBiddingSessionModel? bidSession,
    @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
    @JsonKey(name: 'is_active_session') bool? isActiveSession,
    @JsonKey(name: 'has_ended') bool? hasEnded,
  }) = _ToggleBiddingDataModel;

  factory ToggleBiddingDataModel.fromJson(Map<String, dynamic> json) =>
      _$ToggleBiddingDataModelFromJson(json);
}

@freezed
class ToggleBiddingSessionModel with _$ToggleBiddingSessionModel {
  const factory ToggleBiddingSessionModel({
    int? id,
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'highest_bid_id') int? highestBidId,
    @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
    @JsonKey(name: 'session_end_time') DateTime? sessionEndTime,
    String? status,
    @JsonKey(name: 'winner_determined_at') DateTime? winnerDeterminedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ToggleBiddingSessionModel;

  factory ToggleBiddingSessionModel.fromJson(Map<String, dynamic> json) =>
      _$ToggleBiddingSessionModelFromJson(json);
}

double? _parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

