import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/add_new_product/domain/repositories/add_new_product_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class GetProductCategoryUsecase
    implements UseCase<List<MainCategoryModel>, Unit> {
  final AddNewProductRepository _repository;

  GetProductCategoryUsecase(this._repository);

  @override
  Future<Either<String, List<MainCategoryModel>>> call(Unit params) {
    return _repository.getProductCategory();
  }
}

