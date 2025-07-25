import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/home/data/model/notification_model/notification_model.dart';
import 'package:hvatai/features/home/domain/usecases/get_notification_usecase.dart';

part 'main_notification_cubit.freezed.dart';
part 'main_notification_state.dart';

class MainNotificationCubit extends Cubit<MainNotificationState> {
  MainNotificationCubit(this.getNotificationUsecase)
      : super(const MainNotificationState());

  GetNotificationUsecase getNotificationUsecase;
  Future<void> getNotifications() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getNotificationUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (notificationList) => emit(state.copyWith(
        isLoading: false,
        notifications: notificationList,
      )),
    );
  }
}
