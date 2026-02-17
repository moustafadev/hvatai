// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_with_others_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductWithOthersResponseImpl _$$ProductWithOthersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductWithOthersResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductWithOthersData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductWithOthersResponseImplToJson(
        _$ProductWithOthersResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$ProductWithOthersDataImpl _$$ProductWithOthersDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductWithOthersDataImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      otherProducts: (json['otherProducts'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductWithOthersDataImplToJson(
        _$ProductWithOthersDataImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'otherProducts': instance.otherProducts,
    };
