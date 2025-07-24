import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class EditDeliveryAddressUsecase
    implements UseCase<UserRegistrationData, EditDeliveryAddressParams> {
  final ProfileRepository _profileRepository;

  EditDeliveryAddressUsecase(this._profileRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(
      EditDeliveryAddressParams params) {
    return _profileRepository.editDeliveryAddress(params);
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
