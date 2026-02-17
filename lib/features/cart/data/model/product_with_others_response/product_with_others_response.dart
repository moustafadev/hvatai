// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'product_with_others_response.freezed.dart';
part 'product_with_others_response.g.dart';

@freezed
class ProductWithOthersResponse with _$ProductWithOthersResponse {
  const factory ProductWithOthersResponse({
    String? message,
    ProductWithOthersData? data,
  }) = _ProductWithOthersResponse;

  factory ProductWithOthersResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductWithOthersResponseFromJson(json);
}

@freezed
class ProductWithOthersData with _$ProductWithOthersData {
  const factory ProductWithOthersData({
    required ProductModel product,
    @Default([]) List<ProductModel> otherProducts,
  }) = _ProductWithOthersData;

  factory ProductWithOthersData.fromJson(Map<String, dynamic> json) =>
      _$ProductWithOthersDataFromJson(json);
}
