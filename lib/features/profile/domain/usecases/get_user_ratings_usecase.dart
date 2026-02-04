import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';

class GetUserRatingsParams {
  final int userId;

  const GetUserRatingsParams({required this.userId});
}

class GetUserRatingsUsecase
    implements UseCase<UserRatingsResponse, GetUserRatingsParams> {
  final ProfileRepository _profileRepository;

  GetUserRatingsUsecase(this._profileRepository);

  @override
  Future<Either<String, UserRatingsResponse>> call(
    GetUserRatingsParams params,
  ) {
    return _profileRepository.getUserRatings(params.userId);
  }
}
