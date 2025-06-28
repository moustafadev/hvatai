// category_tabs_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_tabs_state.dart';

class CategoryTabsCubit extends Cubit<CategoryTabsState> {
  CategoryTabsCubit() : super(CategoryTabsState.initial());

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  void fetchCategories() => emit(state);

  void selectCategory(dynamic index) {
    emit(state.copyWith(selectedIndex: index));
  }

  String? get selectedCategory {
    final category = state.categories[state.selectedIndex];
    return category == 'All' ? null : category;
  }
}
