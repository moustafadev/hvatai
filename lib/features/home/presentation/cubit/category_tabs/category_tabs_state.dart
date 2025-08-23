import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
// ^ This is the Freezed model we created earlier: JoinStreamResponse/JoinStreamData

part 'category_tabs_state.freezed.dart';

@freezed
class CategoryTabsState with _$CategoryTabsState {
  const factory CategoryTabsState({
    // UI tabs
    required List<String> categories,
    required int selectedIndex,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,

    // Live streams
    @Default(<StreamDataModel>[]) List<StreamDataModel> liveStreams,
    @Default(false) bool isLoading,
    String? error,

    // Pagination
    @Default(1) int page,
    @Default(1) int lastPage,
    @Default(true) bool hasMore,

    // ===== Join stream =====
    @Default(false) bool isJoining,
    String? joinError,
    JoinStreamData? joinData,
  }) = _CategoryTabsState;

  factory CategoryTabsState.initial() => const CategoryTabsState(
        categories: ['All'],
        selectedIndex: 0,
        liveStreams: [],
        isLoading: false,
        error: null,
        page: 1,
        lastPage: 1,
        hasMore: true,
        isJoining: false,
        joinError: null,
        joinData: null,
      );
}
