import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';

class GetDeliveryAddressUsecase
    implements UseCase<List<UserRegistrationData>, Unit> {
  final AddressRepository _addressRepository;

  GetDeliveryAddressUsecase(this._addressRepository);

  @override
  Future<Either<String, List<UserRegistrationData>>> call(Unit params) {
    return _addressRepository.getDeliveryAddress();
  }
}
