import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/usecases/get_live_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

import 'live_streams_state.dart';

class LiveStreamsCubit extends Cubit<LiveStreamsState> {
  final GetLiveStreamsUsecase _getLiveStreams;
  final JoinStreamUsecase _joinPublicStream;

  final PusherManager _pusherManager;
  PusherClient? _pusher;
  Channel? _channel;
  bool _pusherBound = false;

  List<int>? _categoryIdsFilter;

  LiveStreamsCubit(
    this._getLiveStreams,
    this._joinPublicStream,
    this._pusherManager,
  ) : super(LiveStreamsState.initial());

  // =========================
  // REST FETCH
  // =========================

  Future<void> refreshLiveStreams() async {
    emit(state.copyWith(
      isLoading: true,
      error: null,
      page: 1,
      lastPage: 1,
      hasMore: true,
      liveStreams: [],
      categoryIds: state.categoryIds,
    ));

    await _fetchLiveStreamsInternal(page: 1, append: false);
  }

  Future<void> fetchLiveStreams(
      {bool isRefresh = false, List<int>? categoryIds}) async {
    final next = isRefresh ? 1 : state.page + 1;
    final targetPage = state.liveStreams.isEmpty ? 1 : next;
    final append = state.liveStreams.isNotEmpty && !isRefresh;

    // ✅ update filter
    _categoryIdsFilter = categoryIds ?? state.categoryIds;

    emit(state.copyWith(
      isLoading: true,
      error: null,
      categoryIds: categoryIds ?? state.categoryIds,
    ));

    await _fetchLiveStreamsInternal(
      page: targetPage,
      append: append,
      categoryIds: categoryIds ?? state.categoryIds,
    );
  }

  Future<void> _fetchLiveStreamsInternal({
    required int page,
    required bool append,
    List<int>? categoryIds,
  }) async {
    final res = await _getLiveStreams(
      GetLiveStreamsParams(page: page, perPage: 15, categoryIds: categoryIds),
    );

    res.fold(
      (err) => emit(state.copyWith(isLoading: false, error: err)),
      (payload) {
        final items = payload.data ?? <StreamDataModel>[];
        final current = append
            ? List<StreamDataModel>.from(state.liveStreams)
            : <StreamDataModel>[];
        current.addAll(items);

        final currentPage =
            int.tryParse(payload.pagination?.currentPage ?? "0") ?? page;
        final lastPage = payload.pagination?.lastPage ?? currentPage;
        final hasMore = currentPage < lastPage;

        emit(state.copyWith(
          isLoading: false,
          error: null,
          liveStreams: current,
          page: currentPage,
          lastPage: lastPage,
          hasMore: hasMore,
          categoryIds: categoryIds ?? state.categoryIds,
        ));
      },
    );
  }

  // =========================
  // PUSHER (replaces SSE)
  // =========================

