// live_stream_state.dart
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

    // Comments (RAW API MODELS)
    @Default(<StreamCommentModel>[]) List<StreamCommentModel> comments,
    @Default('') String commentText,

    // Comments loading/paging
    @Default(false) bool isLoadingComments,
    @Default(false) bool isSendingComment,
    @Default(1) int commentsPage,
    @Default(50) int commentsPerPage,
    @Default(true) bool commentsHasMore,

    // Errors
    @Default('') String errorMessage,
    @Default('') String commentsError,
    @Default('') String sendCommentError,
  }) = _LiveStreamState;
}
