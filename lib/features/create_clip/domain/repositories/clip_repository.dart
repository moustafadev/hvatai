import 'package:dartz/dartz.dart';

abstract class ClipRepository {
  /// POST streams/{streamId}/clips
  /// body: FormData with { name: "...", video: MultipartFile }
  Future<Either<String, bool>> uploadClip({
    required int streamId,
    required String name,
    required String videoFilePath,
  });
}
