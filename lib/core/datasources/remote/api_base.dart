import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hvatai/core/datasources/remote/interceptor.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

class RequestResult {
  dynamic json;
  int? statusCode;

  RequestResult(this.json, this.statusCode);
}

class ApiBase {
  final Dio _dio = Dio();
  ApiBase() {
    _dio
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
      ..interceptors.add(AuthInterceptor());
    // ..interceptors.add(JsonResponseInterceptor());
  }

  Future<RequestResult> request({
    required String method,
    required String path,
    required Map<String, String> headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    bool customPath = false,
  }) async {
    path = customPath ? path : ServerConfig.baseUrl + path;
    Response? resp;
    dynamic decodedJson;
    final requestHeaders = <String, String>{
      'Accept': 'application/json',
      ...headers,
    };
    if (kDebugMode) {
      debugPrint(path);
    }
    try {
      switch (method) {
        case 'post':
          resp = await _dio.post(path,
              data: body,
              options: Options(
                headers: requestHeaders,
              ),
              queryParameters: queryParameters);
          break;
        case 'get':
          resp = await _dio.get(path,
              queryParameters: queryParameters,
              options: Options(
                headers: requestHeaders,
              ));
          break;
        case 'delete':
          resp = await _dio.delete(path,
              queryParameters: queryParameters,
              options: Options(
                headers: requestHeaders,
              ));
          break;
        case "put":
          resp = await _dio.put(path,
              data: body,
              queryParameters: queryParameters,
              options: Options(
                headers: requestHeaders,
              ));
          break;
        case "patch":
          resp = await _dio.patch(path,
              data: body,
              queryParameters: queryParameters,
              options: Options(
                headers: requestHeaders,
              ));
          break;
      }
      decodedJson = resp!.data;
    } catch (e, st) {
      log("""HTTP Request error: 
            statusCode: ${resp?.statusCode}
            body: ${resp?.data}
            path: $path
            exception: $e
            stackTrace: $st
            """);

      decodedJson = Map.from(<String, dynamic>{});
      rethrow;
    }
    return RequestResult(decodedJson, resp.statusCode);
  }

  Stream<String> listenToServerSentEvents(
    String path, {
    Map<String, String> headers = const {},
    bool customPath = false,
    Map<String, dynamic>? queryParameters,
  }) {
    final effectiveHeaders = <String, String>{
      ...headers,
      'Accept': 'text/event-stream',
      'Cache-Control': 'no-cache',
    };

    final requestPath = customPath ? path : ServerConfig.baseUrl + path;
    final cancelToken = CancelToken();
    final controller = StreamController<String>();
    StreamSubscription<dynamic>? subscription;

    Future<void> cancel() async {
      final currentSubscription = subscription;
      subscription = null;
      await currentSubscription?.cancel();
      if (!cancelToken.isCancelled) {
        cancelToken.cancel('SSE subscription cancelled by listener');
      }
    }

    controller.onCancel = cancel;

    () async {
      try {
        final response = await _dio.get<ResponseBody>(
          requestPath,
          queryParameters: queryParameters,
          options: Options(
            headers: effectiveHeaders,
            responseType: ResponseType.stream,
          ),
          cancelToken: cancelToken,
        );

        final byteStream = response.data?.stream;
        if (byteStream == null) {
          throw StateError('SSE stream is empty');
        }

        final decodedStream =
            byteStream.cast<List<int>>().transform(utf8.decoder);
        final eventStream =
            decodedStream.transform(_ServerSentEventsTransformer());

        subscription = eventStream.listen(
          (event) {
            if (!controller.isClosed) {
              controller.add(event);
            }
          },
          onError: (error, stackTrace) async {
            if (!controller.isClosed) {
              controller.addError(error, stackTrace);
            }
            await cancel();
          },
          onDone: () async {
            await cancel();
            if (!controller.isClosed) {
              controller.close();
            }
          },
          cancelOnError: true,
        );
      } catch (error, stackTrace) {
        if (!controller.isClosed) {
          controller.addError(error, stackTrace);
          controller.close();
        }
        await cancel();
      }
    }();

    return controller.stream;
  }

  Future<RequestResult> post(
    String path, {
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    String contentType = "application/json",
    Map<String, String>? queryParameters,
  }) async {
    headers = Map<String, String>.from(headers);

    return request(
      method: 'post',
      path: path,
      headers: headers,
      body: body,
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
    headers = Map<String, String>.from(headers);

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
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    Map<String, String>? queryParameters,
    String contentType = "",
  }) async {
    headers = Map<String, String>.from(headers);
    return request(
      method: 'put',
      path: path,
      headers: headers,
      body: body,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> patch(
    String path, {
    Map<String, String> headers = const {},
    dynamic body = '',
    bool customPath = false,
    Map<String, String>? queryParameters,
    String contentType = "",
  }) async {
    headers = Map<String, String>.from(headers);
    return request(
      method: 'patch',
      path: path,
      headers: headers,
      body: body,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future<RequestResult> get(
    String path, {
    Map<String, String> headers = const {},
    bool customPath = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    return request(
      method: 'get',
      path: path,
      headers: headers,
      customPath: customPath,
      queryParameters: queryParameters,
    );
  }

  Future download(String url, String savePath) async {
    _dio.download(url, savePath);
  }
}

class _ServerSentEventsTransformer
    extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    final controller = StreamController<String>();
    final buffer = StringBuffer();

    late StreamSubscription<String> subscription;
    subscription = stream.listen(
      (chunk) {
        buffer.write(chunk);

        var completeIndex = buffer.toString().indexOf('\n\n');
        while (completeIndex != -1) {
          final rawEvent = buffer.toString().substring(0, completeIndex);
          final remaining = buffer.toString().substring(completeIndex + 2);
          buffer
            ..clear()
            ..write(remaining);

          final dataLines = rawEvent
              .split('\n')
              .where((line) => line.startsWith('data:'))
              .map((line) => line.substring(5).trimLeft());

          final payload = dataLines.join('\n');
          if (payload.isNotEmpty && !controller.isClosed) {
            controller.add(payload);
          }

          completeIndex = buffer.toString().indexOf('\n\n');
        }
      },
      onError: (error, stackTrace) {
        if (!controller.isClosed) {
          controller.addError(error, stackTrace);
        }
      },
      onDone: () {
        if (!controller.isClosed) {
          controller.close();
        }
      },
      cancelOnError: true,
    );

    controller.onCancel = () async {
      await subscription.cancel();
    };

    return controller.stream;
  }
}
