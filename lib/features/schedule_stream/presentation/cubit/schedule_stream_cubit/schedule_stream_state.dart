part of 'schedule_stream_cubit.dart';

@freezed
class ScheduleStreamState with _$ScheduleStreamState {
  const factory ScheduleStreamState({
    @Default([]) List<StreamDataModel> scheduledStreams,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(1) int page,
    @Default(1) int lastPage,
    @Default(true) bool hasMore,
  }) = _ScheduleStreamState;
}

