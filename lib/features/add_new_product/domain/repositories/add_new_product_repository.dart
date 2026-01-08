import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

abstract class AddNewProductRepository {
  Future<Either<String, List<MainCategoryModel>>> getProductCategory();
  Future<Either<String, List<MainCategoryModel>>> getLastUsedCategories();
  Future<Either<String, ProductModel>> addNewProduct(FormData formData);
  Future<Either<String, ProductModel>> updateProduct({
    required int productId,
    required FormData formData,
  });
}

