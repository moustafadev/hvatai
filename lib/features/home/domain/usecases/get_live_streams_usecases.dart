
import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

/// Convenience use case for live streams (status = 'live')
class GetLiveStreamsUsecase
    implements UseCase<StreamListResponseModel, GetLiveStreamsParams> {
  final HomeRepository _repo;
  GetLiveStreamsUsecase(this._repo);

  @override
  Future<Either<String, StreamListResponseModel>> call(
      GetLiveStreamsParams params) {
    return _repo.getLiveStreams(
      getLiveStreamsParams: params,
    );
  }
}

class GetLiveStreamsParams {
  final int page;
  final int perPage;
  final List<int>? categoryIds;

  GetLiveStreamsParams({
    this.page = 1,
    this.perPage = 15,
    this.categoryIds,
  });

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        if (categoryIds != null && categoryIds!.isNotEmpty)
          'category_ids[]': categoryIds,
      };
}
