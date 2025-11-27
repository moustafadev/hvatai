import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class GetUserDataParams {
  const GetUserDataParams({required this.userId});

  final int userId;
}

class GetUserDataUsecase implements UseCase<UserDataModel, GetUserDataParams> {
  const GetUserDataUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, UserDataModel>> call(GetUserDataParams params) {
    return _repository.getUserData(params.userId);
  }
}
