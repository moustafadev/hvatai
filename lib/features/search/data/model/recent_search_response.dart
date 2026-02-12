import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_search_response.freezed.dart';
part 'recent_search_response.g.dart';

@freezed
class RecentSearchResponse with _$RecentSearchResponse {
  const factory RecentSearchResponse({
    required bool success,
    @Default([]) List<RecentSearchItem> data,
  }) = _RecentSearchResponse;

  factory RecentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchResponseFromJson(json);
}

@freezed
class RecentSearchItem with _$RecentSearchItem {
  const factory RecentSearchItem({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String query,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _RecentSearchItem;

  factory RecentSearchItem.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchItemFromJson(json);
}
