import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_for_you_state.dart';

class CategoriesForYouCubit extends Cubit<CategoriesForYouState> {
  CategoriesForYouCubit() : super(CategoriesForYouState());
  void initialize(List<int> initialSelectedIds) {
    emit(state.copyWith(selectedIds: initialSelectedIds.toSet()));
  }

  void toggle(int id) {
    final ids = Set<int>.from(state.selectedIds);

    if (ids.contains(id)) {
      ids.remove(id);
    } else {
      ids.add(id);
    }

    emit(state.copyWith(selectedIds: ids));
  }
}
