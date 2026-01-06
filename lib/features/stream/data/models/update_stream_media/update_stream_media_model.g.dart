// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stream_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateStreamMediaModelImpl _$$UpdateStreamMediaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateStreamMediaModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isPublic: json['isPublic'] as bool? ?? true,
    );

Map<String, dynamic> _$$UpdateStreamMediaModelImplToJson(
        _$UpdateStreamMediaModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'isPublic': instance.isPublic,
    };
