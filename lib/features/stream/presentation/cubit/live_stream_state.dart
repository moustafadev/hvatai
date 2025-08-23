part of 'live_stream_cubit.dart';

@freezed
class LiveStreamState with _$LiveStreamState {
  const factory LiveStreamState({
    required UserRole role,

    // Agora / presence
    @Default(false) bool localReady,
    int? remoteUid,
    @Default(false) bool isInitializing,
    @Default(false) bool joined,

    // Timer
    @Default(0) int streamSeconds,

    // Comments
    @Default(<Comment>[]) List<Comment> comments,
    @Default('') String commentText,

    // Errors
    @Default('') String errorMessage,
  }) = _LiveStreamState;
}
