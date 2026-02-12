import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/company/domain/repositories/company_repository.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

class GetCompanyStreamsParams {
  final int userId;
  final String? sortBy; // 'live_first', 'popular', 'free_delivery'

  const GetCompanyStreamsParams({
    required this.userId,
    this.sortBy,
  });
}

class GetCompanyStreamsUsecase
    implements UseCase<MyStreamsResponse, GetCompanyStreamsParams> {
  const GetCompanyStreamsUsecase(this._repository);

  final CompanyRepository _repository;

  @override
  Future<Either<String, MyStreamsResponse>> call(
      GetCompanyStreamsParams params) {
    return _repository.getCompanyStreams(
      params.userId,
      sortBy: params.sortBy,
    );
  }
}
