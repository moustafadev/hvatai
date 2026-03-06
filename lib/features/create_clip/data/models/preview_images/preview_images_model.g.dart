// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreviewImagesResponseImpl _$$PreviewImagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviewImagesResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PreviewImagesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreviewImagesResponseImplToJson(
        _$PreviewImagesResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$PreviewImagesDataImpl _$$PreviewImagesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviewImagesDataImpl(
      duration: (json['duration'] as num?)?.toInt(),
      interval: (json['interval'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PreviewImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PreviewImagesDataImplToJson(
        _$PreviewImagesDataImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'interval': instance.interval,
      'count': instance.count,
      'images': instance.images,
    };

_$PreviewImageImpl _$$PreviewImageImplFromJson(Map<String, dynamic> json) =>
    _$PreviewImageImpl(
      timestamp: json['timestamp'] as String?,
      timestampSeconds: (json['timestamp_seconds'] as num?)?.toInt(),
      path: json['path'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PreviewImageImplToJson(_$PreviewImageImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'timestamp_seconds': instance.timestampSeconds,
      'path': instance.path,
      'url': instance.url,
    };
