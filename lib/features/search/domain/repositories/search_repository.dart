import 'package:dartz/dartz.dart';
import 'package:hvatai/features/search/data/model/recent_search_response.dart';
import 'package:hvatai/features/search/data/model/search_response/search_response_model.dart';
import 'package:hvatai/features/search/data/model/search_suggestions_response.dart';
import 'package:hvatai/features/search/domain/usecases/search_usecase.dart';

abstract class SearchRepository {
  Future<Either<String, SearchResponseModel>> search(SearchParams params);
  Future<Either<String, SearchSuggestionsResponse>> getSuggestions(
      String query);
  Future<Either<String, RecentSearchResponse>> getRecentSearches();
  Future<Either<String, void>> deleteRecentSearch(int id);
}
