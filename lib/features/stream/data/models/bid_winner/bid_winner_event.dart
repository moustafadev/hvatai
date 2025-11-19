// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_winner_event.freezed.dart';
part 'bid_winner_event.g.dart';

@freezed
class BidWinnerEvent with _$BidWinnerEvent {
  const factory BidWinnerEvent({
    @JsonKey(name: 'session_id') int? sessionId,
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'stream_product_id') int? streamProductId,
    BidWinnerUser? winner,
    @JsonKey(name: 'session_status') String? sessionStatus,
    @JsonKey(name: 'won_at') DateTime? wonAt,
  }) = _BidWinnerEvent;

  factory BidWinnerEvent.fromJson(Map<String, dynamic> json) =>
      _$BidWinnerEventFromJson(json);
}

@freezed
class BidWinnerUser with _$BidWinnerUser {
  const factory BidWinnerUser({
    int? id,
    String? name,
    String? image,
    @JsonKey(name: 'bid_amount', fromJson: _parseDouble) double? bidAmount,
    @JsonKey(name: 'bid_id') int? bidId,
  }) = _BidWinnerUser;

  factory BidWinnerUser.fromJson(Map<String, dynamic> json) =>
      _$BidWinnerUserFromJson(json);
}

double? _parseDouble(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

