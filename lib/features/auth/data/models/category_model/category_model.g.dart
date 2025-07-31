// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      type: json['type'] as String?,
      page: json['page'] as String?,
      color: json['color'] as String?,
      status: (json['status'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      parent: json['parent'],
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryChild.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'type': instance.type,
      'page': instance.page,
      'color': instance.color,
      'status': instance.status,
      'parent_id': instance.parentId,
      'parent': instance.parent,
      'children': instance.children,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$CategoryChildImpl _$$CategoryChildImplFromJson(Map<String, dynamic> json) =>
    _$CategoryChildImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      isFavorited: json['is_favorited'] as bool?,
    );

Map<String, dynamic> _$$CategoryChildImplToJson(_$CategoryChildImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'is_favorited': instance.isFavorited,
    };
