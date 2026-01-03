import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/search/data/model/search_suggestions_response.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';

class SearchSuggestionsParams {
  final String query;

  const SearchSuggestionsParams({required this.query});
}

class SearchSuggestionsUsecase
    implements UseCase<SearchSuggestionsResponse, SearchSuggestionsParams> {
  const SearchSuggestionsUsecase(this._repository);

  final SearchRepository _repository;

  @override
  Future<Either<String, SearchSuggestionsResponse>> call(
      SearchSuggestionsParams params) {
    return _repository.getSuggestions(params.query);
  }
}

