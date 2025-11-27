import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/data/model/live_stream_event/live_stream_event.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/home/domain/usecases/watch_live_streams_usecase.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/routes/app_routes.dart';

import 'category_tabs_state.dart';

class CategoryTabsCubit extends Cubit<CategoryTabsState> {
  final GetLiveStreamsUsecase _getLiveStreams;
  final WatchLiveStreamsUsecase _watchLiveStreams;
  final GetCategoryUsecase getCategoryUsecase;
  final GetFavCategoryUsecase getFavCategoryUsecase;
  final AddFavCategoryUsecase addFavCategoryUsecase;
  final JoinStreamUsecase _joinPublicStream;

  Timer? _debounceTimer;
  StreamSubscription<Either<String, LiveStreamEvent>>? _liveStreamsSubscription;

  CategoryTabsCubit(
    this._getLiveStreams,
    this._watchLiveStreams,
    this._joinPublicStream,
    this.getFavCategoryUsecase,
    this.getCategoryUsecase,
    this.addFavCategoryUsecase,
  ) : super(CategoryTabsState.initial());

  // ================= Categories =================

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true, error: ''));
    final result = await getCategoryUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, error: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        categories: categories,
      )),
    );
  }

  Future<void> getFavCategories() async {
    emit(state.copyWith(isLoading: true, error: '', filteredCategories: null));
    final result = await getFavCategoryUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, error: failure)),
      (categories) => emit(state.copyWith(
        isLoading: false,
        filteredCategories: categories,
      )),
    );
  }

  Future<void> addCategories() async {
    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 800), () async {
      await _performAddCategories();
    });
  }

  Future<void> addCategoriesDetails() async {
    _debounceTimer?.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 800), () async {
      await _performAddCategoriesDetails();
    });
  }

  Future<void> _performAddCategoriesDetails() async {
    final now = DateTime.now();

    if (state.lastRequestTime != null &&
        now.difference(state.lastRequestTime!) < const Duration(seconds: 2)) {
      return;
    }

    emit(state.copyWith(error: '', lastRequestTime: now));
    final params = AddFavCategoryParams(
      categoryIds:
          state.selectedDetailIds.isNotEmpty ? state.selectedDetailIds : null,
      categoryId: state.selectedDetailIds.isNotEmpty
          ? null
          : state.selectedDetailIds.firstOrNull,
    );

    final result = await addFavCategoryUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          error: failure,
          lastRequestTime: null,
        ));
      },
      (_) {
        emit(state.copyWith(
          lastRequestTime: now,
        ));
      },
    );
  }

  Future<void> _performAddCategories() async {
    final now = DateTime.now();

    if (state.lastRequestTime != null &&
        now.difference(state.lastRequestTime!) < const Duration(seconds: 2)) {
      return;
    }

    emit(state.copyWith(error: '', lastRequestTime: now));

    final params = AddFavCategoryParams(categoryIds: state.selectedCategoryIds);
    final result = await addFavCategoryUsecase.call(params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          error: failure,
          lastRequestTime: null,
        ));
      },
      (_) {
        emit(state.copyWith(
          lastRequestTime: now,
        ));
      },
    );
  }

  void toggleInterest(int index, int categoryId) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedIds = List<int>.from(state.selectedCategoryIds);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedIds.remove(categoryId);
    } else {
      updatedIndices.add(index);
      updatedIds.add(categoryId);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedCategoryIds: updatedIds,
    ));

    // addCategories();
  }

  void toggleDetail(int index, int categoryId) {
    final isSelected = state.selectedIndicesDetails.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndicesDetails);
    final updatedIds = List<int>.from(state.selectedDetailIds);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedIds.remove(categoryId);
    } else {
      updatedIndices.add(index);
      updatedIds.add(categoryId);
    }

    emit(state.copyWith(
      selectedIndicesDetails: updatedIndices,
      selectedDetailIds: updatedIds,
    ));
    // addCategoriesDetails();
  }

  // ================= Live Streams =================

  Future<void> refreshLiveStreams() async {
    emit(state.copyWith(
      isLoading: true,
      error: null,
      page: 1,
      lastPage: 1,
      hasMore: true,
      liveStreams: [],
    ));

    await _fetchLiveStreamsInternal(page: 1, append: false);
  }

  void subscribeToLiveStreams() {
    _liveStreamsSubscription?.cancel();
    _liveStreamsSubscription = _watchLiveStreams().listen(
      (result) {
        result.fold(
          (failure) {
            emit(state.copyWith(
              isLoading: false,
              error: failure,
            ));
          },
          _handleLiveStreamEvent,
        );
      },
      onError: (error, stackTrace) {
        emit(state.copyWith(
          isLoading: false,
          error: error.toString(),
        ));
      },
    );
  }

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
        // Ignore unknown events but ensure loading state resets.
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

  void unsubscribeFromLiveStreams() {
    _liveStreamsSubscription?.cancel();
    _liveStreamsSubscription = null;
  }

  Future<void> fetchLiveStreams({bool isRefresh = false}) async {
    // if (state.isLoading || !state.hasMore) return;
    final next = isRefresh ? 1 : state.page + 1;
    final targetPage = state.liveStreams.isEmpty ? 1 : next;
    final append = state.liveStreams.isNotEmpty && !isRefresh;

    emit(state.copyWith(isLoading: true, error: null));
    await _fetchLiveStreamsInternal(page: targetPage, append: append);
  }

  Future<void> _fetchLiveStreamsInternal({
    required int page,
    required bool append,
  }) async {
    final res =
        await _getLiveStreams(GetLiveStreamsParams(page: page, perPage: 15));

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
        ));
      },
    );
  }

  // ================= JOIN Public Stream =================
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

        // Merge join response into the original stream
        final updatedStream = stream.copyWith(
          // agoraAppId: join.agoraAppId ?? join.appId,
          channelName: join.stream.channelName,
          // agoraToken: join.agoraToken,
          // agoraUid: join.uid ?? join.agoraUid,
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

  // تأكد من إلغاء ال timer عند إغلاق ال cubit
  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    unsubscribeFromLiveStreams();
    return super.close();
  }
}
