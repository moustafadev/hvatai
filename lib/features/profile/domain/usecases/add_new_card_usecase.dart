import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class AddNewCardUsecase implements UseCase<CardModel, AddNewCardParams> {
  final ProfileRepository _profileRepository;

  AddNewCardUsecase(this._profileRepository);

  @override
  Future<Either<String, CardModel>> call(AddNewCardParams params) {
    return _profileRepository.addNewCard(params);
  }
}

class AddNewCardParams {
  final CardModel cardModel;

  AddNewCardParams({
    required this.cardModel,
  });

  Map<String, dynamic> toJson() {
    return cardModel.toJson();
  }
}
