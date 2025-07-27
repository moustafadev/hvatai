// ignore_for_file: avoid_print

import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'interceptor.dart';

class RequestResult {
  dynamic json;
  int? statusCode;

  RequestResult(this.json, this.statusCode);
}

abstract class ApiBase {
  final Dio _dio = Dio();
  AppLocal appLocal = AppLocal();

  ApiBase() {
    _dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    );
    _dio
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
      ..interceptors.add(AuthInterceptor());
    initAdapter();
  }

  Future<RequestResult> request({
    required String method,
    required String path,
    Map<String, String>? headers,
    dynamic body,
    Map<String, String>? queryParameters,
    bool customPath = false,
    String contentType = 'application/json',
  }) async {
    String fullPath;
    if (customPath) {
      fullPath = path;
    } else {
      final cleanPath = path.startsWith('/') ? path.substring(1) : path;
      final cleanBaseUrl = ServerConfig.baseUrl.endsWith('/')
          ? ServerConfig.baseUrl.substring(0, ServerConfig.baseUrl.length - 1)
          : ServerConfig.baseUrl;

      fullPath = '$cleanBaseUrl/$cleanPath';
    }

    Response? resp;
    dynamic decodedJson;

    print("🔗 Requesting: $fullPath");
    print("📦 Method: $method");
    if (headers != null && headers.isNotEmpty) {
      print("📋 Headers: $headers");
    }
    if (queryParameters != null && queryParameters.isNotEmpty) {
      print("🔍 Query Parameters: $queryParameters");
    }

    try {
      Options options = Options(
        contentType: contentType,
        headers: headers,
      );

      switch (method.toLowerCase()) {
        case 'post':
          resp = await _dio.post(
            fullPath,
            data: body,
            options: options,
            queryParameters: queryParameters,
          );
          break;
        case 'get':
          resp = await _dio.get(
            fullPath,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case 'delete':
          resp = await _dio.delete(
            fullPath,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case 'put':
          resp = await _dio.put(
            fullPath,
            data: body,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        case 'patch':
          resp = await _dio.patch(
            fullPath,
            data: body,
            queryParameters: queryParameters,
            options: options,
          );
          break;
        default:
          throw UnsupportedError('HTTP method $method is not supported.');
      }

      decodedJson = resp.data;
    } catch (e, st) {
      log("""❌ HTTP Request Error:
        URL: $fullPath
        Method: $method
        statusCode: ${resp?.statusCode}
        body: ${resp?.data}
        exception: $e
        stackTrace: $st
      """);
      decodedJson = <String, dynamic>{};
      rethrow;
    }

    return RequestResult(decodedJson, resp?.statusCode);
  }

  void initAdapter() {
    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      },
    );
  }

  Future<RequestResult> post(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'post',
      path: path,
      headers: headers,
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> delete(
    String path, {
    Map<String, String>? headers,
    bool customPath = false,
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'delete',
      path: path,
      headers: headers,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> put(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'put',
      path: path,
      headers: headers,
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> patch(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'patch',
      path: path,
      headers: headers,
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> get(
    String path, {
    Map<String, String>? headers,
    bool customPath = false,
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'get',
      path: path,
      headers: headers,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }
}
