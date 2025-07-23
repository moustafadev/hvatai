import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
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
  final UserRegistrationData userRegistrationData;
  DeliveryAddressParams({
    required this.userRegistrationData,
  });

  Map<String, dynamic> toJson() {
    return userRegistrationData.toJson();
  }
}
