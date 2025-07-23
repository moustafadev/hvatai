import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/delivery_model/delivery_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetDeliveryAddressUsecase implements UseCase<List<DeliveryModel>, Unit> {
  final ProfileRepository _profileRepository;

  GetDeliveryAddressUsecase(this._profileRepository);

  @override
  Future<Either<String, List<DeliveryModel>>> call(Unit params) {
    return _profileRepository.getDeliveryAddress();
  }
}
