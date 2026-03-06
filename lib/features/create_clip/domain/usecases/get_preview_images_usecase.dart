import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/create_clip/data/models/preview_images/preview_images_model.dart';
import 'package:hvatai/features/create_clip/domain/repositories/clip_repository.dart';

class GetPreviewImagesUsecase
    implements UseCase<PreviewImagesResponse, int> {
  final ClipRepository repository;

  GetPreviewImagesUsecase(this.repository);

  @override
  Future<Either<String, PreviewImagesResponse>> call(int streamId) async {
    return await repository.getPreviewImages(streamId);
  }
}