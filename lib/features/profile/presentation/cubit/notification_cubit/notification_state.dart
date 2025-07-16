part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(true) bool streamsFromSubscriptions,
    @Default(false) bool streamsISaved,
    @Default(true) bool recommendedStreams,
    @Default(true) bool newSubscriber,
    @Default(true) bool bookmarksFromStreams,
    @Default(false) bool isAllSelected,
  }) = _NotificationState;
}
