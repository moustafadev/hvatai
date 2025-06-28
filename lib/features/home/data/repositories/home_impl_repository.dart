import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/datasources/local/app_local.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/locator.dart';

class HomeImplRepository implements HomeRepository {
  final ApiServiceHome _apiServiceAuth;
  final AppLocal appLocal = locator<AppLocal>();

  HomeImplRepository(this._apiServiceAuth);
  @override
  Future<Either<String, List<String>>> getInterestsCategories() async {
    return executeAndHandleError<List<String>>(() async {
      final res = _apiServiceAuth.getInterestsCategories();
      return [];
    });
  }
}
