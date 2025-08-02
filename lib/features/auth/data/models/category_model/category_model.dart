import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    List<CategoryData>? data,
    String? message,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    int? id,
    String? name,
    String? image,
    String? type,
    String? page,
    String? color,
    int? status,
    @JsonKey(name: 'parent_id') int? parentId,
    dynamic parent,
    List<CategoryChild>? children,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
class CategoryChild with _$CategoryChild {
  const factory CategoryChild({
    int? id,
    String? name,
    String? type,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
  }) = _CategoryChild;

  factory CategoryChild.fromJson(Map<String, dynamic> json) =>
      _$CategoryChildFromJson(json);
}
