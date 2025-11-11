// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'stream_updated_event.freezed.dart';
part 'stream_updated_event.g.dart';

@freezed
class StreamUpdatedEvent with _$StreamUpdatedEvent {
  const factory StreamUpdatedEvent({
    required StreamDataModel stream,
    @JsonKey(name: 'update_type') required String updateType,
    required int timestamp,
  }) = _StreamUpdatedEvent;

  factory StreamUpdatedEvent.fromJson(Map<String, dynamic> json) =>
      _$StreamUpdatedEventFromJson(json);
}
