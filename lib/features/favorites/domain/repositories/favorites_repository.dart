import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

abstract class FavoritesRepository {
  Future<Either<String, List<ProductModel>>> getFavProducts();
  Future<Either<String, void>> toggleFavorite({
    required String type,
    required int id,
  });
}
