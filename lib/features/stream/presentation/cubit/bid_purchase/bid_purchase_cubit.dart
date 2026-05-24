import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/customs/payment_methods_section.dart';
import 'package:hvatai/features/address/data/models/address_model/address_model.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';
import 'package:hvatai/features/stream/data/models/bid_purchase_response/bid_purchase_response.dart';
import 'package:hvatai/features/stream/domain/usecases/complete_bid_purchase_usecase.dart';
import 'package:hvatai/features/wallet/domain/usecases/get_wallets_usecase.dart';

part 'bid_purchase_cubit.freezed.dart';
part 'bid_purchase_state.dart';

class BidPurchaseCubit extends Cubit<BidPurchaseState> {
  BidPurchaseCubit(
    this._completeBidPurchaseUsecase,
    this._getDeliveryAddressUsecase,
    this._getWalletsUsecase,
  ) : super(const BidPurchaseState());

  final CompleteBidPurchaseUsecase _completeBidPurchaseUsecase;
  final GetDeliveryAddressUsecase _getDeliveryAddressUsecase;
  final GetWalletsUsecase _getWalletsUsecase;

  Future<void> loadDeliveryAddresses() async {
    emit(state.copyWith(isLoadingAddresses: true, errorMessage: ''));

    final result = await _getDeliveryAddressUsecase(unit);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingAddresses: false,
          errorMessage: failure,
          hasDeliveryAddress: false,
          addresses: [],
        ));
      },
      (addressesData) {
        final addresses = addressesData
            .map((data) => AddressModelFactory.fromUserRegistrationData(data))
            .toList();

        final hasAddress = addresses.isNotEmpty;
        final selectedAddress = hasAddress ? addresses.first : null;

        emit(state.copyWith(
          isLoadingAddresses: false,
          hasDeliveryAddress: hasAddress,
          addresses: addresses,
          selectedAddress: selectedAddress,
          errorMessage: '',
        ));
      },
    );
  }

  Future<void> loadWallet() async {
    emit(state.copyWith(isLoadingWallet: true, errorMessage: ''));

    final result = await _getWalletsUsecase(unit);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingWallet: false,
          errorMessage: failure,
        ));
      },
      (walletsResponse) {
        final wallets = walletsResponse.data;
        final walletId = wallets.isNotEmpty ? wallets.first.id : null;

        emit(state.copyWith(
          isLoadingWallet: false,
          selectedWalletId: walletId,
          errorMessage: '',
        ));
      },
    );
  }

  void selectPaymentMethod(String method, {int? walletId}) {
    emit(state.copyWith(
      selectedPaymentMethod: method,
      selectedWalletId: walletId ?? state.selectedWalletId,
    ));
  }

  void selectAddress(AddressModel address) {
    emit(state.copyWith(selectedAddress: address));
  }

  void showSecondSheet() {
    emit(state.copyWith(showFirstSheet: false, showSecondSheet: true));
  }

  void closeSheets() {
    emit(state.copyWith(showFirstSheet: false, showSecondSheet: false));
  }

  Future<void> completePurchase(
    int bidPurchaseId, {
    required VoidCallback onSuccess,
    required void Function(String url) onWebView,
    required void Function(String qrSvg, String? url) onQr,
  }) async {
    if (state.selectedAddress == null) {
      showFloatingMessageError('Пожалуйста, выберите адрес доставки');
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final address = state.selectedAddress!;
    final originalPaymentMethod = state.selectedPaymentMethod;

    final result = await _completeBidPurchaseUsecase(
      CompleteBidPurchaseParams(
        bidPurchaseId: bidPurchaseId,
        paymentMethod: originalPaymentMethod,
        walletId: state.selectedWalletId,
        shippingAddress: address,
      ),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError(failure);
      },
      (response) => _handlePaymentResult(
        response: response,
        originalPaymentMethod: originalPaymentMethod,
        onSuccess: onSuccess,
        onWebView: onWebView,
        onQr: onQr,
      ),
    );
  }

  void _handlePaymentResult({
    required BidPurchaseResponse response,
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
      emit(state.copyWith(isLoading: false));
      onSuccess();
      return;
    }

    if (originalPaymentMethod == PaymentMethodType.sbp) {
      final qrSvg = session?.qrSvg;
      final sbpUrl = session?.qrLink ?? session?.qrImage;

      emit(state.copyWith(isLoading: false));

      if (qrSvg != null && qrSvg.isNotEmpty) {
        onQr(qrSvg, sbpUrl);
      } else {
        onSuccess();
      }
      return;
    }

    if (originalPaymentMethod == PaymentMethodType.card) {
      final confirmationUrl = session?.confirmationUrl;

      emit(state.copyWith(isLoading: false));

      if (confirmationUrl != null && confirmationUrl.isNotEmpty) {
        onWebView(confirmationUrl);
      } else {
        onSuccess();
      }
      return;
    }

    // Fallback
    emit(state.copyWith(isLoading: false));
    onSuccess();
  }
}