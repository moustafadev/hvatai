import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_delivery_address_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'delivery_address_state.dart';
part 'delivery_address_cubit.freezed.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  DeliveryAddressCubit(
      this.deliveryAddressUseCase,
      this.editDeliveryAddressUsecase,
      this.getDeliveryAddressDataUseCase,
      this.addNewAddressUsecase,
      this.deleteAddressUsecase)
      : super(DeliveryAddressState(user: UserRegistrationData()));

  final DeliveryAddressUseCase deliveryAddressUseCase;
  final EditDeliveryAddressUsecase editDeliveryAddressUsecase;
  final GetDeliveryAddressUsecase getDeliveryAddressDataUseCase;
  final AddNewAddressUsecase addNewAddressUsecase;
  final DeleteAddressUsecase deleteAddressUsecase;

  final formKey = GlobalKey<FormState>();

  void initRegistrationModel(UserRegistrationData user) {
    emit(state.copyWith(
        user: state.user.copyWith(
      country: user.country ?? '',
      street: user.street ?? '',
      floor: user.floor ?? '',
      id: user.id ?? 0,
      frontDoor: user.frontDoor ?? '',
      intercomCode: user.intercomCode ?? '',
      city: user.city ?? '',
      apartment: user.apartment ?? '',
    )));
  }

  void updateField(String field, String value) {
    UserRegistrationData updatedUser;

    switch (field) {
      case 'country':
        updatedUser = state.user.copyWith(country: value);
        break;
      case 'house':
        updatedUser = state.user.copyWith(frontDoor: value);
        break;
      case 'city':
        updatedUser = state.user.copyWith(city: value);
        break;
      case 'street':
        updatedUser = state.user.copyWith(street: value);
        break;
      case 'entrance':
        updatedUser = state.user.copyWith(floor: value);
        break;
      case 'name':
        updatedUser = state.user.copyWith(firstName: value);
        break;
      case 'index':
        updatedUser = state.user.copyWith(intercomCode: value);
        break;
      case 'apartment':
        updatedUser = state.user.copyWith(apartment: value);
        break;

      default:
        updatedUser = state.user;
    }

    emit(state.copyWith(user: updatedUser));
  }

  Future<Position?> determinePosition() async {
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
  }

  void updateControllersFromAddress(UserRegistrationData data) {
    emit(state.copyWith(
      user: state.user.copyWith(
        country: data.country ?? state.user.country,
        city: data.city ?? state.user.city,
        street: data.street ?? state.user.street,
        intercomCode: data.intercomCode ?? state.user.intercomCode,
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

  Future<UserRegistrationData> getAddressFromPosition(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final place = placemarks.first;

    return UserRegistrationData(
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
      (deliveryAddressList) => emit(state.copyWith(
        isLoading: false,
        deliveryModel: deliveryAddressList,
      )),
    );
  }

  bool isFormValid() {
    final u = state.user;
    return [
      u.country,
      u.city,
      u.street,
      u.floor,
      u.apartment,
      u.frontDoor,
      u.intercomCode,
    ].every((e) => e?.isNotEmpty ?? false);
  }

  Future<void> updateAddress(BuildContext context) async {
    if (!formKey.currentState!.validate() || !isFormValid()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();

    final updatedUser = state.user.copyWith(
      latitude: position?.latitude.toString() ?? '',
      longitude: position?.longitude.toString() ?? '',
      isPrimary: state.user.isPrimary ?? 1,
    );

    final result = await addNewAddressUsecase.call(
      AddNewAddressParams(userRegistrationData: updatedUser),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (newAddress) {
        emit(state.copyWith(
            isLoading: false,
            deliveryModel: [...state.deliveryModel, newAddress]));
        showFloatingMessageSuccess('addressAdded'.tr());
        context.pop();
      },
    );
  }

  Future<void> editNewAddress(BuildContext context) async {
    if (!formKey.currentState!.validate() || !isFormValid()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();
    final updatedUser = state.user.copyWith(
      latitude: position?.latitude.toString() ?? '',
      longitude: position?.longitude.toString() ?? '',
      isPrimary: state.user.isPrimary ?? 1,
    );

    final result = await editDeliveryAddressUsecase.call(
      EditDeliveryAddressParams(userRegistrationData: updatedUser),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (userData) {
        final updatedDeliveryModel = state.deliveryModel.map((address) {
          if (address.id == userData.id) {
            return userData;
          }
          return address;
        }).toList();

        emit(state.copyWith(
          isLoading: false,
          user: userData,
          deliveryModel: updatedDeliveryModel,
        ));
        showFloatingMessageSuccess('AddressUpdated'.tr());
        context.pop();
      },
    );
  }

  void clearUserData() {
    emit(state.copyWith(user: const UserRegistrationData()));
  }

  void toggleMainAddress() {
    final current = state.user.isPrimary == 1;
    emit(state.copyWith(
      user: state.user.copyWith(isPrimary: current ? 0 : 1),
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

  void prefill(String? country) {
    if (country != null && country.isNotEmpty) {
      emit(state.copyWith(user: state.user.copyWith(country: country)));
    }
  }

  Future<void> submit(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();

    final updatedUser = state.user.copyWith(
      country: state.user.country,
      city: state.user.city,
      street: state.user.street,
      floor: state.user.floor,
      apartment: state.user.apartment,
      frontDoor: state.user.frontDoor,
      intercomCode: state.user.intercomCode,
      latitude: position?.latitude.toString() ?? '',
      longitude: position?.longitude.toString() ?? '',
      isPrimary: state.user.isPrimary ?? 1,
    );

    final result = await deliveryAddressUseCase.call(
      DeliveryAddressParams(userRegistrationData: updatedUser),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (userData) {
        emit(state.copyWith(isLoading: false));
        showFloatingMessageSuccess('addressAdded'.tr());
        context.push(AppRoutes.interests, extra: userData);
      },
    );
  }
}
