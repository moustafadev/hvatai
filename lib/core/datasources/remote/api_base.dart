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
    );
    _dio
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
      ..interceptors.add(AuthInterceptor());
    initAdapter();
  }

  Future<RequestResult> request({
    required String method,
    required String path,
    required Map<String, String> headers,
    dynamic body,
    Map<String, String>? queryParameters,
    bool customPath = false,
    String contentType = 'application/json',
  }) async {
    final fullPath = customPath ? path : ServerConfig.baseUrl + path;

    Response? resp;
    dynamic decodedJson;

    final token = appLocal.getToken();
    print('Token from local storage: $token');

    final requestHeaders = Map<String, String>.from(headers);
    if (token != null && token.isNotEmpty) {
      requestHeaders['Authorization'] = 'Bearer $token';
    }

    _dio.options.headers['Accept'] = 'application/json';

    print("🔗 Requesting: $fullPath");

    try {
      switch (method) {
        case 'post':
          resp = await _dio.post(
            fullPath,
            data: body,
            options: Options(
              contentType: contentType,
              headers: headers,
            ),
            queryParameters: queryParameters,
          );
          break;
        case 'get':
          resp = await _dio.get(
            fullPath,
            queryParameters: queryParameters,
            options: Options(headers: headers),
          );
          break;
        case 'delete':
          resp = await _dio.delete(
            fullPath,
            queryParameters: queryParameters,
            options: Options(headers: headers),
          );
          break;
        case 'put':
          resp = await _dio.put(
            fullPath,
            data: body,
            queryParameters: queryParameters,
            options: Options(
              contentType: contentType,
              headers: headers,
            ),
          );
          break;
        case 'patch':
          resp = await _dio.patch(
            fullPath,
            data: body,
            queryParameters: queryParameters,
            options: Options(
              contentType: contentType,
              headers: headers,
            ),
          );
          break;
      }
      decodedJson = resp?.data;
    } catch (e, st) {
      log("""❌ HTTP Request Error:
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
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'post',
      path: path,
      headers: Map.from(headers),
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> delete(
    String path, {
    Map<String, String> headers = const {},
    bool customPath = false,
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'delete',
      path: path,
      headers: Map.from(headers),
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> put(
    String path, {
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'put',
      path: path,
      headers: Map.from(headers),
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> patch(
    String path, {
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'patch',
      path: path,
      headers: Map.from(headers),
      body: body,
      contentType: contentType,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> get(
    String path, {
    Map<String, String> headers = const {},
    bool customPath = false,
    Map<String, String>? queryParameters,
  }) async {
    return request(
      method: 'get',
      path: path,
      headers: Map.from(headers),
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }
}

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('➡️ REQUEST[${options.method}] => PATH: ${options.uri}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        '✅ RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.uri}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    print(
        '❗️ ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.uri}');
    super.onError(err, handler);
  }
}
