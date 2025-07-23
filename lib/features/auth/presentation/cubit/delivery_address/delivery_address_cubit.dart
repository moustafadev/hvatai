import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
part 'delivery_address_cubit.freezed.dart';
part 'delivery_address_state.dart';

class DeliveryAddressCubit extends Cubit<DeliveryAddressState> {
  DeliveryAddressCubit(this.deliveryAddressUseCase)
      : super(DeliveryAddressState(user: UserRegistrationData()));

  final DeliveryAddressUseCase deliveryAddressUseCase;
  final formKey = GlobalKey<FormState>();

  final cityController = TextEditingController();
  final streetController = TextEditingController();
  final houseController = TextEditingController();
  final apartmentController = TextEditingController();
  final entranceController = TextEditingController();
  final indexController = TextEditingController();

  void initRegistrationModel(UserRegistrationData user) {
    _removeControllersListeners();

    emit(state.copyWith(user: user));

    cityController.text = user.city ?? '';
    streetController.text = user.street ?? '';
    houseController.text = user.floor ?? '';
    apartmentController.text = user.apartment ?? '';
    entranceController.text = user.frontDoor ?? '';
    indexController.text = user.intercomCode ?? '';

    _addControllersListeners();
  }

  void _addControllersListeners() {
    cityController.addListener(_updateCity);
    streetController.addListener(_updateStreet);
    houseController.addListener(_updateHouse);
    apartmentController.addListener(_updateApartment);
    entranceController.addListener(_updateEntrance);
    indexController.addListener(_updateIndex);
  }

  void _removeControllersListeners() {
    cityController.removeListener(_updateCity);
    streetController.removeListener(_updateStreet);
    houseController.removeListener(_updateHouse);
    apartmentController.removeListener(_updateApartment);
    entranceController.removeListener(_updateEntrance);
    indexController.removeListener(_updateIndex);
  }

  void _updateCity() => _updateUserField('city', cityController.text);
  void _updateStreet() => _updateUserField('street', streetController.text);
  void _updateHouse() => _updateUserField('house', houseController.text);
  void _updateApartment() =>
      _updateUserField('apartment', apartmentController.text);
  void _updateEntrance() =>
      _updateUserField('entrance', entranceController.text);
  void _updateIndex() => _updateUserField('index', indexController.text);

  void _updateUserField(String field, String value) {
    final user = state.user;
    final updatedUser = user.copyWith(
      country: field == 'country' ? value : user.country,
      city: field == 'city' ? value : user.city,
      street: field == 'street' ? value : user.street,
      floor: field == 'house' ? value : user.floor,
      apartment: field == 'apartment' ? value : user.apartment,
      frontDoor: field == 'entrance' ? value : user.frontDoor,
      intercomCode: field == 'index' ? value : user.intercomCode,
    );
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

  void updateField(String field, String value) {
    _removeControllersListeners();

    switch (field) {
      case 'city':
        cityController.text = value;
        break;
      case 'street':
        streetController.text = value;
        break;
      case 'house':
        houseController.text = value;
        break;
      case 'apartment':
        apartmentController.text = value;
        break;
      case 'entrance':
        entranceController.text = value;
        break;
      case 'index':
        indexController.text = value;
        break;
    }

    _updateUserField(field, value);
    _addControllersListeners();
  }

  void prefill(String? country) {
    if (country != null && country.isNotEmpty) {
      updateField('country', country);
    }
  }

  Future<void> submit(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'Please fill all fields correctly.'));
      floatingSnackBar(message: 'error_fill_all_fields'.tr(), context: context);
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    try {
      final position = await determinePosition();

      final updatedUser = state.user.copyWith(
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
        },
        (userData) {
          emit(state.copyWith(isLoading: false));
          context.push(AppRoutes.interests, extra: userData);
        },
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      floatingSnackBar(message: e.toString(), context: context);
    }
  }

  @override
  Future<void> close() {
    _removeControllersListeners();
    cityController.dispose();
    streetController.dispose();
    houseController.dispose();
    apartmentController.dispose();
    entranceController.dispose();
    indexController.dispose();
    return super.close();
  }
}
