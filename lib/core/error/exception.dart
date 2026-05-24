
import 'package:dio/dio.dart';

class Failure {
  final String? errorMessage;

  String get message => errorMessage ?? '';

  Failure({
    this.errorMessage,
  });

  @override
  String toString() {
    if (message.isNotEmpty) {
      return message;
    } else {
      return "Something went wrong, Please try again";
    }
  }
}

class UnknownException extends Failure {
  final String? errMessage;
  UnknownException([this.errMessage]) : super(errorMessage: errMessage);

  @override
  String toString() {
    if ((errMessage ?? '').isNotEmpty) {
      return message;
    } else {
      return "Something went wrong, Please try again";
    }
  }
}

class ErrorHandler {
  static String? _extractSingleErrorMessage(Map<String, dynamic> errorData) {
    // 1️⃣ First: nested "errors" map
    final errorsMap = errorData['errors'];
    if (errorsMap is Map) {
      for (final entry in errorsMap.entries) {
        final value = entry.value;

        if (value is List && value.isNotEmpty) {
          final first = value.first;
          if (first is String && first.trim().isNotEmpty) {
            return first.trim();
          }
        } else if (value is String && value.trim().isNotEmpty) {
          return value.trim();
        }
      }
    }

    // 2️⃣ Then: top-level "message"
    final message = errorData['message'];
    if (message is String && message.trim().isNotEmpty) {
      return message.trim();
    }

    // 3️⃣ Then: top-level "error"
    final error = errorData['error'];
    if (error is String && error.trim().isNotEmpty) {
      return error.trim();
    }

    return null;
  }

  static Failure handle(dynamic error) {
    if (error is DioException) {
      String? detailMessage;
      final responseData = error.response?.data;

      if (responseData is Map<String, dynamic>) {
        detailMessage = _extractSingleErrorMessage(responseData);
      }

      final finalMessage = detailMessage ??
          error.message ??
          "Ошибка подключения к серверу\nпожалуйста, попробуйте позже";

      return Failure(errorMessage: finalMessage);
    } else if (error is NoInternetException) {
      return Failure(
        errorMessage: "Похоже, вы не подключены к интернету",
      );
    } else if (error is Exception) {
      return Failure(errorMessage: error.toString());
    } else {
      return Failure(
        errorMessage: "Произошла неожиданная ошибка",
      );
    }
  }
}

class NoInternetException implements Exception {}
