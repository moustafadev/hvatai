import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class GetFavProductsUsecase implements UseCase<List<ProductModel>, Unit> {
  final FavoritesRepository _favoritesRepository;

  GetFavProductsUsecase(this._favoritesRepository);

  @override
  Future<Either<String, List<ProductModel>>> call(Unit params) {
    return _favoritesRepository.getFavProducts();
  }
}
