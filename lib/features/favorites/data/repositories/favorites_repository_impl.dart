import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/favorites/data/datasources/api_service_favorites.dart';
import 'package:hvatai/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl(this._apiServiceFavorites);

  final ApiServiceFavorites _apiServiceFavorites;

  @override
  Future<Either<String, List<ProductModel>>> getFavProducts() {
    return executeAndHandleError<List<ProductModel>>(() async {
      final response = await _apiServiceFavorites.getFavProducts();
      return response;
    });
  }
}
