// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'favorites_response.freezed.dart';
part 'favorites_response.g.dart';

@freezed
class FavoritesResponse with _$FavoritesResponse {
  const factory FavoritesResponse({
    String? message,
    FavoritesData? data,
  }) = _FavoritesResponse;

  factory FavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoritesResponseFromJson(json);
}

@freezed
class FavoritesData with _$FavoritesData {
  const factory FavoritesData({
    @Default([]) List<ProductModel> products,
    @Default([]) List<dynamic> users,
    @Default([]) List<dynamic> categories,
  }) = _FavoritesData;

  factory FavoritesData.fromJson(Map<String, dynamic> json) =>
      _$FavoritesDataFromJson(json);
}

