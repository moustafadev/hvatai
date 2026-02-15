import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/address/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/address/presentation/address.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';

part 'address_form_cubit.freezed.dart';
part 'address_form_state.dart';

class AddressFormCubit extends Cubit<AddressFormState> {
  AddressFormCubit(
    this.addNewAddressUsecase,
    this.editDeliveryAddressUsecase,
  ) : super(const AddressFormState());

  final AddNewAddressUsecase addNewAddressUsecase;
  final EditDeliveryAddressUsecase editDeliveryAddressUsecase;

  final formKey = GlobalKey<FormState>();

  void init({required AddressFormMode mode, UserRegistrationData? initial}) {
    if (mode == AddressFormMode.edit && initial != null) {
      emit(state.copyWith(
        mode: mode,
        user: initial.copyWith(
          country: initial.country ?? '',
          city: initial.city ?? '',
          street: initial.street ?? '',
          floor: initial.floor ?? '',
          apartment: initial.apartment ?? '',
          frontDoor: initial.frontDoor ?? '',
          intercomCode: initial.intercomCode ?? '',
        ),
        lastUpdated: DateTime.now().millisecondsSinceEpoch,
      ));
    } else {
      emit(state.copyWith(
        mode: AddressFormMode.add,
        user: const UserRegistrationData(isPrimary: 1),
        lastUpdated: DateTime.now().millisecondsSinceEpoch,
      ));
    }
  }

  void updateField(String field, String value) {
    final u = state.user;
    UserRegistrationData updated;

    switch (field) {
      case 'country':
        updated = u.copyWith(country: value);
        break;
      case 'city':
        updated = u.copyWith(city: value);
        break;
      case 'street':
        updated = u.copyWith(street: value);
        break;
      case 'house':
        updated = u.copyWith(floor: value);
        break;
      case 'apartment':
        updated = u.copyWith(apartment: value);
        break;
      case 'entrance':
        updated = u.copyWith(frontDoor: value);
        break;
      case 'index':
        updated = u.copyWith(intercomCode: value);
        break;
      default:
        updated = u;
    }

    emit(state.copyWith(user: updated));
  }

  bool get isFormValid {
    final u = state.user;
    return [
      u.country,
      u.city,
      u.street,
      u.floor,
      u.apartment,
      u.frontDoor,
      u.intercomCode,
    ].every((e) => (e ?? '').trim().isNotEmpty);
  }

  void toggleMainAddress() {
    final newValue = (state.user.isPrimary ?? 0) == 1 ? 0 : 1;
    emit(state.copyWith(user: state.user.copyWith(isPrimary: newValue)));
  }

  Future<Position?> determinePosition() async {
    try {
      final enabled = await Geolocator.isLocationServiceEnabled();
      if (!enabled) throw Exception();

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) throw Exception();
      }
      if (permission == LocationPermission.deniedForever) throw Exception();

      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (_) {
      return null;
    }
  }

  Future<UserRegistrationData> getAddressFromPosition(Position position) async {
    final placemarks =
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

  void addMyLocation() async {
    try {
      final position = await determinePosition();
      if (position == null) return;

      final data = await getAddressFromPosition(position);

      emit(state.copyWith(
        user: state.user.copyWith(
          country: data.country ?? state.user.country,
          city: data.city ?? state.user.city,
          street: data.street ?? state.user.street,
          intercomCode: data.intercomCode ?? state.user.intercomCode,
          latitude: data.latitude,
          longitude: data.longitude,
        ),
        lastUpdated: DateTime.now().millisecondsSinceEpoch,
      ));
    } catch (_) {
      showFloatingMessageError('somethingWentWrong'.tr());
    }
  }

  Future<void> submit(BuildContext context) async {
    if (!formKey.currentState!.validate() || !isFormValid) {
      showFloatingMessageError('fillAllFields'.tr());
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final position = await determinePosition();
    final u = state.user.copyWith(
      latitude: position?.latitude.toString() ?? state.user.latitude,
      longitude: position?.longitude.toString() ?? state.user.longitude,
      isPrimary: state.user.isPrimary ?? 1,
    );

    if (state.mode == AddressFormMode.add) {
      final result = await addNewAddressUsecase.call(
        AddNewAddressParams(userRegistrationData: u),
      );

      result.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, errorMessage: failure));
          showFloatingMessageError('somethingWentWrong'.tr());
        },
        (newAddress) {
          emit(state.copyWith(isLoading: false, user: newAddress));
          context.read<CartCubit>().getDeliveryAddress();
          showFloatingMessageSuccess('addressAdded'.tr());
          context.pop(newAddress);
        },
      );
      return;
    }

    // edit
    final result = await editDeliveryAddressUsecase.call(
      EditDeliveryAddressParams(userRegistrationData: u),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (updated) {
        emit(state.copyWith(isLoading: false, user: updated));
        context.read<CartCubit>().getDeliveryAddress();
        showFloatingMessageSuccess('AddressUpdated'.tr());
        context.pop(updated);
      },
    );
  }
}
