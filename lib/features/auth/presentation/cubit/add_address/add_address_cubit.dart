import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/address_model/address_model.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'add_address_cubit.freezed.dart';
part 'add_address_state.dart';

class AddAddressCubit extends Cubit<AddAddressState> {
  AddAddressCubit(this.addNewAddressUsecase) : super(const AddAddressState());

  final AddNewAddressUsecase addNewAddressUsecase;

  final formKey = GlobalKey<FormState>();

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

  Future<void> submit(BuildContext context) async {
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
      (userData) {
        emit(state.copyWith(isLoading: false));
        showFloatingMessageSuccess('addressAdded'.tr());
        context.push(AppRoutes.interests, extra: userData);
      },
    );
  }
}
