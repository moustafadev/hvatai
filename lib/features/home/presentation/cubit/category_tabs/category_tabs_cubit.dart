import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/stream/presentation/stream.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'category_tabs_state.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class CategoryTabsCubit extends Cubit<CategoryTabsState> {
  final GetLiveStreamsUsecase _getLiveStreams;
  final GetCategoryUsecase getCategoryUsecase;
  final GetFavCategoryUsecase getFavCategoryUsecase;
  final AddFavCategoryUsecase addFavCategoryUsecase;
  final JoinStreamUsecase _joinPublicStream;

  Timer? _debounceTimer;

  CategoryTabsCubit(
    this._getLiveStreams,
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

    addCategories();
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
    addCategoriesDetails();
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

  Future<void> fetchLiveStreams() async {
    if (state.isLoading || !state.hasMore) return;
    final next = state.page + 1;
    final targetPage = state.liveStreams.isEmpty ? 1 : next;
    final append = state.liveStreams.isNotEmpty;

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
    required String channelName,
    required int userId,
    bool isPublisher = false,
    required BuildContext context,
  }) async {
    emit(state.copyWith(isJoining: true, joinError: null, joinData: null));

    final res = await _joinPublicStream(JoinStreamParams(
      channelName: channelName,
      userId: userId,
      isPublisher: isPublisher,
    ));

    res.fold(
      (err) {
        emit(state.copyWith(isJoining: false, joinError: err, joinData: null));
      },
      (joinResponse) {
        emit(state.copyWith(
          isJoining: false,
          joinError: null,
          joinData: joinResponse.data,
        ));
        final join = joinResponse.data;
        context.push(
          AppRoutes.liveStream,
          extra: {
            'appId': join?.agoraAppId ?? join?.appId ?? '',
            'channelName': join?.channelName ?? '',
            'agoraToken': join?.agoraToken ?? join?.agoraToken ?? '',
            'agoraUid': join?.uid ?? join?.agoraUid ?? 0,
            'userRole': UserRole.viewer,
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
    return super.close();
  }
}
