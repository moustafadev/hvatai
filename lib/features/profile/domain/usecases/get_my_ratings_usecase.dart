import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';

class GetMyRatingsUsecase
    implements UseCase<MyRatingsResponse, NoParams> {
  final ProfileRepository _profileRepository;

  GetMyRatingsUsecase(this._profileRepository);

  @override
  Future<Either<String, MyRatingsResponse>> call(NoParams params) {
    return _profileRepository.getMyRatings();
  }
}
