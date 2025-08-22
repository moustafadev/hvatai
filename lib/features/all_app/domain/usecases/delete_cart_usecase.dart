import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';

class DeleteCartUsecase implements UseCase<Unit, DeleteCartParams> {
  final AppRepository _appRepository;

  DeleteCartUsecase(this._appRepository);

  @override
  Future<Either<String, Unit>> call(DeleteCartParams params) {
    return _appRepository.deleteCart(params);
  }
}

class DeleteCartParams {
  final int cartId;

  DeleteCartParams({required this.cartId});

  Map<String, dynamic> toJson() => {
        'id': cartId,
      };
}
