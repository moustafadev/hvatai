import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';

class DeleteAddressUsecase implements UseCase<Unit, DeleteAddressParams> {
  final AddressRepository _addressRepository;

  DeleteAddressUsecase(this._addressRepository);

  @override
  Future<Either<String, Unit>> call(DeleteAddressParams params) {
    return _addressRepository.deleteAddress(params);
  }
}

class DeleteAddressParams {
  final int addressId;

  DeleteAddressParams({required this.addressId});

  Map<String, dynamic> toJson() => {
        'id': addressId,
      };
}
