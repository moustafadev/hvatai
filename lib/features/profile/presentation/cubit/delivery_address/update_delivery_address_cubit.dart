import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_delivery_address_usecase.dart';
part 'update_delivery_address_state.dart';
part 'update_delivery_address_cubit.freezed.dart';

class UpdateDeliveryAddressCubit extends Cubit<UpdateDeliveryAddressState> {
  UpdateDeliveryAddressCubit(
    this.editDeliveryAddressUsecase,
    this.getDeliveryAddressDataUseCase,
    this.addNewAddressUsecase,
  ) : super(const UpdateDeliveryAddressState(user: UserRegistrationData()));

  final formKey = GlobalKey<FormState>();

  final GetDeliveryAddressUsecase getDeliveryAddressDataUseCase;
  final AddNewAddressUsecase addNewAddressUsecase;
  final EditDeliveryAddressUsecase editDeliveryAddressUsecase;

  final Map<String, TextEditingController> controllers = {
    'city': TextEditingController(),
    'street': TextEditingController(),
    'house': TextEditingController(),
    'apartment': TextEditingController(),
    'entrance': TextEditingController(),
    'index': TextEditingController(),
  };

  void loadInitialData(UserRegistrationData data) {
    _removeControllersListeners();

    emit(state.copyWith(user: data));

    // تعبئة الحقول من البيانات
    controllers['city']!.text = data.city ?? '';
    controllers['street']!.text = data.street ?? '';
    controllers['house']!.text = data.floor ?? '';
    controllers['apartment']!.text = data.apartment ?? '';
    controllers['entrance']!.text = data.frontDoor ?? '';
    controllers['index']!.text = data.intercomCode ?? '';

    _addControllersListeners();

    // تأكد من تحديث country في الـ state
    if ((data.country ?? '').isNotEmpty) {
      // استخدم updateField بدلاً من _updateUserField للتأكد من التحديث الصحيح
      updateField('country', data.country!);
    }
  }

  void _addControllersListeners() {
    controllers.forEach((key, controller) {
      controller.addListener(() {
        _updateUserField(key, controller.text);
      });
    });
  }

  void _removeControllersListeners() {
    controllers.forEach((key, controller) {
      controller.removeListener(() {
        _updateUserField(key, controller.text);
      });
    });
  }

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

  void updateField(String field, String value) {
    _removeControllersListeners();

    // تحديث الـ controller إذا كان موجوداً
    if (controllers.containsKey(field)) {
      controllers[field]!.text = value;
    }

    // تحديث الـ state دائماً
    _updateUserField(field, value);

    _addControllersListeners();

    // إضافة log للتأكد من التحديث (يمكن حذفه لاحقاً)
    print('Updated field: $field with value: $value');
    print('Current user country: ${state.user.country}');
  }

  void prefill(Map<String, String?> data) {
    data.forEach((key, value) {
      if ((value ?? '').isNotEmpty) {
        updateField(key, value!);
      }
    });
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

      final result = await addNewAddressUsecase.call(
        AddNewAddressParams(userRegistrationData: updatedUser),
      );

      result.fold(
        (failure) =>
            emit(state.copyWith(isLoading: false, errorMessage: failure)),
        (_) {
          emit(state.copyWith(isLoading: false));
          showFloatingMessageSuccess('profileUpdated'.tr());
          context.pop(true);
        },
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      floatingSnackBar(message: e.toString(), context: context);
    }
  }

  Future<void> editNewAddress(BuildContext context) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    try {
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
          floatingSnackBar(message: failure, context: context);
        },
        (userData) {
          emit(state.copyWith(isLoading: false, user: userData));
          showFloatingMessageSuccess('profileUpdated'.tr());
          context.pop(true);
        },
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
      floatingSnackBar(message: e.toString(), context: context);
    }
  }

  void toggleNewAddress() {
    emit(state.copyWith(doNewAddress: !state.doNewAddress));
  }

  @override
  Future<void> close() {
    _removeControllersListeners();
    controllers.forEach((_, controller) => controller.dispose());
    return super.close();
  }
}
