// category_tabs_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_tabs_state.dart';

class SearchTabsCubit extends Cubit<SearchTabsState> {
  SearchTabsCubit() : super(SearchTabsState.initial());

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  int currentIndex = 0;
  void fetchCategories() => emit(state);

  void changeTab(int index) => emit(state.copyWith(selectedIndex: index));

  String? get selectedCategory {
    final category = state.categories[state.selectedIndex];
    return category == 'All' ? null : category;
  }
}
