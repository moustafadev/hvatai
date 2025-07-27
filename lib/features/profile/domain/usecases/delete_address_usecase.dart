import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class DeleteAddressUsecase implements UseCase<Unit, DeleteAddressParams> {
  final ProfileRepository _profileRepository;

  DeleteAddressUsecase(this._profileRepository);

  @override
  Future<Either<String, Unit>> call(DeleteAddressParams params) {
    return _profileRepository.deleteAddress(params);
  }
}

class DeleteAddressParams {
  final int addressId;

  DeleteAddressParams({required this.addressId});

  Map<String, dynamic> toJson() => {
        'id': addressId,
      };
}
