import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class AddNewProductUsecase
    implements UseCase<ProductModel, AddNewProductParams> {
  final ProfileRepository _profileRepository;

  AddNewProductUsecase(this._profileRepository);

  @override
  Future<Either<String, ProductModel>> call(AddNewProductParams params) {
    return _profileRepository.addNewProduct(params);
  }
}

class AddNewProductParams {
  final FormData formData;

  AddNewProductParams({required this.formData});
}
