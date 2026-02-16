import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hvatai/core/error/exception.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:hvatai/locator.dart';

Future<Either<String, T>> executeAndHandleError<T>(
  Future<T> Function() function,
) async {
  try {
    final internet = await locator<NetworkChecker>().isConnected;
    if (!internet) throw NoInternetException();
    final result = await function();
    return Right(result);
  } catch (e, s) {
    if (kDebugMode) {
      debugPrint('Exception in executeAndHandleError$e');
      debugPrint('Stack trace in executeAndHandleError$s');
    }
    final failure = ErrorHandler.handle(e);
    return Left(failure.errorMessage ?? "");
  }
}

Future<T> executeAndHandleErrorServer<T>(Future<T> Function() function) async {
  try {
    final internet = await locator<NetworkChecker>().isConnected;
    if (!internet) throw NoInternetException();
    final result = await function();
    return result;
  } on DioException catch (error) {
    if (error.response?.statusCode == 401) {
      // homeKey.currentState?.pushNamed('/login');
    }
    String errorMessage = 'Network error occurred';
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage =
            'Connection timeout. Please check your internet connection.';
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = 'Request timeout. Please try again.';
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = 'Response timeout. Please try again.';
        break;
      case DioExceptionType.badResponse:
        errorMessage = 'Server error: ${error.response?.statusCode}';
        break;
      case DioExceptionType.cancel:
        errorMessage = 'Request was cancelled';
        break;
      case DioExceptionType.connectionError:
        errorMessage =
            'Connection error. Please check your internet connection.';
        break;
      case DioExceptionType.badCertificate:
        errorMessage = 'Certificate error. Please check your connection.';
        break;
      case DioExceptionType.unknown:
        errorMessage = 'Unknown network error occurred';
        break;
    }
    if (kDebugMode) {
      debugPrint(error.response?.data);
    }
    throw DioException(
      requestOptions: error.requestOptions,
      response: error.response,
      type: error.type,
      error: error.error,
      message: errorMessage,
    );
  } on NoInternetException {
    throw NoInternetException();
  } on Exception catch (error, s) {
    if (kDebugMode) {
      debugPrint('Exception in executeAndHandleError$error');
      debugPrint('Stack trace in executeAndHandleError$s');
    }
    throw Exception(error.toString());
  }
}
