import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class AddFavProductUsecase
    implements UseCase<ProductModel, AddFavProductParams> {
  final AppRepository _appRepository;

  AddFavProductUsecase(this._appRepository);

  @override
  Future<Either<String, ProductModel>> call(AddFavProductParams params) {
    return _appRepository.addFavProduct(params);
  }
}

class AddFavProductParams {
  final int productId;

  AddFavProductParams({
    required this.productId,
  });

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
    };
  }
}
