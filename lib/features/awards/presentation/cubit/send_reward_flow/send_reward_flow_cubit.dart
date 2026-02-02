import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';

part 'send_reward_flow_cubit.freezed.dart';
part 'send_reward_flow_state.dart';

class SendRewardFlowCubit extends Cubit<SendRewardFlowState> {
  SendRewardFlowCubit(this._sendRewardUsecase)
      : super(const SendRewardFlowState());

  final SendRewardUsecase _sendRewardUsecase;

  static const List<int> rewardValues = [50, 100, 200, 500, 1000, 5000];

  void setInitialData({
    required int userId,
  }) {
    emit(
      state.copyWith(
        userId: userId,
      ),
    );
  }

  void selectAwards(int index) {
    emit(
      state.copyWith(
        selectedIndex: state.selectedIndex == index ? null : index,
      ),
    );
  }

  void setAddThankYou(bool value) {
    emit(state.copyWith(addThankYouNote: value));
    if (!value) {
      updateRewardMessage('');
    }
  }

  void updateRewardMessage(String message) {
    emit(state.copyWith(rewardMessage: message));
  }

  void setPaymentMethod(String paymentMethod) {
    emit(state.copyWith(paymentMethod: paymentMethod));
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
    final userId = state.userId;
    final amount = selectedAmount;
    if (userId == null || userId == 0 || amount == null) {
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
        isRewardSubmitting: false,
        errorMessage: '',
      ),
    );
  }
}
