part of 'my_streams_cubit.dart';

@freezed
class MyStreamsState with _$MyStreamsState {
  const factory MyStreamsState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<StreamDataModel> streams,
    MyStreamsPagination? pagination,
    MyStreamsStats? stats,
  }) = _MyStreamsState;
}

