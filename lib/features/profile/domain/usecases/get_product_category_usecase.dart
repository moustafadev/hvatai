import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetProductCategoryUsecase implements UseCase<CategoryModel, Unit> {
  final ProfileRepository _profileRepository;

  GetProductCategoryUsecase(this._profileRepository);

  @override
  Future<Either<String, CategoryModel>> call(Unit params) {
    return _profileRepository.getProductCategory();
  }
}
