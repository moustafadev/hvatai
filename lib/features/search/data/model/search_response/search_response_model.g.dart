// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseModelImpl _$$SearchResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResponseModelImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : SearchDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResponseModelImplToJson(
        _$SearchResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SearchDataModelImpl _$$SearchDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDataModelImpl(
      parentCategories: (json['parent_categories'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      childCategories: (json['child_categories'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] == null
          ? null
          : SearchProductsPayload.fromJson(
              json['products'] as Map<String, dynamic>),
      streams: (json['streams'] as List<dynamic>?)
          ?.map((e) => StreamDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNoResults: json['has_no_results'] as bool?,
      recommendations: json['recommendations'],
    );

Map<String, dynamic> _$$SearchDataModelImplToJson(
        _$SearchDataModelImpl instance) =>
    <String, dynamic>{
      'parent_categories': instance.parentCategories,
      'child_categories': instance.childCategories,
      'products': instance.products,
      'streams': instance.streams,
      'has_no_results': instance.hasNoResults,
      'recommendations': instance.recommendations,
    };

_$SearchProductsPayloadImpl _$$SearchProductsPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductsPayloadImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchProductsPayloadImplToJson(
        _$SearchProductsPayloadImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
