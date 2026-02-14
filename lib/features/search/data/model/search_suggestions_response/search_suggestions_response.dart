import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_suggestions_response.freezed.dart';
part 'search_suggestions_response.g.dart';

@freezed
class SearchSuggestionsResponse with _$SearchSuggestionsResponse {
  const factory SearchSuggestionsResponse({
    required bool success,
    required SearchSuggestionsData data,
  }) = _SearchSuggestionsResponse;

  factory SearchSuggestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionsResponseFromJson(json);
}

@freezed
class SearchSuggestionsData with _$SearchSuggestionsData {
  const factory SearchSuggestionsData({
    required String query,
    required int count,
    required List<String> suggestions,
  }) = _SearchSuggestionsData;

  factory SearchSuggestionsData.fromJson(Map<String, dynamic> json) =>
      _$SearchSuggestionsDataFromJson(json);
}
