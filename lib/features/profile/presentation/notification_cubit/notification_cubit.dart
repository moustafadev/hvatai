import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(const NotificationState());

  // Notification Toggles - Live Stream
  void toggleStreamsFromSubscriptions() {
    emit(state.copyWith(
      streamsFromSubscriptions: !state.streamsFromSubscriptions,
    ));
  }

  void toggleStreamsISaved() {
    emit(state.copyWith(
      streamsISaved: !state.streamsISaved,
    ));
  }

  void toggleRecommendedStreams() {
    emit(state.copyWith(
      recommendedStreams: !state.recommendedStreams,
    ));
  }

  // Notification Toggles - Search Notifications
  void toggleNewSubscriber() {
    emit(state.copyWith(
      newSubscriber: !state.newSubscriber,
    ));
  }

  // Notification Toggles - Seller Bookmark
  void toggleBookmarksFromStreams() {
    emit(state.copyWith(
      bookmarksFromStreams: !state.bookmarksFromStreams,
    ));
  }

  // Toggle All Notifications
  void toggleSelectAll() {
    final newValue = !state.isAllSelected;

    emit(state.copyWith(
      isAllSelected: newValue,
      streamsFromSubscriptions: newValue,
      streamsISaved: newValue,
      recommendedStreams: newValue,
      newSubscriber: newValue,
      bookmarksFromStreams: newValue,
    ));
  }
}
