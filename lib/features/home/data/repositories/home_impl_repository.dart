import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hvatai/core/error/exception.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/features/home/domain/usecases/get_live_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/locator.dart';

class HomeImplRepository implements HomeRepository {
  final ApiServiceHome _apiServiceHome;

  HomeImplRepository(this._apiServiceHome);

  @override
  Future<Either<String, List<String>>> getInterestsCategories() {
    throw UnimplementedError();
  }

  @override
  Future<Either<String, StreamListResponseModel>> getStreams({
    required GetStreamsParams getStreamsParams,
  }) {
    return executeAndHandleError<StreamListResponseModel>(() async {
      final res = await _apiServiceHome.getStreams(
        getStreamsParams: getStreamsParams,
      );
      return res;
    });
  }

  @override
  Future<Either<String, StreamListResponseModel>> getLiveStreams({
    required GetLiveStreamsParams getLiveStreamsParams,
  }) {
    return executeAndHandleError<StreamListResponseModel>(() async {
      final res = await _apiServiceHome.getLiveStreams(
        getLiveStreamsParams: getLiveStreamsParams,
      );
      return res;
    });
  }

  @override
  Future<Either<String, JoinStreamResponse>> joinStream(
      {required int streamId}) {
    return executeAndHandleError<JoinStreamResponse>(() async {
      final res = await _apiServiceHome.joinStream(streamId: streamId);
      return res;
    });
  }

  @override
  Stream<Either<String, LiveStreamEvent>> watchLiveStreams() {
    final controller = StreamController<Either<String, LiveStreamEvent>>();
    StreamSubscription<LiveStreamEvent>? subscription;

    Future<void> startListening() async {
      try {
        final internet = await locator<NetworkChecker>().isConnected;
        if (!internet) {
          if (!controller.isClosed) {
            controller.add(
              Left("It seems you're not connected to the internet"),
            );
          }
          return;
        }

        subscription = _apiServiceHome.watchLiveStreams().listen(
          (event) {
            if (!controller.isClosed) {
              controller.add(Right(event));
            }
          },
          onError: (error, stackTrace) {
            final failure = ErrorHandler.handle(error);
            if (!controller.isClosed) {
              controller.add(Left(failure.message));
            }
          },
          onDone: () {
            if (!controller.isClosed) {
              controller.close();
            }
          },
          cancelOnError: false,
        );
      } catch (error) {
        final failure = ErrorHandler.handle(error);
        if (!controller.isClosed) {
          controller.add(Left(failure.message));
        }
      }
    }

    startListening();

    controller.onCancel = () async {
      await subscription?.cancel();
    };

    return controller.stream;
  }
}
