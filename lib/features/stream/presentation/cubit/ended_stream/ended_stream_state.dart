part of 'ended_stream_cubit.dart';

@freezed
class EndedStreamState with _$EndedStreamState {
  const factory EndedStreamState({
    @Default([]) List<StreamCommentModel> comments,
    @Default(false) bool isLoadingComments,
    @Default(1) int commentsPage,
    @Default(50) int commentsPerPage,
    @Default(true) bool commentsHasMore,
    @Default('') String commentsError,
    @Default(false) bool isAudioMuted,
  }) = _EndedStreamState;
}
