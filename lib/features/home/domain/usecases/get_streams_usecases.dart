import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

/// Fetch streams with optional status + pagination
class GetStreamsUsecase
    implements UseCase<StreamListResponseModel, GetStreamsParams> {
  final HomeRepository _repo;
  GetStreamsUsecase(this._repo);

  @override
  Future<Either<String, StreamListResponseModel>> call(GetStreamsParams params) {
    return _repo.getStreams(
      status: params.status,
      page: params.page,
      perPage: params.perPage,
    );
  }
}

class GetStreamsParams {
  final String? status; // e.g. 'live', 'ended', etc.
  final int page;
  final int perPage;

  GetStreamsParams({
    this.status,
    this.page = 1,
    this.perPage = 15,
  });

  Map<String, dynamic> toJson() => {
        if (status != null) 'status': status,
        'page': page,
        'per_page': perPage,
      };
}

/// Convenience use case for live streams (status = 'live')
class GetLiveStreamsUsecase
    implements UseCase<StreamListResponseModel, GetLiveStreamsParams> {
  final HomeRepository _repo;
  GetLiveStreamsUsecase(this._repo);

  @override
  Future<Either<String, StreamListResponseModel>> call(
      GetLiveStreamsParams params) {
    return _repo.getLiveStreams(
      page: params.page,
      perPage: params.perPage,
    );
  }
}

class GetLiveStreamsParams {
  final int page;
  final int perPage;

  GetLiveStreamsParams({
    this.page = 1,
    this.perPage = 15,
  });

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
      };
}
