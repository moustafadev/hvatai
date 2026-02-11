import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class DeleteClipUsecase implements UseCase<bool, int> {
  final ClipRepository repository;

  DeleteClipUsecase(this.repository);

  @override
  Future<Either<String, bool>> call(int clipId) async {
    return await repository.deleteClip(clipId);
  }
}
