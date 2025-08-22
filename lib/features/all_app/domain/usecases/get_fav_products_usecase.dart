import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class GetFavProductsUsecase implements UseCase<List<ProductModel>, Unit> {
  final AppRepository _appRepository;

  GetFavProductsUsecase(this._appRepository);

  @override
  Future<Either<String, List<ProductModel>>> call(Unit params) {
    return _appRepository.getFavProducts();
  }
}
