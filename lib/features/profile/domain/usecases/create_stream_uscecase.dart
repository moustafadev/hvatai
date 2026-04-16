import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class CreateStreamUsecase
    implements UseCase<StreamResponseModel, CreateStreamModel> {
  final ProfileRepository _profileRepository;

  CreateStreamUsecase(this._profileRepository);

  @override
  Future<Either<String, StreamResponseModel>> call(CreateStreamModel params) {
    return _profileRepository.createStream(params);
  }
}
