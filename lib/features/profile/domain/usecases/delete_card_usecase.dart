import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class DeleteCardUsecase implements UseCase<Unit, DeleteCardParams> {
  final ProfileRepository _profileRepository;

  DeleteCardUsecase(this._profileRepository);

  @override
  Future<Either<String, Unit>> call(DeleteCardParams params) {
    return _profileRepository.deleteCard(params);
  }
}

class DeleteCardParams {
  final int cardId;

  DeleteCardParams({required this.cardId});

  Map<String, dynamic> toJson() => {
        'id': cardId,
      };
}
