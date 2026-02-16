import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

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
    List<StreamDataModel>? streams,
    @JsonKey(name: 'has_no_results') bool? hasNoResults,
    dynamic recommendations,
  }) = _SearchDataModel;

  factory SearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchDataModelFromJson(json);
}

@freezed
class SearchProductsPayload with _$SearchProductsPayload {
  const factory SearchProductsPayload({
    List<ProductModel>? data,
  }) = _SearchProductsPayload;

  factory SearchProductsPayload.fromJson(Map<String, dynamic> json) =>
      _$SearchProductsPayloadFromJson(json);
}
