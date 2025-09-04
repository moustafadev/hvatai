import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';

part 'category_tabs_state.freezed.dart';

@freezed
class CategoryTabsState with _$CategoryTabsState {
  const factory CategoryTabsState({
    // UI tabs
    CategoryModel? categories,
    @Default([]) List<int> selectedDetailIds,
    CategoryModel? filteredCategories,
    required int selectedIndex,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<int> selectedCategoryIds,
    @Default({}) Set<int> selectedIndicesDetails,
    DateTime? lastRequestTime,

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

  factory CategoryTabsState.initial() => CategoryTabsState(
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
      lastRequestTime: null);
}
