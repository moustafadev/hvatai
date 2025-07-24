import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetCardUsecase implements UseCase<List<CardModel>, Unit> {
  final ProfileRepository _profileRepository;

  GetCardUsecase(this._profileRepository);

  @override
  Future<Either<String, List<CardModel>>> call(Unit params) {
    return _profileRepository.getAllCards();
  }
}
