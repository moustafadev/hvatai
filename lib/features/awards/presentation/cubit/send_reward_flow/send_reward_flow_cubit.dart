import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/customs/payment_methods_section.dart';
import 'package:hvatai/features/awards/data/models/reward_payment_response/reward_payment_response.dart';
import 'package:hvatai/features/awards/domain/usecases/send_reward_usecase.dart';

part 'send_reward_flow_cubit.freezed.dart';
part 'send_reward_flow_state.dart';

class SendRewardFlowCubit extends Cubit<SendRewardFlowState> {
  SendRewardFlowCubit(this._sendRewardUsecase)
      : super(const SendRewardFlowState());

  final SendRewardUsecase _sendRewardUsecase;

  static const List<int> rewardValues = [50, 100, 200, 500, 1000, 5000];

  void setInitialData({required int userId}) {
    emit(state.copyWith(userId: userId));
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
    if (!value) updateRewardMessage('');
  }

  void updateRewardMessage(String message) {
    emit(state.copyWith(rewardMessage: message));
  }

  void setPaymentMethod(String paymentMethod) {
    emit(state.copyWith(paymentMethod: paymentMethod));
  }

  int? get selectedAmount {
    final index = state.selectedIndex;
    if (index == null || index < 0 || index >= rewardValues.length) return null;
    return rewardValues[index];
  }

  int get selectedAmountFee {
    final amount = selectedAmount;
    if (amount == null) return 0;
    return (amount * 0.28).round();
  }

  Future<bool> sendReward({
    required VoidCallback onSuccess,
    required void Function(String url) onWebView,
    required void Function(String qrSvg, String? url) onQr,
  }) async {
    final userId = state.userId;
    final amount = selectedAmount;
    if (userId == null || userId == 0 || amount == null) return false;

    final originalPaymentMethod = state.paymentMethod;

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
        paymentMethod: originalPaymentMethod,
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
      (response) {
        _handlePaymentResult(
          response: response,
          originalPaymentMethod: originalPaymentMethod,
          onSuccess: onSuccess,
          onWebView: onWebView,
          onQr: onQr,
        );
        return true;
      },
    );
  }

  void _handlePaymentResult({
    required RewardPaymentResponse response,
    required String originalPaymentMethod,
    required VoidCallback onSuccess,
    required void Function(String url) onWebView,
    required void Function(String qrSvg, String? url) onQr,
  }) {
    final session = response.data?.paymentSession;

    if (originalPaymentMethod == PaymentMethodType.wallet) {
      if (response.message?.isNotEmpty == true) {
        showFloatingMessageSuccess(response.message!);
      }
      emit(state.copyWith(
        isRewardSubmitting: false,
        showRewardLoadingScreen: false,
        showRewardErrorScreen: false,
      ));
      onSuccess();
      return;
    }

    if (originalPaymentMethod == PaymentMethodType.sbp) {
      final qrSvg = session?.qrSvg;
      final sbpUrl = session?.qrLink ?? session?.qrImage;

      emit(state.copyWith(
        isRewardSubmitting: false,
        showRewardLoadingScreen: false,
        showRewardErrorScreen: false,
      ));

      if (qrSvg != null && qrSvg.isNotEmpty) {
        onQr(qrSvg, sbpUrl);
      } else {
        onSuccess();
      }
      return;
    }

    if (originalPaymentMethod == PaymentMethodType.card) {
      final confirmationUrl = session?.confirmationUrl;
      print("payment test:");
      emit(state.copyWith(
        isRewardSubmitting: false,
        showRewardLoadingScreen: false,
        showRewardErrorScreen: false,
      ));

      if (confirmationUrl != null && confirmationUrl.isNotEmpty) {
        onWebView(confirmationUrl);
      } else {
        onSuccess();
      }
      return;
    }

    // Fallback
    emit(state.copyWith(
      isRewardSubmitting: false,
      showRewardLoadingScreen: false,
      showRewardErrorScreen: false,
    ));
    onSuccess();
  }

  void clearQrCode() {
    emit(state.copyWith(qrCodeSvg: null, sbpPaymentUrl: null));
  }

  void clearPendingPaymentWebView() {
    emit(state.copyWith(pendingPaymentWebViewUrl: null));
  }

  void resetRewardScreens() {
    emit(
      state.copyWith(
        showRewardLoadingScreen: false,
        showRewardErrorScreen: false,
        showRewardSuccessScreen: false,
        isRewardSubmitting: false,
        errorMessage: '',
        qrCodeSvg: null,
        sbpPaymentUrl: null,
        pendingPaymentWebViewUrl: null,
      ),
    );
  }
}
