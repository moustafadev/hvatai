import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';

part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    bool? success,
    @JsonKey(name: 'data') SearchDataModel? data,
  }) = _SearchResponseModel;

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}

@freezed
class SearchDataModel with _$SearchDataModel {
  const factory SearchDataModel({
    @JsonKey(name: 'parent_categories') List<CategoryData>? parentCategories,
    @JsonKey(name: 'child_categories') List<CategoryData>? childCategories,
    SearchProductsPayload? products,
    List<SearchStreamDto>? streams,
    List<SearchUserDto>? users,
    @JsonKey(name: 'has_no_results') bool? hasNoResults,
    dynamic recommendations,
  }) = _SearchDataModel;

  factory SearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchDataModelFromJson(json);
}

@freezed
class SearchProductsPayload with _$SearchProductsPayload {
  const factory SearchProductsPayload({
    List<SearchProductDto>? data,
    SearchPagination? pagination,
  }) = _SearchProductsPayload;

  factory SearchProductsPayload.fromJson(Map<String, dynamic> json) =>
      _$SearchProductsPayloadFromJson(json);
}

@freezed
class SearchPagination with _$SearchPagination {
  const factory SearchPagination({
    int? total,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _SearchPagination;

  factory SearchPagination.fromJson(Map<String, dynamic> json) =>
      _$SearchPaginationFromJson(json);
}

@freezed
class SearchProductDto with _$SearchProductDto {
  const factory SearchProductDto({
    int? id,
    String? name,
    String? description,
    SearchProductCategoryDto? category,
    @JsonKey(name: 'user') SearchProductUserDto? user,
    @JsonKey(fromJson: _toDouble) double? price,
    @JsonKey(name: 'original_price', fromJson: _toDouble) double? originalPrice,
    @JsonKey(name: 'has_discount') bool? hasDiscount,
    List<String>? images,
    @JsonKey(fromJson: _toDouble) double? rating,
    @JsonKey(name: 'ratings_count') int? ratingsCount,
    @JsonKey(name: 'is_favorited') bool? isFavorited,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
    List<SearchProductVariantDto>? variants,
    SearchProductDeliveryDto? delivery,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SearchProductDto;

  factory SearchProductDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDtoFromJson(json);
}

@freezed
class SearchProductCategoryDto with _$SearchProductCategoryDto {
  const factory SearchProductCategoryDto({
    int? id,
    String? name,
  }) = _SearchProductCategoryDto;

  factory SearchProductCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductCategoryDtoFromJson(json);
}

@freezed
class SearchProductUserDto with _$SearchProductUserDto {
  const factory SearchProductUserDto({
    int? id,
    String? name,
    String? email,
    String? image,
    String? description,
  }) = _SearchProductUserDto;

  factory SearchProductUserDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductUserDtoFromJson(json);
}

@freezed
class SearchProductVariantDto with _$SearchProductVariantDto {
  const factory SearchProductVariantDto({
    int? id,
    @JsonKey(fromJson: _toDouble) double? price,
    int? stock,
    @JsonKey(fromJson: _toDouble) double? discount,
    @JsonKey(name: 'discount_type') String? discountType,
  }) = _SearchProductVariantDto;

  factory SearchProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductVariantDtoFromJson(json);
}

@freezed
class SearchProductDeliveryDto with _$SearchProductDeliveryDto {
  const factory SearchProductDeliveryDto({
    bool? available,
    String? type,
    String? time,
    String? price,
    String? radius,
  }) = _SearchProductDeliveryDto;

  factory SearchProductDeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$SearchProductDeliveryDtoFromJson(json);
}

@freezed
class SearchStreamDto with _$SearchStreamDto {
  const factory SearchStreamDto({
    int? id,
    String? title,
    String? description,
    String? status,
    @JsonKey(name: 'is_live') bool? isLive,
    @JsonKey(name: 'viewer_count') int? viewerCount,
    String? thumbnail,
    SearchStreamUserDto? user,
    List<SearchStreamCategoryDto>? categories,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'latest_thumbnail_url') String? latestThumbnailUrl,
    @JsonKey(name: 'latest_gif_url') String? latestGifUrl,
  }) = _SearchStreamDto;

  factory SearchStreamDto.fromJson(Map<String, dynamic> json) =>
      _$SearchStreamDtoFromJson(json);
}

@freezed
class SearchStreamUserDto with _$SearchStreamUserDto {
  const factory SearchStreamUserDto({
    int? id,
    String? name,
    String? email,
    String? image,
  }) = _SearchStreamUserDto;

  factory SearchStreamUserDto.fromJson(Map<String, dynamic> json) =>
      _$SearchStreamUserDtoFromJson(json);
}

@freezed
class SearchStreamCategoryDto with _$SearchStreamCategoryDto {
  const factory SearchStreamCategoryDto({
    int? id,
    String? name,
  }) = _SearchStreamCategoryDto;

  factory SearchStreamCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$SearchStreamCategoryDtoFromJson(json);
}

@freezed
class SearchUserDto with _$SearchUserDto {
  const factory SearchUserDto({
    int? id,
    String? name,
    String? email,
    String? image,
    String? description,
    @JsonKey(name: 'personal_rating') int? personalRating,
    @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
    @JsonKey(name: 'favorites_count') int? favoritesCount,
  }) = _SearchUserDto;

  factory SearchUserDto.fromJson(Map<String, dynamic> json) =>
      _$SearchUserDtoFromJson(json);
}

double? _toDouble(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

