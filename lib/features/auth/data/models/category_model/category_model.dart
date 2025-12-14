// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

String? _iconFromJson(String? value) {
  if (value == null || value.isEmpty) return value;
  // Avoid double-prefixing if the value is already a full URL
  if (value.startsWith('http')) return value;
  // If value contains '/', prepend domain only; otherwise prepend domain + "storage"
  if (value.contains('/')) {
    return "${ServerConfig.domen}$value";
  } else {
    return "${ServerConfig.domen}storage/$value";
  }
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    String? message,
    List<CategoryData>? data,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    String? type,
    @JsonKey(fromJson: _iconFromJson) String? icon,
    String? description,
    @JsonKey(name: 'user_id') int? userId,
    bool? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? views,
    List<CategoryChild>? children, // recursive nesting
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
