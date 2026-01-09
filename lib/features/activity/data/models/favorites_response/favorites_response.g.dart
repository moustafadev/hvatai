// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesResponseImpl _$$FavoritesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoritesResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FavoritesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavoritesResponseImplToJson(
        _$FavoritesResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$FavoritesDataImpl _$$FavoritesDataImplFromJson(Map<String, dynamic> json) =>
    _$FavoritesDataImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      users: json['users'] as List<dynamic>? ?? const [],
      categories: json['categories'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$FavoritesDataImplToJson(_$FavoritesDataImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'users': instance.users,
      'categories': instance.categories,
    };
