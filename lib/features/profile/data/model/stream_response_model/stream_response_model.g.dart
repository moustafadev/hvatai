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
      thumbnailUrl: json['thumbnail_url'] as String?,
      gifUrl: json['gif_url'] as String?,
    );

Map<String, dynamic> _$$StreamResponseModelImplToJson(
        _$StreamResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'livekit': instance.livekit,
      'thumbnail_url': instance.thumbnailUrl,
      'gif_url': instance.gifUrl,
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
      latestThumbnailUrl: json['latest_thumbnail_url'] as String?,
      latestGifUrl: json['latest_gif_url'] as String?,
      thumbnailHistory: _stringListOrNull(json['thumbnail_history']),
      gifHistory: _stringListOrNull(json['gif_history']),
      isFavorited: json['is_favorite'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      lastThumbnailGeneratedAt: json['last_thumbnail_generated_at'] == null
          ? null
          : DateTime.parse(json['last_thumbnail_generated_at'] as String),
      lastGifGeneratedAt: json['last_gif_generated_at'] == null
          ? null
          : DateTime.parse(json['last_gif_generated_at'] as String),
      latestThumbnail: json['latest_thumbnail'] as String?,
      latestGif: json['latest_gif'] as String?,
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
      bidDurationSeconds: (json['bid_duration_seconds'] as num?)?.toInt(),
      streamSettings: json['stream_settings'] == null
          ? null
          : StreamSettingsModel.fromJson(
              json['stream_settings'] as Map<String, dynamic>),
      isMine: json['is_mine'] as bool?,
      user: json['user'] == null
          ? null
          : StreamUserModel.fromJson(json['user'] as Map<String, dynamic>),
      streamProducts: (json['stream_products'] as List<dynamic>?)
          ?.map((e) => StreamProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => StreamCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordUrl: json['record_url'] as String?,
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
      'latest_thumbnail_url': instance.latestThumbnailUrl,
      'latest_gif_url': instance.latestGifUrl,
      'thumbnail_history': _nullOrStringList(instance.thumbnailHistory),
      'gif_history': _nullOrStringList(instance.gifHistory),
      'is_favorite': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
      'last_thumbnail_generated_at':
          instance.lastThumbnailGeneratedAt?.toIso8601String(),
      'last_gif_generated_at': instance.lastGifGeneratedAt?.toIso8601String(),
      'latest_thumbnail': instance.latestThumbnail,
      'latest_gif': instance.latestGif,
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
      'bid_duration_seconds': instance.bidDurationSeconds,
      'stream_settings': instance.streamSettings,
      'is_mine': instance.isMine,
      'user': instance.user,
      'stream_products': instance.streamProducts,
      'categories': instance.categories,
      'record_url': instance.recordUrl,
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
      image: json['image'] as String?,
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
      'image': instance.image,
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
      bidDurationSeconds: (json['bid_duration_seconds'] as num?)?.toInt(),
      biddingEnabled: json['bidding_enabled'] as bool?,
      isActive: json['is_active'] as bool?,
      displayOrder: (json['display_order'] as num?)?.toInt(),
      remainingSeconds: (json['remaining_seconds'] as num?)?.toInt(),
      bidSession: json['bid_session'] == null
          ? null
          : ToggleBiddingSessionModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      product: json['product'] == null
          ? null
          : StreamEmbeddedProductModel.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamProductModelImplToJson(
        _$StreamProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'product_id': instance.productId,
      'starting_price': instance.startingPrice,
      'current_bid': instance.currentBid,
      'bid_duration_seconds': instance.bidDurationSeconds,
      'bidding_enabled': instance.biddingEnabled,
      'is_active': instance.isActive,
      'display_order': instance.displayOrder,
      'remaining_seconds': instance.remainingSeconds,
      'bid_session': instance.bidSession,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
    };

_$StreamEmbeddedProductModelImpl _$$StreamEmbeddedProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamEmbeddedProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      selfPickup: (json['self_pickup'] as num?)?.toInt(),
      location: json['location'] as String?,
      latitude: _stringToDouble(json['latitude']),
      longitude: _stringToDouble(json['longitude']),
    );

Map<String, dynamic> _$$StreamEmbeddedProductModelImplToJson(
        _$StreamEmbeddedProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'self_pickup': instance.selfPickup,
      'location': instance.location,
      'latitude': _doubleToString(instance.latitude),
      'longitude': _doubleToString(instance.longitude),
    };

_$StreamCategoryModelImpl _$$StreamCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamCategoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      pivot: json['pivot'] == null
          ? null
          : StreamCategoryPivotModel.fromJson(
              json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamCategoryModelImplToJson(
        _$StreamCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pivot': instance.pivot,
    };

_$StreamCategoryPivotModelImpl _$$StreamCategoryPivotModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamCategoryPivotModelImpl(
      streamId: (json['stream_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StreamCategoryPivotModelImplToJson(
        _$StreamCategoryPivotModelImpl instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$StreamListResponseModelImpl _$$StreamListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamListResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
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
      'message': instance.message,
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

_$StreamSettingsModelImpl _$$StreamSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamSettingsModelImpl(
      livekit: json['livekit'] == null
          ? null
          : LivekitSettingsModel.fromJson(
              json['livekit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamSettingsModelImplToJson(
        _$StreamSettingsModelImpl instance) =>
    <String, dynamic>{
      'livekit': instance.livekit,
    };

_$LivekitSettingsModelImpl _$$LivekitSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LivekitSettingsModelImpl(
      room: json['room'] as String?,
      egress: json['egress'] == null
          ? null
          : EgressModel.fromJson(json['egress'] as Map<String, dynamic>),
      recordingPlaylist: _stringFromJson(json['recording_playlist'] as String?),
    );

Map<String, dynamic> _$$LivekitSettingsModelImplToJson(
        _$LivekitSettingsModelImpl instance) =>
    <String, dynamic>{
      'room': instance.room,
      'egress': instance.egress,
      'recording_playlist': instance.recordingPlaylist,
    };

_$EgressModelImpl _$$EgressModelImplFromJson(Map<String, dynamic> json) =>
    _$EgressModelImpl(
      file: json['file'] == null
          ? null
          : EgressFileModel.fromJson(json['file'] as Map<String, dynamic>),
      error: json['error'] as String?,
      status: json['status'] as String?,
      details: json['details'] as String?,
      roomId: json['room_id'] as String?,
      endedAt: json['ended_at'] as String?,
      egressId: json['egress_id'] as String?,
      roomName: json['room_name'] as String?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      startedAt: json['started_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      sourceType: json['source_type'] as String?,
      fileResults: (json['file_results'] as List<dynamic>?)
          ?.map((e) => EgressFileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageResults: json['image_results'] as List<dynamic>?,
      roomComposite: json['room_composite'] == null
          ? null
          : RoomCompositeModel.fromJson(
              json['room_composite'] as Map<String, dynamic>),
      streamResults: json['stream_results'] as List<dynamic>?,
      segmentResults: json['segment_results'] as List<dynamic>?,
      manifestLocation: json['manifest_location'] as String?,
      backupStorageUsed: json['backup_storage_used'] as bool?,
    );

Map<String, dynamic> _$$EgressModelImplToJson(_$EgressModelImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'error': instance.error,
      'status': instance.status,
      'details': instance.details,
      'room_id': instance.roomId,
      'ended_at': instance.endedAt,
      'egress_id': instance.egressId,
      'room_name': instance.roomName,
      'error_code': instance.errorCode,
      'started_at': instance.startedAt,
      'updated_at': instance.updatedAt,
      'source_type': instance.sourceType,
      'file_results': instance.fileResults,
      'image_results': instance.imageResults,
      'room_composite': instance.roomComposite,
      'stream_results': instance.streamResults,
      'segment_results': instance.segmentResults,
      'manifest_location': instance.manifestLocation,
      'backup_storage_used': instance.backupStorageUsed,
    };

_$EgressFileModelImpl _$$EgressFileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EgressFileModelImpl(
      size: json['size'] as String?,
      duration: json['duration'] as String?,
      endedAt: json['ended_at'] as String?,
      filename: json['filename'] as String?,
      location: json['location'] as String?,
      startedAt: json['started_at'] as String?,
    );

Map<String, dynamic> _$$EgressFileModelImplToJson(
        _$EgressFileModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'duration': instance.duration,
      'ended_at': instance.endedAt,
      'filename': instance.filename,
      'location': instance.location,
      'started_at': instance.startedAt,
    };

_$RoomCompositeModelImpl _$$RoomCompositeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomCompositeModelImpl(
      file: json['file'] == null
          ? null
          : RoomCompositeFileModel.fromJson(
              json['file'] as Map<String, dynamic>),
      layout: json['layout'] as String?,
      advanced: json['advanced'] == null
          ? null
          : RoomCompositeAdvancedModel.fromJson(
              json['advanced'] as Map<String, dynamic>),
      webhooks: json['webhooks'] as List<dynamic>?,
      roomName: json['room_name'] as String?,
      audioOnly: json['audio_only'] as bool?,
      videoOnly: json['video_only'] as bool?,
      audioMixing: json['audio_mixing'] as String?,
      fileOutputs: json['file_outputs'] as List<dynamic>?,
      imageOutputs: json['image_outputs'] as List<dynamic>?,
      streamOutputs: json['stream_outputs'] as List<dynamic>?,
      customBaseUrl: json['custom_base_url'] as String?,
      segmentOutputs: json['segment_outputs'] as List<dynamic>?,
    );

Map<String, dynamic> _$$RoomCompositeModelImplToJson(
        _$RoomCompositeModelImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'layout': instance.layout,
      'advanced': instance.advanced,
      'webhooks': instance.webhooks,
      'room_name': instance.roomName,
      'audio_only': instance.audioOnly,
      'video_only': instance.videoOnly,
      'audio_mixing': instance.audioMixing,
      'file_outputs': instance.fileOutputs,
      'image_outputs': instance.imageOutputs,
      'stream_outputs': instance.streamOutputs,
      'custom_base_url': instance.customBaseUrl,
      'segment_outputs': instance.segmentOutputs,
    };

_$RoomCompositeFileModelImpl _$$RoomCompositeFileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomCompositeFileModelImpl(
      filepath: json['filepath'] as String?,
      fileType: json['file_type'] as String?,
      disableManifest: json['disable_manifest'] as bool?,
    );

Map<String, dynamic> _$$RoomCompositeFileModelImplToJson(
        _$RoomCompositeFileModelImpl instance) =>
    <String, dynamic>{
      'filepath': instance.filepath,
      'file_type': instance.fileType,
      'disable_manifest': instance.disableManifest,
    };

_$RoomCompositeAdvancedModelImpl _$$RoomCompositeAdvancedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomCompositeAdvancedModelImpl(
      depth: (json['depth'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      framerate: (json['framerate'] as num?)?.toInt(),
      audioCodec: json['audio_codec'] as String?,
      videoCodec: json['video_codec'] as String?,
      audioBitrate: (json['audio_bitrate'] as num?)?.toInt(),
      audioQuality: (json['audio_quality'] as num?)?.toInt(),
      videoBitrate: (json['video_bitrate'] as num?)?.toInt(),
      videoQuality: (json['video_quality'] as num?)?.toInt(),
      audioFrequency: (json['audio_frequency'] as num?)?.toInt(),
      keyFrameInterval: (json['key_frame_interval'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RoomCompositeAdvancedModelImplToJson(
        _$RoomCompositeAdvancedModelImpl instance) =>
    <String, dynamic>{
      'depth': instance.depth,
      'width': instance.width,
      'height': instance.height,
      'framerate': instance.framerate,
      'audio_codec': instance.audioCodec,
      'video_codec': instance.videoCodec,
      'audio_bitrate': instance.audioBitrate,
      'audio_quality': instance.audioQuality,
      'video_bitrate': instance.videoBitrate,
      'video_quality': instance.videoQuality,
      'audio_frequency': instance.audioFrequency,
      'key_frame_interval': instance.keyFrameInterval,
    };