  Future<void> subscribeToLiveStreams(BuildContext context,
      {List<int>? categoryIds}) async {
    // keep filter in sync with state
    _categoryIdsFilter = categoryIds ?? state.categoryIds;

    // prevent duplicate binds
    if (_pusherBound) return;

    final token = locator<AppLocal>().getToken();
    if (token?.isEmpty ?? true) return;

    try {
      _pusher = _pusherManager.initializePusher();
      _channel = _pusher!.subscribe('streams');

      // bind only once
      _channel!.bind('stream.updated', (data) {
        try {
          if (data is! Map) return;
          final payload = Map<String, dynamic>.from(data);

          // Optional category filter if backend includes category_id under stream
          if (_categoryIdsFilter != null && _categoryIdsFilter!.isNotEmpty) {
            final s = payload['stream'];
            if (s is Map) {
              final streamMap = Map<String, dynamic>.from(s);
              final catId = streamMap['category_id'];
              if (catId is int && !_categoryIdsFilter!.contains(catId)) {
                return; // ignore not matching category
              }
            }
          }

          // ✅ Your LiveStreamEvent.fromJson now supports pusher payload without "type"
          final event = LiveStreamEvent.fromJson(payload);
          _handleLiveStreamEvent(event);
        } catch (e) {
          // don't crash realtime
          // ignore or log
        }
      });

      _pusherBound = true;
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  void unsubscribeFromLiveStreams() {
    try {
      _channel?.unbind('stream.updated');
      _pusher?.unsubscribe('streams');
      _pusherManager.dispose();
    } catch (_) {}

    _channel = null;
    _pusher = null;
    _pusherBound = false;
  }

  // =========================
  // EVENT HANDLING (same as before)
  // =========================

  void _handleLiveStreamEvent(LiveStreamEvent event) {
    final stream = event.stream;
    if (stream == null || stream.id == null) {
      emit(state.copyWith(isLoading: false));
      return;
    }

    final currentStreams = List<StreamDataModel>.from(state.liveStreams);
    final index = currentStreams.indexWhere((item) => item.id == stream.id);
    final updatedStreams = List<StreamDataModel>.from(currentStreams);
    var hasChanged = false;

    void removeIfPresent() {
      if (index != -1) {
        updatedStreams.removeAt(index);
        hasChanged = true;
      }
    }

    void upsertStream(StreamDataModel newStream) {
      if (index != -1) {
        if (updatedStreams[index] != newStream) {
          updatedStreams[index] = newStream;
          hasChanged = true;
        }
      } else {
        updatedStreams.insert(0, newStream);
        hasChanged = true;
      }
    }

    switch (event.type) {
      case LiveStreamEventType.streamUpdate:
        switch (event.updateType) {
          case LiveStreamUpdateType.ended:
          case LiveStreamUpdateType.deleted:
            removeIfPresent();
            break;
          default:
            if (event.isLiveStatus) {
              upsertStream(stream);
            } else {
              removeIfPresent();
            }
        }
        break;

      case LiveStreamEventType.viewerJoined:
      case LiveStreamEventType.viewerLeft:
        if (event.isLiveStatus) {
          final existing = index != -1 ? updatedStreams[index] : null;
          final merged = existing != null
              ? existing.copyWith(
                  viewerCount: stream.viewerCount ?? existing.viewerCount,
                  status: stream.status ?? existing.status,
                  updatedAt: stream.updatedAt ?? existing.updatedAt,
                )
              : stream;
          upsertStream(merged);
        } else {
          removeIfPresent();
        }
        break;

      case LiveStreamEventType.unknown:
        break;
    }

    if (!hasChanged) {
      emit(state.copyWith(isLoading: false, error: null));
      return;
    }

    emit(state.copyWith(
      isLoading: false,
      error: null,
      liveStreams: updatedStreams,
    ));
  }

  // =========================
  // JOIN STREAM (unchanged)
  // =========================

  Future<JoinStreamData?> joinStream({
    required StreamDataModel stream,
    bool isPublisher = false,
    required BuildContext context,
  }) async {
    emit(state.copyWith(isJoining: true, joinError: null, joinData: null));

    final res = await _joinPublicStream(stream.id ?? 0);

    res.fold(
      (err) {
        showFloatingMessageError(err);
        emit(state.copyWith(isJoining: false, joinError: err, joinData: null));
      },
      (joinResponse) {
        emit(state.copyWith(
          isJoining: false,
          joinError: null,
          joinData: joinResponse.data,
        ));

        final join = joinResponse.data;

        final updatedStream = stream.copyWith(
          channelName: join.stream.channelName,
        );

        context.push(
          AppRoutes.liveStreamViewer,
          extra: {
            'streamDataModel': updatedStream,
            'joinData': join,
          },
        );

        return joinResponse.data;
      },
    );

    return null;
  }

  @override
  Future<void> close() {
    unsubscribeFromLiveStreams();
    return super.close();
  }
}
