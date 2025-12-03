import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';

part 'awards_club_cubit.freezed.dart';
part 'awards_club_state.dart';

class AwardsClubCubit extends Cubit<AwardsClubState> {
  AwardsClubCubit(
    this._toggleSubscriptionUsecase,
    this._sendRewardUsecase,
  ) : super(const AwardsClubState());

  final ToggleSubscriptionUsecase _toggleSubscriptionUsecase;
  final SendRewardUsecase _sendRewardUsecase;

  static const List<int> rewardValues = [50, 100, 200, 500, 1000, 5000];

  void setAddThankYou(bool value) {
    emit(state.copyWith(addThankYouNote: value));
  }

  void updateRewardMessage(String message) {
    emit(state.copyWith(rewardMessage: message));
  }

  void setInitialData({
    required UserDataModel? user,
    required bool isSubscribed,
  }) {
    emit(
      state.copyWith(
        company: user,
        isSubscribed: isSubscribed,
      ),
    );
  }

  void selectAwards(int index) {
    emit(state.copyWith(
      selectedIndex: state.selectedIndex == index ? null : index,
    ));
  }

  int? get selectedAmount {
    final index = state.selectedIndex;
    if (index == null || index < 0 || index >= rewardValues.length) {
      return null;
    }
    return rewardValues[index];
  }

  int get selectedAmountFee {
    final amount = selectedAmount;
    if (amount == null) return 0;
    return (amount * 0.28).round();
  }

  Future<bool> sendReward() async {
    final userId = state.company?.id;
    final amount = selectedAmount;
    if (userId == null || amount == null) {
      return false;
    }

    emit(
      state.copyWith(
        isRewardSubmitting: true,
        errorMessage: '',
        showRewardLoadingScreen: true,
        showRewardErrorScreen: false,
        showRewardSuccessScreen: false,
      ),
    );

    final result = await _sendRewardUsecase(
      SendRewardParams(
        userId: userId,
        amount: amount.toString(),
        message: state.addThankYouNote ? state.rewardMessage : '',
        paymentMethod: state.paymentMethod,
      ),
    );

    return result.fold(
      (failure) {
        emit(
          state.copyWith(
            isRewardSubmitting: false,
            errorMessage: failure,
            showRewardLoadingScreen: false,
            showRewardErrorScreen: true,
            showRewardSuccessScreen: false,
          ),
        );
        return false;
      },
      (_) {
        emit(
          state.copyWith(
            isRewardSubmitting: false,
            errorMessage: '',
            showRewardLoadingScreen: false,
            showRewardErrorScreen: false,
            showRewardSuccessScreen: true,
          ),
        );
        return true;
      },
    );
  }

  void resetRewardScreens() {
    emit(
      state.copyWith(
        showRewardLoadingScreen: false,
        showRewardErrorScreen: false,
        showRewardSuccessScreen: false,
      ),
    );
  }

  Future<void> toggleSubscription() async {
    final userId = state.company?.id ?? 0;
    if (userId == 0 || state.isToggleLoading) return;

    emit(state.copyWith(isToggleLoading: true));

    final result = await _toggleSubscriptionUsecase(
      ToggleSubscriptionParams(userId: userId),
    );

    result.fold(
      (_) => emit(state.copyWith(isToggleLoading: false)),
      (_) {
        final newStatus = !state.isSubscribed;
        emit(
          state.copyWith(
            isToggleLoading: false,
            isSubscribed: newStatus,
          ),
        );
      },
    );
  }
}
