// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'my_streams_response.freezed.dart';
part 'my_streams_response.g.dart';

@freezed
class MyStreamsResponse with _$MyStreamsResponse {
  const factory MyStreamsResponse({
    bool? success,
    String? message,
    List<StreamDataModel>? data,
    MyStreamsPagination? pagination,
    MyStreamsStats? stats,
  }) = _MyStreamsResponse;

  factory MyStreamsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyStreamsResponseFromJson(json);
}

@freezed
class MyStreamsPagination with _$MyStreamsPagination {
  const factory MyStreamsPagination({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
    @JsonKey(name: 'last_page') int? lastPage,
  }) = _MyStreamsPagination;

  factory MyStreamsPagination.fromJson(Map<String, dynamic> json) =>
      _$MyStreamsPaginationFromJson(json);
}

@freezed
class MyStreamsStats with _$MyStreamsStats {
  const factory MyStreamsStats({
    int? total,
    int? live,
    int? ended,
    int? scheduled,
  }) = _MyStreamsStats;

  factory MyStreamsStats.fromJson(Map<String, dynamic> json) =>
      _$MyStreamsStatsFromJson(json);
}

