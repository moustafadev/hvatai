import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class UpdateNameUseCase
    implements UseCase<UserRegistrationData, UpdateNameParams> {
  final AuthRepository _authRepository;

  UpdateNameUseCase(this._authRepository);

  @override
  Future<Either<String, UserRegistrationData>> call(UpdateNameParams params) {
    return _authRepository.updateName(params);
  }
}

class UpdateNameParams {
  final String name;

  UpdateNameParams({required this.name});

  Map<String, dynamic> toJson() => {'name': name};
}
