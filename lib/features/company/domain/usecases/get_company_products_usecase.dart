import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/company/domain/repositories/company_repository.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class GetCompanyProductsParams {
  const GetCompanyProductsParams({required this.userId});

  final int userId;
}

class GetCompanyProductsUsecase
    implements UseCase<List<ProductModel>, GetCompanyProductsParams> {
  const GetCompanyProductsUsecase(this._repository);

  final CompanyRepository _repository;

  @override
  Future<Either<String, List<ProductModel>>> call(
      GetCompanyProductsParams params) {
    return _repository.getCompanyProducts(params.userId);
  }
}
