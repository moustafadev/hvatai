// category_tabs_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_tabs_state.freezed.dart';
// category_tabs_state.dart

@freezed
class SearchTabsState with _$SearchTabsState {
  const factory SearchTabsState({
    required List<String> categories,
    required int selectedIndex,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
    @Default([]) List<String> searchedItems,
  }) = _SearchTabsState;

  factory SearchTabsState.initial() => const SearchTabsState(
        categories: ['All'],
        selectedIndex: 0,
      );
}
