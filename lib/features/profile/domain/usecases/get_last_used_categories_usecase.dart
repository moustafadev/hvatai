import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetLastUsedCategoriesUsecase
    implements UseCase<List<MainCategoryModel>, Unit> {
  final ProfileRepository _profileRepository;

  GetLastUsedCategoriesUsecase(this._profileRepository);

  @override
  Future<Either<String, List<MainCategoryModel>>> call(Unit params) {
    return _profileRepository.getLastUsedCategories();
  }
}
