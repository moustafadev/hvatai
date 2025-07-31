import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class GetFavCategoryUsecase implements UseCase<CategoryModel, Unit> {
  final AuthRepository _authRepository;

  GetFavCategoryUsecase(this._authRepository);

  @override
  Future<Either<String, CategoryModel>> call(Unit params) {
    return _authRepository.getFavCategories();
  }
}
