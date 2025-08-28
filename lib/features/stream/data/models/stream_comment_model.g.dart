// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreamCommentResponseImpl _$$StreamCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamCommentResponseImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : StreamCommentPageData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamCommentResponseImplToJson(
        _$StreamCommentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$StreamCommentPageDataImpl _$$StreamCommentPageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamCommentPageDataImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StreamCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => PageLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StreamCommentPageDataImplToJson(
        _$StreamCommentPageDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$StreamCommentModelImpl _$$StreamCommentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamCommentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      message: json['message'] as String?,
      type: json['type'] as String?,
      metadata: json['metadata'],
      isVisible: json['is_visible'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : StreamUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamCommentModelImplToJson(
        _$StreamCommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'user_id': instance.userId,
      'message': instance.message,
      'type': instance.type,
      'metadata': instance.metadata,
      'is_visible': instance.isVisible,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

_$PageLinkImpl _$$PageLinkImplFromJson(Map<String, dynamic> json) =>
    _$PageLinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$PageLinkImplToJson(_$PageLinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
