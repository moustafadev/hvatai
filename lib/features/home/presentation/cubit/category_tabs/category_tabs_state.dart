// category_tabs_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_tabs_state.freezed.dart';

@freezed
class CategoryTabsState with _$CategoryTabsState {
  const factory CategoryTabsState({
    required List<String> categories,
    required int selectedIndex,
    @Default([]) List<String> selectedInterests,
    @Default({}) Set<int> selectedIndices,
  }) = _CategoryTabsState;

  factory CategoryTabsState.initial() => const CategoryTabsState(
        categories: ['All'],
        selectedIndex: 0,
      );
}
