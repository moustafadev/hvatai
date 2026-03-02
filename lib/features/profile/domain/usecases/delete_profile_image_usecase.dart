import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class DeleteProfileImageUsecase implements UseCase<bool, Unit> {
  final ProfileRepository _repository;

  const DeleteProfileImageUsecase(this._repository);

  @override
  Future<Either<String, bool>> call(Unit params) {
    return _repository.deleteProfileImage();
  }
}
