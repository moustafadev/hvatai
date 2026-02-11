import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class GetUserClipsUsecase implements UseCase<ClipsResponseModel, int> {
  final ClipRepository repository;

  GetUserClipsUsecase(this.repository);

  @override
  Future<Either<String, ClipsResponseModel>> call(int userId) async {
    return await repository.getUserClips(userId);
  }
}
