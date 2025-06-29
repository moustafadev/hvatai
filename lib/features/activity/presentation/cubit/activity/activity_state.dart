
part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState({
    @Default(0) int selectedTabIndex,
  }) = _ActivityState;
}