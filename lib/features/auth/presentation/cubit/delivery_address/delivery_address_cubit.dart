import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
part 'delivery_address_cubit.freezed.dart';
part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  DeliveryAddressCubit(
    this.deliveryAddressUseCase,
  ) : super(DeliveryAddressState(user: UserRegistrationData()));
  DeliveryAddressUseCase deliveryAddressUseCase;

  final formKey = GlobalKey<FormState>();

  void initRegistrationModel(UserRegistrationData user) {
    emit(state.copyWith(user: user));
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

  Future<Map<String, String>> getAddressFromPosition(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    final place = placemarks.first;

    return {
      'country': place.country ?? '',
      'city': place.locality ?? '',
      'street': place.street ?? '',
      'index': place.postalCode ?? '',
    };
  }

  String normalizeCountry(String? raw) {
    switch (raw?.toLowerCase().trim()) {
      case 'united states':
        return 'USA';
      case 'russia':
        return 'Russia';
      case 'india':
        return 'India';
      default:
        return '';
    }
  }

  void updateField(String field, String value) {
    final updatedUser = state.user.copyWith(
        country: field == 'country' ? value : state.user.country,
        city: field == 'city' ? value : state.user.city,
        street: field == 'street' ? value : state.user.street,
        house: field == 'house' ? value : state.user.house,
        apartment: field == 'apartment' ? value : state.user.apartment,
        entrance: field == 'entrance' ? value : state.user.entrance,
        index: field == 'index' ? value : state.user.index);
    switch (field) {
      case 'country':
        emit(state.copyWith(country: value, user: updatedUser));
        break;
      case 'city':
        emit(state.copyWith(city: value, user: updatedUser));
        break;
      case 'street':
        emit(state.copyWith(street: value, user: updatedUser));
        break;
      case 'house':
        emit(state.copyWith(house: value, user: updatedUser));
        break;
      case 'apartment':
        emit(state.copyWith(apartment: value, user: updatedUser));
        break;
      case 'entrance':
        emit(state.copyWith(entrance: value, user: updatedUser));
        break;
      case 'index':
        emit(state.copyWith(index: value, user: updatedUser));
        break;
    }
  }

  void prefill(String? country) {
    if (country != null && country.isNotEmpty) {
      emit(state.copyWith(country: country));
    }
  }

  void submit(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'Please fill all fields correctly.'));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final addressData = state.toUserDeliveryAddressData();

    final result = await deliveryAddressUseCase.call(addressData);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ));
      },
      (userData) {
        emit(state.copyWith(isLoading: false));

        context.push(
          AppRoutes.interests,
          extra: state.user,
        );
      },
    );
  }
}
