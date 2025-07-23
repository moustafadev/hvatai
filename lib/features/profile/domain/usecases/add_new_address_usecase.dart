import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/delivery_model/delivery_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class AddNewAddressUsecase
    implements UseCase<DeliveryModel, AddNewAddressParams> {
  final ProfileRepository _profileRepository;

  AddNewAddressUsecase(this._profileRepository);

  @override
  Future<Either<String, DeliveryModel>> call(AddNewAddressParams params) {
    return _profileRepository.addNewAddress(params);
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
