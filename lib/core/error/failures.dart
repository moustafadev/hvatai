import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

class UnimplementedFailure extends Failure {
  const UnimplementedFailure({super.message = 'Метод не реализован'});
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({super.message = 'Ошибка базы данных'});
}

class ServerFailure extends Failure {
  const ServerFailure({super.message = 'Ошибка сервера'});
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({super.message = 'Ошибка ожидания ответа от сервера'});
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = 'Ошибка работы с кэшем'});
}

class DioFailure extends Failure {
  const DioFailure({super.message = 'Ошибка интернет-клиента'});
}

class JsonFailure extends Failure {
  const JsonFailure({super.message = 'Ошибка чтения JSON'});
}

class AuthFailure extends Failure {
  const AuthFailure({super.message = 'Ошибка авторизации'});
}

class MessageFailure extends Failure {
  const MessageFailure({required super.message});
}
