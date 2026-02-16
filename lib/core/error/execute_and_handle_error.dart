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
  } on DioException catch (error, s) {
    final errorMessage = _dioReadableMessage(error);

    if (kDebugMode) {
      debugPrint('DioException: $errorMessage');
      debugPrint('Status: ${error.response?.statusCode}');
      debugPrint('Data: ${_safeToString(error.response?.data)}');
      debugPrint('Stack: $s');
    }

    // optional: handle 401
    if (error.response?.statusCode == 401) {
      // homeKey.currentState?.pushNamed('/login');
    }

    // ✅ IMPORTANT: throw same DioException but with a safe message
    throw DioException(
      requestOptions: error.requestOptions,
      response: error.response,
      type: error.type,
      error: error.error,
      message: errorMessage,
      stackTrace: s,
    );
  } on NoInternetException {
    throw NoInternetException();
  } catch (error, s) {
    if (kDebugMode) {
      debugPrint('Exception in executeAndHandleErrorServer: $error');
      debugPrint('Stack trace: $s');
    }
    throw Exception(error.toString());
  }
}

/// Builds a user-friendly message from DioException + response.data
String _dioReadableMessage(DioException error) {
  // 1) try extract message from backend response
  final extracted = _extractMessageFromData(error.response?.data);
  if (extracted != null && extracted.trim().isNotEmpty) return extracted;

  // 2) fallback by DioExceptionType
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return 'Connection timeout. Please check your internet connection.';
    case DioExceptionType.sendTimeout:
      return 'Request timeout. Please try again.';
    case DioExceptionType.receiveTimeout:
      return 'Response timeout. Please try again.';
    case DioExceptionType.badResponse:
      return 'Server error: ${error.response?.statusCode ?? ''}'.trim();
    case DioExceptionType.cancel:
      return 'Request was cancelled';
    case DioExceptionType.connectionError:
      return 'Connection error. Please check your internet connection.';
    case DioExceptionType.badCertificate:
      return 'Certificate error. Please check your connection.';
    case DioExceptionType.unknown:
      return 'Unknown network error occurred';
  }
}

/// Handles Map / List / String safely and extracts common keys:
/// {message: "..."} or {error: "..."} or {errors: {...}} etc.
String? _extractMessageFromData(dynamic data) {
  if (data == null) return null;

  if (data is String) return data;

  if (data is Map) {
    // Most common
    final msg = data['message'] ?? data['error'] ?? data['msg'];
    if (msg is String) return msg;

    // Laravel validation: { errors: {field: ["msg"]} }
    final errors = data['errors'];
    if (errors is Map) {
      final first = errors.values.isNotEmpty ? errors.values.first : null;
      if (first is List && first.isNotEmpty) return first.first.toString();
      return errors.toString();
    }

    return data.toString();
  }

  if (data is List) {
    if (data.isNotEmpty) return data.first.toString();
    return data.toString();
  }

  return data.toString();
}

String _safeToString(dynamic v) => v == null ? '' : v.toString();
