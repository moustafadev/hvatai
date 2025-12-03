import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/notifications/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/notifications/domain/usecases/get_notification_usecase.dart';
import 'package:hvatai/features/notifications/domain/usecases/mark_read_usecase.dart';

part 'notifications_cubit.freezed.dart';
part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(this.getNotificationUsecase, this.markReadUsecase)
      : super(const NotificationsState());

  final GetNotificationUsecase getNotificationUsecase;
  final MarkReadUsecase markReadUsecase;

  Future<void> getNotifications() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await getNotificationUsecase.call(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (notification) {
        emit(state.copyWith(
          isLoading: false,
          notifications: notification,
        ));
      },
    );
  }

  Future<void> markResdNotification(int markReadId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final notificationItem =
        state.notifications?.data?.firstWhere((item) => item.id == markReadId);

    if (notificationItem == null) {
      emit(state.copyWith(
          isLoading: false, errorMessage: 'Notification not found'));
      return;
    }

    final params = MarkReadUsecaseParams(notificationItem: notificationItem);

    final result = await markReadUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
      },
      (updatedNotification) {
        final updatedList = state.notifications?.data?.map((item) {
          if (item.id == markReadId) {
            return item.copyWith(read: true);
          }
          return item;
        }).toList();

        emit(state.copyWith(
          isLoading: false,
          notifications: state.notifications?.copyWith(data: updatedList),
        ));
      },
    );
  }
}
