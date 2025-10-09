// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreamResponseModelImpl _$$StreamResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : StreamDataModel.fromJson(json['data'] as Map<String, dynamic>),
      livekit: json['livekit'] == null
          ? null
          : LivekitInfoModel.fromJson(json['livekit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamResponseModelImplToJson(
        _$StreamResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'livekit': instance.livekit,
    };

_$StreamDataModelImpl _$$StreamDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamDataModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      channelName: json['channel_name'] as String?,
      muxLiveStreamId: json['mux_live_stream_id'] as String?,
      muxStreamKey: json['mux_stream_key'] as String?,
      muxPlaybackId: json['mux_playback_id'] as String?,
      livekitRoomName: json['livekit_room_name'] as String?,
      livekitServerUrl: json['livekit_server_url'] as String?,
      livekitConfig: json['livekit_config'] == null
          ? null
          : LivekitConfigModel.fromJson(
              json['livekit_config'] as Map<String, dynamic>),
      livekitRoomCreatedAt: json['livekit_room_created_at'] == null
          ? null
          : DateTime.parse(json['livekit_room_created_at'] as String),
      status: json['status'] as String?,
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      endedAt: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      isRecordingEnabled: json['is_recording_enabled'] as bool?,
      recordingResourceId: json['recording_resource_id'] as String?,
      recordingSid: json['recording_sid'] as String?,
      recordingFiles: _stringListOrNull(json['recording_files']),
      thumbnailUrl: json['thumbnail_url'] as String?,
      viewerCount: (json['viewer_count'] as num?)?.toInt(),
      maxViewers: (json['max_viewers'] as num?)?.toInt(),
      isPublic: json['is_public'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      autoDeleteAfterEnd: json['auto_delete_after_end'] as bool?,
      autoDeleteHours: (json['auto_delete_hours'] as num?)?.toInt(),
      saveRecording: json['save_recording'] as bool?,
      enableComments: json['enable_comments'] as bool?,
      enableBidding: json['enable_bidding'] as bool?,
      minimumBidIncrement: _stringToDouble(json['minimum_bid_increment']),
      streamSettings: json['stream_settings'] as Map<String, dynamic>?,
      isMine: json['is_mine'] as bool?,
      user: json['user'] == null
          ? null
          : StreamUserModel.fromJson(json['user'] as Map<String, dynamic>),
      streamProducts: (json['stream_products'] as List<dynamic>?)
          ?.map((e) => StreamProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StreamDataModelImplToJson(
        _$StreamDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'channel_name': instance.channelName,
      'mux_live_stream_id': instance.muxLiveStreamId,
      'mux_stream_key': instance.muxStreamKey,
      'mux_playback_id': instance.muxPlaybackId,
      'livekit_room_name': instance.livekitRoomName,
      'livekit_server_url': instance.livekitServerUrl,
      'livekit_config': instance.livekitConfig,
      'livekit_room_created_at':
          instance.livekitRoomCreatedAt?.toIso8601String(),
      'status': instance.status,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
      'is_recording_enabled': instance.isRecordingEnabled,
      'recording_resource_id': instance.recordingResourceId,
      'recording_sid': instance.recordingSid,
      'recording_files': _nullOrStringList(instance.recordingFiles),
      'thumbnail_url': instance.thumbnailUrl,
      'viewer_count': instance.viewerCount,
      'max_viewers': instance.maxViewers,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'auto_delete_after_end': instance.autoDeleteAfterEnd,
      'auto_delete_hours': instance.autoDeleteHours,
      'save_recording': instance.saveRecording,
      'enable_comments': instance.enableComments,
      'enable_bidding': instance.enableBidding,
      'minimum_bid_increment': _doubleToString(instance.minimumBidIncrement),
      'stream_settings': instance.streamSettings,
      'is_mine': instance.isMine,
      'user': instance.user,
      'stream_products': instance.streamProducts,
    };

_$LivekitConfigModelImpl _$$LivekitConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LivekitConfigModelImpl(
      maxParticipants: (json['max_participants'] as num?)?.toInt(),
      emptyTimeout: (json['empty_timeout'] as num?)?.toInt(),
      videoQuality: json['video_quality'] as String?,
    );

Map<String, dynamic> _$$LivekitConfigModelImplToJson(
        _$LivekitConfigModelImpl instance) =>
    <String, dynamic>{
      'max_participants': instance.maxParticipants,
      'empty_timeout': instance.emptyTimeout,
      'video_quality': instance.videoQuality,
    };

_$LivekitInfoModelImpl _$$LivekitInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LivekitInfoModelImpl(
      roomName: json['room_name'] as String?,
      serverUrl: json['server_url'] as String?,
    );

Map<String, dynamic> _$$LivekitInfoModelImplToJson(
        _$LivekitInfoModelImpl instance) =>
    <String, dynamic>{
      'room_name': instance.roomName,
      'server_url': instance.serverUrl,
    };

_$StreamUserModelImpl _$$StreamUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamUserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      personalRating: (json['personal_rating'] as num?)?.toDouble(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StreamUserModelImplToJson(
        _$StreamUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };

_$StreamProductModelImpl _$$StreamProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      startingPrice: json['starting_price'] as String?,
      currentBid: json['current_bid'] as String?,
      isActive: json['is_active'] as bool?,
      displayOrder: (json['display_order'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamProductModelImplToJson(
        _$StreamProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'product_id': instance.productId,
      'starting_price': instance.startingPrice,
      'current_bid': instance.currentBid,
      'is_active': instance.isActive,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
    };

_$StreamListResponseModelImpl _$$StreamListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamListResponseModelImpl(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StreamDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamListResponseModelImplToJson(
        _$StreamListResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$PaginationModelImpl _$$PaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationModelImpl(
      currentPage: json['current_page'] as String?,
      perPage: json['per_page'] as String?,
      total: (json['total'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationModelImplToJson(
        _$PaginationModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };
