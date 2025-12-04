import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';

class AddNewAddressUsecase
    implements UseCase<UserRegistrationData, AddNewAddressParams> {
  final AddressRepository _addressRepository;

  AddNewAddressUsecase(this._addressRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      AddNewAddressParams params) {
    return _addressRepository.addNewAddress(params);
  }
}

class AddNewAddressParams {
  final UserRegistrationData userRegistrationData;

  AddNewAddressParams({
    required this.userRegistrationData,
  });

  Map<String, dynamic> toJson() {
    return userRegistrationData.toJson();
  }
}
