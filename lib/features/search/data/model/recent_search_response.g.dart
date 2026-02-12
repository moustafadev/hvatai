// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentSearchResponseImpl _$$RecentSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentSearchResponseImpl(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RecentSearchItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RecentSearchResponseImplToJson(
        _$RecentSearchResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$RecentSearchItemImpl _$$RecentSearchItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentSearchItemImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      query: json['query'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RecentSearchItemImplToJson(
        _$RecentSearchItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'query': instance.query,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
