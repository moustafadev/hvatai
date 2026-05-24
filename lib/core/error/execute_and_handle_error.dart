import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/error/exception.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';

Future<Either<String, T>> executeAndHandleError<T>(
  Future<T> Function() function,
) async {
  try {
    // Removed network check - Dio will throw DioException automatically if no connection
    // This eliminates ~5 second delay on every request
    final result = await function();
    return Right(result);
  } on DioException catch (error) {
    // Handle network errors (no connection, timeout, etc.)
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.connectionError) {
      // Convert connection errors to NoInternetException for consistent error handling
      final failure = ErrorHandler.handle(NoInternetException());
      return Left(failure.message);
    }
    final failure = ErrorHandler.handle(error);
    return Left(failure.message);
  } catch (e, s) {
    debugPrint('Exception in executeAndHandleError$e');
    debugPrint('Stack trace in executeAndHandleError$s');
    final failure = ErrorHandler.handle(e);
    return Left(failure.message);
  }
}

Future<T> executeAndHandleErrorServer<T>(
  Future<T> Function() function,
) async {
  try {
    // Removed network check - Dio will throw DioException automatically if no connection
    // This eliminates ~5 second delay on every request
    final result = await function();
    return result;
  } on DioException catch (error) {
    // Handle network errors (no connection, timeout, etc.)
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.connectionError) {
      // Convert connection errors to NoInternetException for consistent error handling
      throw NoInternetException();
    }
    if (error.response?.statusCode == 401) {
      locator<AppLocal>().removeToken();
      ServerConfig.token = "";
      locator<AppLocal>().removeUserId();
      navigatorKey.currentContext?.go(AppRoutes.login);
    }
    if (error.response?.statusCode == 413) {
      throw DioException(
          requestOptions: error.requestOptions,
          response: error.response,
          message: 'Размер файла слишком велик');
    }
    final failure = ErrorHandler.handle(error);
    throw DioException(
      message: failure.message,
      requestOptions: error.requestOptions,
      response: error.response,
    );
  } on NoInternetException {
    throw NoInternetException();
  } on Exception catch (error, s) {
    print('Exception in executeAndHandleError$error');
    print('Stack trace in executeAndHandleError$s');
    final failure = ErrorHandler.handle(error);
    throw Exception(failure.message);
  }
}
