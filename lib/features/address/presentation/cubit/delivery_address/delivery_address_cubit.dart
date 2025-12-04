import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/address_model/address_model.dart';
// ignore: unused_import
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/address/domain/usecases/get_delivery_address_usecase.dart';

part 'delivery_address_cubit.freezed.dart';
part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  DeliveryAddressCubit(
      this.editDeliveryAddressUsecase,
      this.getDeliveryAddressDataUseCase,
      this.addNewAddressUsecase,
      this.deleteAddressUsecase)
      : super(const DeliveryAddressState());

  final EditDeliveryAddressUsecase editDeliveryAddressUsecase;
  final GetDeliveryAddressUsecase getDeliveryAddressDataUseCase;
  final AddNewAddressUsecase addNewAddressUsecase;
  final DeleteAddressUsecase deleteAddressUsecase;

  final formKey = GlobalKey<FormState>();

  void initAddress(AddressModel address) {
    emit(state.copyWith(address: address));
  }

  void updateField(String field, String value) {
    AddressModel updatedAddress;

    switch (field) {
      case 'country':
        updatedAddress = state.address.copyWith(country: value);
        break;
      case 'house':
        updatedAddress = state.address.copyWith(floor: value);
        break;
      case 'city':
        updatedAddress = state.address.copyWith(city: value);
        break;
      case 'street':
        updatedAddress = state.address.copyWith(street: value);
        break;
      case 'entrance':
        updatedAddress = state.address.copyWith(frontDoor: value);
        break;
      case 'index':
        updatedAddress = state.address.copyWith(intercomCode: value);
        break;
      case 'apartment':
        updatedAddress = state.address.copyWith(apartment: value);
        break;
      default:
        updatedAddress = state.address;
    }

    emit(state.copyWith(address: updatedAddress));
  }

  Future<Position?> determinePosition() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) throw Exception('Location services are disabled');

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw Exception('Location permissions are permanently denied');
      }

      return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
    } catch (e) {
      return null;
    }
  }

  void updateControllersFromAddress(AddressModel data) {
    emit(state.copyWith(
      address: state.address.copyWith(
        country: data.country ?? state.address.country,
        city: data.city ?? state.address.city,
        street: data.street ?? state.address.street,
        intercomCode: data.intercomCode ?? state.address.intercomCode,
      ),
      lastUpdated: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  void addMyLocation() async {
    try {
      final position = await determinePosition();
      if (position == null) return;

      final addressData = await getAddressFromPosition(position);
      updateControllersFromAddress(addressData);
    } catch (e) {
      showFloatingMessageError('somethingWentWrong'.tr());
    }
  }

  Future<AddressModel> getAddressFromPosition(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final place = placemarks.first;

    return AddressModel(
      country: place.country ?? '',
      city: place.locality ?? '',
      street: place.street ?? '',
      intercomCode: place.postalCode ?? '',
      latitude: position.latitude.toString(),
      longitude: position.longitude.toString(),
    );
  }

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

  bool get isFormValid {
    final address = state.address;
    return [
      address.country,
      address.city,
      address.street,
      address.floor,
      address.apartment,
      address.frontDoor,
      address.intercomCode,
    ].every((e) => e?.isNotEmpty ?? false);
  }

  Future<void> updateAddress(BuildContext context) async {
    if (!formKey.currentState!.validate() || !isFormValid) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();

    final updatedAddress = state.address.copyWith(
      latitude: position?.latitude.toString() ?? '',
      longitude: position?.longitude.toString() ?? '',
      isPrimary: state.address.isPrimary ?? 1,
    );

    final userData = updatedAddress.toUserRegistrationData();

    final result = await addNewAddressUsecase.call(
      AddNewAddressParams(userRegistrationData: userData),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (newAddress) {
        final addressModel =
            AddressModelFactory.fromUserRegistrationData(newAddress);
        emit(state.copyWith(
            isLoading: false,
            deliveryModel: [...state.deliveryModel, addressModel]));
        showFloatingMessageSuccess('addressAdded'.tr());
        context.pop();
      },
    );
  }

  Future<void> editNewAddress(BuildContext context) async {
    if (!formKey.currentState!.validate() || !isFormValid) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();
    final updatedAddress = state.address.copyWith(
      latitude: position?.latitude.toString() ?? '',
      longitude: position?.longitude.toString() ?? '',
      isPrimary: state.address.isPrimary ?? 1,
    );

    final userData = updatedAddress.toUserRegistrationData();

    final result = await editDeliveryAddressUsecase.call(
      EditDeliveryAddressParams(userRegistrationData: userData),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (userData) {
        final updatedAddressModel =
            AddressModelFactory.fromUserRegistrationData(userData);
        final updatedDeliveryModel = state.deliveryModel.map((address) {
          if (address.id == updatedAddressModel.id) {
            return updatedAddressModel;
          }
          return address;
        }).toList();

        emit(state.copyWith(
          isLoading: false,
          address: updatedAddressModel,
          deliveryModel: updatedDeliveryModel,
        ));
        showFloatingMessageSuccess('AddressUpdated'.tr());
        context.pop(userData);
      },
    );
  }

  void clearAddress() {
    emit(state.copyWith(address: const AddressModel()));
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

  Future<void> deleteAddress(int addressId) async {
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

        showFloatingMessageSuccess('addressDeletedSuccessfully'.tr());
      },
    );
  }
}
