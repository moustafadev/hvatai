import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/add_new_product/data/datasources/api_service_add_new_product.dart';
import 'package:hvatai/features/add_new_product/domain/repositories/add_new_product_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddNewProductImplRepository implements AddNewProductRepository {
  final ApiServiceAddNewProduct _apiService;

  AddNewProductImplRepository(this._apiService);

  @override
  Future<Either<String, ProductModel>> addNewProduct(ProductModel product) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiService.addNewProduct(product);
      return res;
    });
  }

  @override
  Future<Either<String, List<MainCategoryModel>>> getProductCategory() {
    return executeAndHandleError<List<MainCategoryModel>>(() async {
      final res = await _apiService.getProductCategory();
      return res;
    });
  }

  @override
  Future<Either<String, List<MainCategoryModel>>> getLastUsedCategories() {
    return executeAndHandleError<List<MainCategoryModel>>(() async {
      final res = await _apiService.getLastUsedCategories();
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> updateProduct({
    required int productId,
    required ProductModel product,
  }) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiService.updateProduct(
        productId: productId,
        product: product,
      );
      return res;
    });
  }
}

