import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class DeliveryAddressUseCase
    implements UseCase<UserRegistrationData, DeliveryAddressParams> {
  final AuthRepository _authRepository;

  DeliveryAddressUseCase(this._authRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      DeliveryAddressParams params) {
    return _authRepository.deliveryAddress(params);
  }
}

class DeliveryAddressParams {
  final String street;
  final String house;
  final String apartment;
  final String entrance;
  final String index;
  final String city;

  DeliveryAddressParams({
    required this.street,
    required this.house,
    required this.apartment,
    required this.entrance,
    required this.index,
    required this.city,
  });

  Map<String, dynamic> toJson() {
    return {
      "city": city,
      "street": street,
      "Apartment": apartment,
      "Floor": house,
      "Front_door": entrance,
      "Intercom_code": index,
      "is_primary": false,
      "latitude": "37.7749",
      "longitude": "-122.4194"
    };
  }
}
