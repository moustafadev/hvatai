import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';

class EditDeliveryAddressUsecase
    implements UseCase<UserRegistrationData, EditDeliveryAddressParams> {
  final AddressRepository _addressRepository;

  EditDeliveryAddressUsecase(this._addressRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      EditDeliveryAddressParams params) {
    return _addressRepository.editDeliveryAddress(params);
  }
}

class EditDeliveryAddressParams {
  final UserRegistrationData userRegistrationData;

  EditDeliveryAddressParams({
    required this.userRegistrationData,
  });

  Map<String, dynamic> toJson() {
    return userRegistrationData.toJson();
  }
}
