part of 'main_notification_cubit.dart';

@freezed
class MainNotificationState with _$MainNotificationState {
  const factory MainNotificationState({
    @Default([]) List<NotificationModel> notifications,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _MainNotificationState;
}
