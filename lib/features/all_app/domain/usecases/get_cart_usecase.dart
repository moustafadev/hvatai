import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';

class GetCartUsecase implements UseCase<List<CartModel>, Unit> {
  final AppRepository _appRepository;

  GetCartUsecase(this._appRepository);

  @override
  Future<Either<String, List<CartModel>>> call(Unit params) {
    return _appRepository.getAllCarts();
  }
}
