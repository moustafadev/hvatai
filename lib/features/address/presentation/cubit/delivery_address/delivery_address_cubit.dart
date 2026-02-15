import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/address/data/models/address_model/address_model.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';

part 'delivery_address_cubit.freezed.dart';
part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  DeliveryAddressCubit(
      this.getDeliveryAddressDataUseCase, this.deleteAddressUsecase)
      : super(const DeliveryAddressState());

  final GetDeliveryAddressUsecase getDeliveryAddressDataUseCase;
  final DeleteAddressUsecase deleteAddressUsecase;

  Future<void> getDeliveryAddress() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getDeliveryAddressDataUseCase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (deliveryAddressList) {
        final addressList = deliveryAddressList
            .map((data) => AddressModelFactory.fromUserRegistrationData(data))
            .toList();
        emit(state.copyWith(
          isLoading: false,
          deliveryModel: addressList,
        ));
      },
    );
  }

  void toggleMainAddress() {
    final newValue = state.address.isPrimary == 1 ? 0 : 1;

    final updatedAddress = state.address.copyWith(isPrimary: newValue);

    final updatedDeliveryModel = state.deliveryModel.map((address) {
      if (address.id == state.address.id) {
        return address.copyWith(isPrimary: newValue);
      }
      return address;
    }).toList();

    emit(state.copyWith(
      address: updatedAddress,
      deliveryModel: updatedDeliveryModel,
    ));
  }

  Future<void> deleteAddress(int addressId, BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await deleteAddressUsecase.call(
      DeleteAddressParams(addressId: addressId),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          errorMessage: failure,
          isLoading: false,
        ));
        showFloatingMessageError('failedToDeleteAddress'.tr());
      },
      (success) {
        final updatedAddresses = state.deliveryModel
            .where((address) => address.id != addressId)
            .toList();

        emit(state.copyWith(
          deliveryModel: updatedAddresses,
          errorMessage: '',
          isLoading: false,
        ));
        context.read<CartCubit>().getDeliveryAddress();

        showFloatingMessageSuccess('addressDeletedSuccessfully'.tr());
      },
    );
  }
}
