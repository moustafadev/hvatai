import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/home/domain/usecases/join_stream_usecase.dart';
import 'package:hvatai/features/stream/presentation/stream.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'category_tabs_state.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class CategoryTabsCubit extends Cubit<CategoryTabsState> {
  final GetLiveStreamsUsecase _getLiveStreams;
  final JoinStreamUsecase _joinPublicStream; // <-- NEW

  CategoryTabsCubit(
    this._getLiveStreams,
    this._joinPublicStream,
  ) : super(CategoryTabsState.initial());

  // ================= Categories =================

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);
      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
  }

  void fetchCategories() => emit(state);

  void selectCategory(dynamic index) {
    emit(state.copyWith(selectedIndex: index));
  }

  String? get selectedCategory {
    final category = state.categories[state.selectedIndex];
    return category == 'All' ? null : category;
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
  /// Call your `/streams/join-public` endpoint here.
  ///
  /// You mentioned the backend needs the **userId** when joining as viewer.
  /// Provide `userId` from your `AppLocal` (or pass it in).
  ///
  /// Optional: `isPublisher` if you also use it for broadcasters.
  Future<JoinStreamData?> joinStream({
    required StreamDataModel stream,
    bool isPublisher = false,
    required BuildContext context,
  }) async {
    // set loading & clear previous error
    emit(state.copyWith(isJoining: true, joinError: null, joinData: null));

    final res = await _joinPublicStream(stream.id ?? 0);

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

        if (join != null) {
          // Merge join response into the original stream
          final updatedStream = stream.copyWith(
            agoraAppId: join.agoraAppId ?? join.appId,
            channelName: join.channelName,
            agoraToken: join.agoraToken,
            agoraUid: join.uid ?? join.agoraUid,
          );

          context.push(
            AppRoutes.liveStream,
            extra: {
              'streamDataModel': updatedStream,
              'userRole': UserRole.viewer,
            },
          );

          return joinResponse.data;
        }
      },
    );
    return null;
  }
}
