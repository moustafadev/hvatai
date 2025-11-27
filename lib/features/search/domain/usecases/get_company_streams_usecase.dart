import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class GetCompanyStreamsParams {
  final int userId;

  const GetCompanyStreamsParams({required this.userId});
}

class GetCompanyStreamsUsecase
    implements UseCase<MyStreamsResponse, GetCompanyStreamsParams> {
  const GetCompanyStreamsUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, MyStreamsResponse>> call(
      GetCompanyStreamsParams params) {
    return _repository.getCompanyStreams(params.userId);
  }
}

