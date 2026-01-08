import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/add_new_product/domain/repositories/add_new_product_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddNewProductUsecase
    implements UseCase<ProductModel, AddNewProductParams> {
  final AddNewProductRepository _repository;

  AddNewProductUsecase(this._repository);

  @override
  Future<Either<String, ProductModel>> call(AddNewProductParams params) {
    return _repository.addNewProduct(params.formData);
  }
}

class AddNewProductParams {
  final FormData formData;

  AddNewProductParams({required this.formData});
}

