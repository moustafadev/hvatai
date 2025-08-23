import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_stream_model.freezed.dart';
part 'create_stream_model.g.dart';

@freezed
class CreateStreamModel with _$CreateStreamModel {
  const factory CreateStreamModel({
    required String title,
    required String description,
    @JsonKey(name: 'scheduled_at', includeIfNull: false)  DateTime? scheduledAt,
    @JsonKey(name: 'is_recording_enabled') required bool isRecordingEnabled,
    @JsonKey(name: 'is_public') required bool isPublic,
    @JsonKey(name: 'enable_comments') required bool enableComments,
    @JsonKey(name: 'enable_bidding') required bool enableBidding,
    @JsonKey(name: 'minimum_bid_increment') required double minimumBidIncrement,
    @JsonKey(name: 'auto_delete_after_end') required bool autoDeleteAfterEnd,
    @JsonKey(name: 'auto_delete_hours') required int autoDeleteHours,
    @JsonKey(name: 'save_recording') required bool saveRecording,
    @JsonKey(name: 'product_ids') required List<int> productIds,
  }) = _CreateStreamModel;

  factory CreateStreamModel.fromJson(Map<String, dynamic> json) =>
      _$CreateStreamModelFromJson(json);
}
