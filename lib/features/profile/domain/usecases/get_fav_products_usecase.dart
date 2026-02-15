import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetFavProductsUsecase implements UseCase<List<ProductModel>, Unit> {
  final ProfileRepository _profileRepository;

  GetFavProductsUsecase(this._profileRepository);

  @override
  Future<Either<String, List<ProductModel>>> call(Unit params) {
    return _profileRepository.getFavProducts();
  }
}
