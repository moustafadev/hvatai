import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class CreateStreamUsecase implements UseCase<Unit, CreateStreamModel> {
  final ProfileRepository _profileRepository;

  CreateStreamUsecase(this._profileRepository);

  @override
  Future<Either<String, Unit>> call(CreateStreamModel params) {
    return _profileRepository.createStream(params);
  }
}
