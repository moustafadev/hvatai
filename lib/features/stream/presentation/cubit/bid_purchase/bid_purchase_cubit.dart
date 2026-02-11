import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/address/data/models/address_model/address_model.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';
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
    if (method != 'wallet' && method != 'sbp') {
      return; // Only allow wallet or sbp
    }

    emit(state.copyWith(
      selectedPaymentMethod: method,
      selectedWalletId: walletId,
    ));
  }

  void selectAddress(AddressModel address) {
    emit(state.copyWith(selectedAddress: address));
  }

  void showSecondSheet() {
    emit(state.copyWith(
      showFirstSheet: false,
      showSecondSheet: true,
    ));
  }

  void closeSheets() {
    emit(state.copyWith(
      showFirstSheet: false,
      showSecondSheet: false,
    ));
  }

  Future<void> completePurchase(int bidPurchaseId) async {
    if (state.selectedAddress == null) {
      showFloatingMessageError('Пожалуйста, выберите адрес доставки');
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final address = state.selectedAddress!;

    final result = await _completeBidPurchaseUsecase(
      CompleteBidPurchaseParams(
        bidPurchaseId: bidPurchaseId,
        paymentMethod: state.selectedPaymentMethod,
        walletId: state.selectedWalletId,
        shippingAddress: address,
      ),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
        showFloatingMessageError(failure);
      },
      (success) {
        emit(state.copyWith(
          isLoading: false,
          showSecondSheet: false,
        ));
        showFloatingMessageSuccess('Покупка успешно завершена');
      },
    );
  }
}
