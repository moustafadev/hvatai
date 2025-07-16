import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'delivery_address_cubit.freezed.dart';
part 'delivery_address_state.dart';

class UpdateDeliveryAddressCubit extends Cubit<UpdateDeliveryAddressState> {
  UpdateDeliveryAddressCubit() : super(const UpdateDeliveryAddressState());

  final formKey = GlobalKey<FormState>();

  void prefill(String? country) {
    if (country != null && country.isNotEmpty) {
      emit(state.copyWith(country: country));
    }
  }

  void updateField(String field, String value) {
    switch (field) {
      case 'country':
        emit(state.copyWith(country: value));
        break;
      case 'city':
        emit(state.copyWith(city: value));
        break;
      case 'street':
        emit(state.copyWith(street: value));
        break;
      case 'house':
        emit(state.copyWith(house: value));
        break;
      case 'apartment':
        emit(state.copyWith(apartment: value));
        break;
      case 'entrance':
        emit(state.copyWith(entrance: value));
        break;
      case 'index':
        emit(state.copyWith(index: value));
        break;
    }
  }

  void toggleNewAddress() {
    emit(state.copyWith(
      doNewAddress: !state.doNewAddress,
    ));
  }

  void submit(BuildContext context, UserRegistrationData baseData) {
    if (!formKey.currentState!.validate()) return;

    final updatedData = baseData.copyWith(
      country: state.country,
      city: state.city,
      street: state.street,
      house: state.house,
      apartment: state.apartment,
      entrance: state.entrance,
      index: state.index,
    );

    context.push(
      AppRoutes.interests,
      extra: updatedData, // must be a UserRegistrationData instance
    );
  }
}
