import 'package:dartz/dartz.dart' show unit;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/search/domain/usecases/get_user_data_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_subscribed_users_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';

import 'company_name_state.dart';

class CompanyNameCubit extends Cubit<CompanyNameState> {
  CompanyNameCubit(
    this._getUserDataUsecase,
    this._getSubscribedUsersUsecase,
    this._toggleSubscriptionUsecase,
  ) : super(const CompanyNameState());

  final GetUserDataUsecase _getUserDataUsecase;
  final GetSubscribedUsersUsecase _getSubscribedUsersUsecase;
  final ToggleSubscriptionUsecase _toggleSubscriptionUsecase;

  Future<void> loadCompanyProfile(int userId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _getUserDataUsecase(GetUserDataParams(userId: userId));

    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: failure,
          ),
        );
      },
      (user) async {
        final isSubscribed = await _fetchSubscriptionStatus(userId);
        emit(
          state.copyWith(
            isLoading: false,
            user: user,
            isSubscribed: isSubscribed,
          ),
        );
      },
    );
  }

  void setInitialData({
    required UserDataModel user,
    required bool isSubscribed,
  }) {
    emit(
      CompanyNameState(
        user: user,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<bool> _fetchSubscriptionStatus(int userId) async {
    final result = await _getSubscribedUsersUsecase(unit);
    return result.fold(
      (_) => state.isSubscribed,
      (response) => response.data.any((subscriber) => subscriber.id == userId),
    );
  }

  Future<void> toggleSubscription(int userId) async {
    if (state.isToggleLoading || userId == 0) return;

    emit(state.copyWith(isToggleLoading: true));

    final result = await _toggleSubscriptionUsecase(
      ToggleSubscriptionParams(userId: userId),
    );

    result.fold(
      (_) => emit(state.copyWith(isToggleLoading: false)),
      (_) {
        final newStatus = !state.isSubscribed;
        final currentCount = state.user?.subscribersCount ?? 0;
        final adjustedCount = newStatus ? currentCount + 1 : currentCount - 1;
        final normalizedCount = adjustedCount < 0 ? 0 : adjustedCount;

        emit(
          state.copyWith(
            isToggleLoading: false,
            isSubscribed: newStatus,
            user: state.user?.copyWith(subscribersCount: normalizedCount),
          ),
        );
      },
    );
  }

  void syncSubscriptionStatus(bool isSubscribed) {
    final currentUser = state.user;
    if (currentUser == null) return;

    if (state.isSubscribed == isSubscribed) {
      return;
    }

    final currentCount = currentUser.subscribersCount ?? 0;
    var adjusted = currentCount + (isSubscribed ? 1 : -1);
    if (adjusted < 0) {
      adjusted = 0;
    }

    emit(
      state.copyWith(
        isSubscribed: isSubscribed,
        user: currentUser.copyWith(
          subscribersCount: adjusted,
        ),
      ),
    );
  }

  void clearUser() {
    emit(const CompanyNameState());
  }
}
