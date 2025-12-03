// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    int? id,
    String? country,
    String? city,
    String? street,
    String? floor,
    String? apartment,
    String? frontDoor,
    String? intercomCode,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'is_primary') int? isPrimary,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

extension AddressModelExtension on AddressModel {
  UserRegistrationData toUserRegistrationData() {
    return UserRegistrationData(
      id: id,
      country: country,
      city: city,
      street: street,
      floor: floor,
      apartment: apartment,
      frontDoor: frontDoor,
      intercomCode: intercomCode,
      latitude: latitude,
      longitude: longitude,
      isPrimary: isPrimary,
    );
  }
}

extension AddressModelFactory on AddressModel {
  static AddressModel fromUserRegistrationData(UserRegistrationData data) {
    return AddressModel(
      id: data.id,
      country: data.country,
      city: data.city,
      street: data.street,
      floor: data.floor,
      apartment: data.apartment,
      frontDoor: data.frontDoor,
      intercomCode: data.intercomCode,
      latitude: data.latitude,
      longitude: data.longitude,
      isPrimary: data.isPrimary,
    );
  }
}
