import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<String, bool>> login(LoginParams params);
}
