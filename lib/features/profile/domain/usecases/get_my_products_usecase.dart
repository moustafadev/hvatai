import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetMyProductsParams {
  const GetMyProductsParams({required this.categoryIds});

  final List<int> categoryIds;
}

class GetMyProductsUsecase
    implements UseCase<List<ProductModel>, GetMyProductsParams> {
  final ProfileRepository _profileRepository;

  GetMyProductsUsecase(this._profileRepository);

  @override
  Future<Either<String, List<ProductModel>>> call(
    GetMyProductsParams params,
  ) {
    return _profileRepository.getMyProducts(categoryIds: params.categoryIds);
  }
}
