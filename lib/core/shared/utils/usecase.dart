import 'package:dartz/dartz.dart';

abstract class UseCase<DataType, Params> {
  Future<Either<String, DataType>> call(Params params);
}
