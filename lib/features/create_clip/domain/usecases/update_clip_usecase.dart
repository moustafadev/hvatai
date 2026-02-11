import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class UpdateClipParams {
  final int clipId;
  final String name;
  final bool status;

  UpdateClipParams({
    required this.clipId,
    required this.name,
    required this.status,
  });
}

class UpdateClipUsecase implements UseCase<ClipModel, UpdateClipParams> {
  final ClipRepository repository;

  UpdateClipUsecase(this.repository);

  @override
  Future<Either<String, ClipModel>> call(UpdateClipParams params) async {
    return await repository.updateClip(
      clipId: params.clipId,
      name: params.name,
      status: params.status,
    );
  }
}
