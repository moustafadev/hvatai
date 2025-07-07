// category_tabs_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_tabs_state.dart';

class SearchTabsCubit extends Cubit<SearchTabsState> {
  SearchTabsCubit()
      : super(SearchTabsState.initial().copyWith(
          searchedItems: [
            'Art',
            'Business',
            'Health',
            'Music',
            'Politics',
          ],
        ));
  void removeItem(String item) {
    final updatedList = List<String>.from(state.searchedItems)..remove(item);
    emit(state.copyWith(searchedItems: updatedList));
  }

  void setCategories(List<String> interests) {
    final newCategories = ['All', ...interests];
    emit(state.copyWith(categories: newCategories));
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);

      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
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
