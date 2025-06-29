// category_tabs_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_tabs_state.freezed.dart';

@freezed
class SearchTabsState with _$SearchTabsState {
  const factory SearchTabsState({
    required List<String> categories,
    required int selectedIndex,
  }) = _SearchTabsState;

  factory SearchTabsState.initial() => const SearchTabsState(
        categories: ['All'],
        selectedIndex: 0,
      );
}
