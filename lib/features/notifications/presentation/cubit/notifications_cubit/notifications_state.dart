part of 'notifications_cubit.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    NotificationModel? notifications,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _NotificationsState;
}
