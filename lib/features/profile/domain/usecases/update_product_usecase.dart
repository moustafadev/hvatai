import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class UpdateProductParams {
  const UpdateProductParams({
    required this.productId,
    required this.formData,
  });

  final int productId;
  final FormData formData;
}

class UpdateProductUsecase
    implements UseCase<ProductModel, UpdateProductParams> {
  UpdateProductUsecase(this._repository);

  final ProfileRepository _repository;

  @override
  Future<Either<String, ProductModel>> call(UpdateProductParams params) {
    return _repository.updateProduct(params);
  }
}

