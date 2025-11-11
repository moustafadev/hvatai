import 'dart:convert';

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
  static Failure handle(dynamic error) {
    if (error is DioException) {
      var type = _showMessage(error.type);
      if (type != null) {
        return Failure(errorMessage: error.response?.data['message']);
      } else if (error.response?.data != null) {
        return _handleApiError(error.response?.data);
      } else {
        return Failure(
          errorMessage: error.message ??
              "Error connecting to the server, please try again later",
        );
      }
    } else if (error is NoInternetException) {
      return Failure(
        errorMessage: "It seems you're not connected to the internet",
      );
    } else if (error is Exception) {
      return Failure(errorMessage: error.toString());
    } else {
      return Failure(
        errorMessage: "An unexpected error occurred",
      );
    }
  }

  static Failure _handleApiError(dynamic data) {
    try {
      if (data is String) {
        data = json.decode(data);
      }
      if (data != null && data is Map<String, dynamic>) {
        if (data.containsKey('message')) {
          return Failure(errorMessage: data['message']);
        } else if (data.containsKey('errors')) {
          var errors = data['errors'] as Map<String, dynamic>;
          String errorMessages = errors.entries.map((entry) {
            if (entry.value is List) {
              // Convert each list of messages into a single string separated by commas.
              return "${entry.value.join('\n')}";
            } else {
              return "${entry.value}";
            }
          }).join('\n');
          return Failure(errorMessage: errorMessages);
        } else if (data.containsKey('error')) {
          if (data['error'] is String) {
            return Failure(errorMessage: data['error']);
          } else {
            var error = data['error'] as Map<String, dynamic>;
            String errorMessages = error.entries.map((entry) {
              if (entry.value is List) {
                // Convert each list of messages into a single string separated by commas.
                return "${entry.value.join('\n')}";
              } else {
                return "${entry.value}";
              }
            }).join('\n');
            return Failure(errorMessage: errorMessages);
          }
        }
      }
      return Failure(
          errorMessage:
              "Unknown error occurred or response data is not as expected");
    } catch (e) {
      return Failure(errorMessage: e.toString());
    }
  }

  static String? _showMessage(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        // Handle all types of timeouts similarly
        return "Connection timed out. Please check your internet connection and try again.";
      case DioExceptionType.badCertificate:
        // Handle invalid SSL certificates
        return "Could not establish a secure connection. Please check your network security settings.";
      case DioExceptionType.cancel:
        // Handle request cancellations
        return "Request was cancelled. Please try again if this was an error.";
      case DioExceptionType.connectionError:
        return "Failed to establish a connection. Please ensure your internet is active and retry.";
      default:
        // Handle unknown errors
        return null;
    }
  }
}

class NoInternetException implements Exception {}
