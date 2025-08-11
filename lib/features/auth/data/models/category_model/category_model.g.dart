// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryChild.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'description': instance.description,
      'user_id': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'children': instance.children,
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
