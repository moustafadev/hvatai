import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';

class AddFavCategoryUsecase implements UseCase<Unit, AddFavCategoryParams> {
  final AuthRepository _authRepository;

  AddFavCategoryUsecase(this._authRepository);

  @override
  Future<Either<String, Unit>> call(AddFavCategoryParams params) {
    return _authRepository.addFavCategory(params);
  }
}

class AddFavCategoryParams {
  final int? categoryId;
  final List<int>? categoryIds;

  AddFavCategoryParams({
    this.categoryId,
    this.categoryIds,
  }) : assert(
          (categoryId != null) ^ (categoryIds != null),
          'Either categoryId or categoryIds must be provided, but not both',
        );

  Map<String, dynamic> toJson() {
    if (categoryId != null) {
      return {'category_id': categoryId};
    } else {
      return {'category_ids': categoryIds};
    }
  }
}
