// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/bid_stream/bid_stream_response.dart';

part 'bid_placed_event.freezed.dart';
part 'bid_placed_event.g.dart';

@freezed
class BidPlacedEvent with _$BidPlacedEvent {
  const factory BidPlacedEvent({
    required BidStreamItem bid,
    @JsonKey(name: 'stream_product') StreamProductModel? streamProduct,
    DateTime? timestamp,
    @JsonKey(name: 'bid_session') BidPlacedSessionModel? bidSession,
  }) = _BidPlacedEvent;

  factory BidPlacedEvent.fromJson(Map<String, dynamic> json) =>
      _$BidPlacedEventFromJson(json);
}

@freezed
class BidPlacedSessionModel with _$BidPlacedSessionModel {
  const factory BidPlacedSessionModel({
    int? id,
    @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
    @JsonKey(name: 'session_ends_at') DateTime? sessionEndsAt,
    String? status,
  }) = _BidPlacedSessionModel;

  factory BidPlacedSessionModel.fromJson(Map<String, dynamic> json) =>
      _$BidPlacedSessionModelFromJson(json);
}

