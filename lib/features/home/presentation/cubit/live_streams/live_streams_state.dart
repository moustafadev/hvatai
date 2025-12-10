import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'live_streams_state.freezed.dart';

@freezed
class LiveStreamsState with _$LiveStreamsState {
  const factory LiveStreamsState({
    @Default(<StreamDataModel>[]) List<StreamDataModel> liveStreams,
    @Default(false) bool isLoading,
    String? error,
    @Default(1) int page,
    @Default(1) int lastPage,
    @Default(true) bool hasMore,
    @Default(false) bool isJoining,
    String? joinError,
    JoinStreamData? joinData,
    @Default(<int>[]) List<int> categoryIds,
  }) = _LiveStreamsState;

  factory LiveStreamsState.initial() => const LiveStreamsState(
        liveStreams: [],
        isLoading: false,
        error: null,
        page: 1,
        lastPage: 1,
        hasMore: true,
        isJoining: false,
        joinError: null,
        joinData: null,
        categoryIds: <int>[],
      );
}
