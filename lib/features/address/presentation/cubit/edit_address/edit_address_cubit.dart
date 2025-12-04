import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';

part 'edit_address_state.dart';
part 'edit_address_cubit.freezed.dart';

class EditAddressCubit extends Cubit<EditAddressState> {
  EditAddressCubit(
    this.editDeliveryAddressUsecase,
  ) : super(EditAddressState(user: UserRegistrationData()));

  final EditDeliveryAddressUsecase editDeliveryAddressUsecase;

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
      isPrimary: user.isPrimary,
    )));
  }

  void updateField(String field, String value) {
    UserRegistrationData updatedUser;

    switch (field) {
      case 'country':
        updatedUser = state.user.copyWith(country: value);
        break;
      case 'house':
        updatedUser = state.user.copyWith(floor: value);
        break;
      case 'city':
        updatedUser = state.user.copyWith(city: value);
        break;
      case 'street':
        updatedUser = state.user.copyWith(street: value);
        break;
      case 'entrance':
        updatedUser = state.user.copyWith(frontDoor: value);
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
        context.pop(userData);
      },
    );
  }

  void clearUserData() {
    emit(state.copyWith(user: const UserRegistrationData()));
  }

  void toggleMainAddress() {
    final newValue = state.user.isPrimary == 1 ? 0 : 1;

    final updatedUser = state.user.copyWith(isPrimary: newValue);

    final updatedDeliveryModel = state.deliveryModel.map((address) {
      if (address.id == state.user.id) {
        return address.copyWith(isPrimary: newValue);
      }
      return address;
    }).toList();

    emit(state.copyWith(
      user: updatedUser,
      deliveryModel: updatedDeliveryModel,
    ));
  }

  void prefill(String? country) {
    if (country != null && country.isNotEmpty) {
      emit(state.copyWith(user: state.user.copyWith(country: country)));
    }
  }
}
