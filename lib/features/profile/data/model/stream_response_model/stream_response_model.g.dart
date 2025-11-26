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
      streamSettings: json['stream_settings'] as Map<String, dynamic>?,
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
      type: json['type'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      unit: json['unit'] as String?,
      deliveryAvailable: (json['delivery_available'] as num?)?.toInt(),
      selfPickup: (json['self_pickup'] as num?)?.toInt(),
      deliveryType: json['delivery_type'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryPrice: json['delivery_price'] as String?,
      deliveryDiscount: json['delivery_discount'] as String?,
      deliveryRadius: json['delivery_radius'] as String?,
      location: json['location'] as String?,
      latitude: _stringToDouble(json['latitude']),
      longitude: _stringToDouble(json['longitude']),
      status: json['status'] as bool?,
      featured: (json['featured'] as num?)?.toInt(),
      meta: json['meta'] as Map<String, dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deliveryLengthCm: json['delivery_length_cm'] as String?,
      deliveryWidthCm: json['delivery_width_cm'] as String?,
      deliveryHeightCm: json['delivery_height_cm'] as String?,
      deliveryWeightKg: json['delivery_weight_kg'] as String?,
      deliveryMethods: (json['delivery_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      saleType: json['sale_type'] as String?,
    );

Map<String, dynamic> _$$StreamEmbeddedProductModelImplToJson(
        _$StreamEmbeddedProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'code': instance.code,
      'unit': instance.unit,
      'delivery_available': instance.deliveryAvailable,
      'self_pickup': instance.selfPickup,
      'delivery_type': instance.deliveryType,
      'delivery_time': instance.deliveryTime,
      'delivery_price': instance.deliveryPrice,
      'delivery_discount': instance.deliveryDiscount,
      'delivery_radius': instance.deliveryRadius,
      'location': instance.location,
      'latitude': _doubleToString(instance.latitude),
      'longitude': _doubleToString(instance.longitude),
      'status': instance.status,
      'featured': instance.featured,
      'meta': instance.meta,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'delivery_length_cm': instance.deliveryLengthCm,
      'delivery_width_cm': instance.deliveryWidthCm,
      'delivery_height_cm': instance.deliveryHeightCm,
      'delivery_weight_kg': instance.deliveryWeightKg,
      'delivery_methods': instance.deliveryMethods,
      'sale_type': instance.saleType,
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
