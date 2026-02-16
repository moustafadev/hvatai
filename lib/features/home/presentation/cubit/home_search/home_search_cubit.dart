import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/search/domain/usecases/search_suggestions_usecase.dart';
import 'package:hvatai/features/search/domain/usecases/search_usecase.dart';

import 'home_search_state.dart';

class HomeSearchCubit extends Cubit<HomeSearchState> {
  HomeSearchCubit(
    this._searchUsecase,
    this._suggestionsUsecase,
  ) : super(const HomeSearchState());

  final SearchUsecase _searchUsecase;
  final SearchSuggestionsUsecase _suggestionsUsecase;

  Timer? _suggestionsDebounce;


  @override
  Future<void> close() {
    _suggestionsDebounce?.cancel();
    return super.close();
  }

  // typing (suggestions only)
  void onQueryChanged(String query) {
    final trimmed = query.trim();
    emit(state.copyWith(
      query: query,
      showSuggestions: state.isSearchFocused && trimmed.isNotEmpty,
      errorMessage: '',
    ));

    // If user cleared text -> return to home mode
    if (trimmed.isEmpty) {
      hideSearch();
      return;
    }

    _suggestionsDebounce?.cancel();
    _suggestionsDebounce = Timer(const Duration(milliseconds: 200), () {
      if (state.isSearchFocused && trimmed.isNotEmpty) {
        fetchSuggestions(trimmed);
      } else {
        emit(state.copyWith(suggestions: const [], showSuggestions: false));
      }
    });
  }

  void onSearchFieldFocused() {
    emit(state.copyWith(
      isSearchFocused: true,
      showSuggestions: state.query.trim().isNotEmpty && state.suggestions.isNotEmpty,
    ));

    final q = state.query.trim();
    if (q.isNotEmpty) fetchSuggestions(q);
  }

  void hideSuggestions() {
    emit(state.copyWith(showSuggestions: false, isSearchFocused: false));
  }

  // submit (switch mode + load streams only)
  Future<void> onSubmitted(String query) async {
    final trimmed = query.trim();
    emit(state.copyWith(
      query: trimmed,
      showSuggestions: false,
      isSearchFocused: false,
    ));

    if (trimmed.isEmpty) {
      hideSearch();
      return;
    }

    await _searchStreamsOnly(trimmed);
  }

  // selecting suggestion behaves like submit
  Future<void> selectSuggestion(String suggestion) async {
    emit(state.copyWith(query: suggestion, showSuggestions: false));
    await _searchStreamsOnly(suggestion.trim());
  }

  void hideSearch() {
    emit(state.copyWith(
      isSearchMode: false,
      isLoading: false,
      errorMessage: '',
      streams: const [],
      suggestions: const [],
      showSuggestions: false,
      isSearchFocused: false,
    ));
  }

  Future<void> _searchStreamsOnly(String query) async {
    emit(state.copyWith(
      isSearchMode: true,
      isLoading: true,
      errorMessage: '',
      streams: const [],
    ));

    final result = await _searchUsecase(SearchParams(query: query, categoryIds: const <int>[]));

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (response) {
        final data = response.data;

        emit(state.copyWith(
          isLoading: false,
          streams: data?.streams ?? [],
          errorMessage: '',
        ));
      },
    );
  }

  Future<void> fetchSuggestions(String query) async {
    if (query.isEmpty) {
      emit(state.copyWith(
        suggestions: const [],
        showSuggestions: false,
        isLoadingSuggestions: false,
      ));
      return;
    }

    emit(state.copyWith(isLoadingSuggestions: true));

    final result = await _suggestionsUsecase(SearchSuggestionsParams(query: query));

    result.fold(
      (_) => emit(state.copyWith(isLoadingSuggestions: false, suggestions: const [])),
      (response) => emit(state.copyWith(
        isLoadingSuggestions: false,
        suggestions: response.data.suggestions,
        showSuggestions: response.data.suggestions.isNotEmpty && state.isSearchFocused,
      )),
    );
  }

}
