// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClipModelImpl _$$ClipModelImplFromJson(Map<String, dynamic> json) =>
    _$ClipModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      status: json['status'] as bool? ?? false,
      videoPath: json['video_path'] as String? ?? '',
      videoUrl: json['video_url'] as String? ?? '',
      stream: json['stream'] == null
          ? null
          : ClipStreamModel.fromJson(json['stream'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : ClipUserModel.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ClipModelImplToJson(_$ClipModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'video_path': instance.videoPath,
      'video_url': instance.videoUrl,
      'stream': instance.stream,
      'user': instance.user,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$ClipStreamModelImpl _$$ClipStreamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClipStreamModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      status: json['status'] as String? ?? '',
      isPublic: json['is_public'] as bool? ?? false,
    );

Map<String, dynamic> _$$ClipStreamModelImplToJson(
        _$ClipStreamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'is_public': instance.isPublic,
    };

_$ClipUserModelImpl _$$ClipUserModelImplFromJson(Map<String, dynamic> json) =>
    _$ClipUserModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ClipUserModelImplToJson(_$ClipUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$ClipsResponseModelImpl _$$ClipsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClipsResponseModelImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ClipModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? null
          : ClipsPaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClipsResponseModelImplToJson(
        _$ClipsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$ClipsPaginationModelImpl _$$ClipsPaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClipsPaginationModelImpl(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 15,
      total: (json['total'] as num?)?.toInt() ?? 0,
      lastPage: (json['last_page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$ClipsPaginationModelImplToJson(
        _$ClipsPaginationModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };
