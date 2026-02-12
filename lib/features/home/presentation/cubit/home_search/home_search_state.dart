import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/search/data/model/search_live_stream_model.dart';

part 'home_search_state.freezed.dart';

@freezed
class HomeSearchState with _$HomeSearchState {
  const factory HomeSearchState({
    @Default('') String query,

    // UI mode: false => show normal home, true => show search results
    @Default(false) bool isSearchMode,

    // results
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<SearchLiveStreamModel> streams,

    // suggestions
    @Default([]) List<String> suggestions,
    @Default(false) bool isLoadingSuggestions,
    @Default(false) bool showSuggestions,
    @Default(false) bool isSearchFocused,

  }) = _HomeSearchState;
}
