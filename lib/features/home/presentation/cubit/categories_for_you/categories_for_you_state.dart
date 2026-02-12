

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_for_you_state.freezed.dart';

@freezed
class CategoriesForYouState with _$CategoriesForYouState {
  const factory CategoriesForYouState({
    @Default({}) Set<int> selectedIds,
  }) = _CategoriesForYouState;
}
