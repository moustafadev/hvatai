// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchSuggestionsResponseImpl _$$SearchSuggestionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchSuggestionsResponseImpl(
      success: json['success'] as bool,
      data:
          SearchSuggestionsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchSuggestionsResponseImplToJson(
        _$SearchSuggestionsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SearchSuggestionsDataImpl _$$SearchSuggestionsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchSuggestionsDataImpl(
      query: json['query'] as String,
      count: (json['count'] as num).toInt(),
      suggestions: (json['suggestions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SearchSuggestionsDataImplToJson(
        _$SearchSuggestionsDataImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'count': instance.count,
      'suggestions': instance.suggestions,
    };
