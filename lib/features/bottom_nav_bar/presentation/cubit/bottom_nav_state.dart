part of 'bottom_nav_cubit.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    required int selectedIndex,
    required bool isBlocked,
    required int uid,
    required String channelId,
  }) = _BottomNavState;

  factory BottomNavState.initial() => BottomNavState(
        selectedIndex: 0,
        isBlocked: false,
        uid: 0,
        channelId: '',
      );
}
