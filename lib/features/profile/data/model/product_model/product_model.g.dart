// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      productName: json['product_name'] as String?,
      productDescription: json['product_description'] as String?,
      saleType: json['sale_type'] as String? ?? 'buy_now',
      deliveryAvailable: _boolFromInt(json['delivery_available']),
      deliveryTime: json['delivery_time'] as String?,
      deliveryDiscount: _parseDouble(json['delivery_discount']),
      selfPickup: json['self_pickup'] == null
          ? false
          : _boolFromInt(json['self_pickup']),
      selfDestruction: json['self_destruction'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: _categoryIdFromJson(json['category_id']),
      averageRating: _parseDouble(json['average_rating']),
      ratingsCount: (json['ratings_count'] as num?)?.toInt() ?? 0,
      images:
          json['images'] == null ? const [] : _imagesFromJson(json['images']),
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      category: json['category'] == null
          ? null
          : MainCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      isFavorited: json['is_favorited'] as bool? ?? false,
      favoritesCount: (json['favorites_count'] as num?)?.toInt() ?? 0,
      ratings: json['ratings'] as List<dynamic>? ?? const [],
      isInLiveAuction: json['is_in_live_auction'] as bool? ?? false,
      liveAuction: json['live_auction'] == null
          ? null
          : LiveAuctionModel.fromJson(
              json['live_auction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.productName,
      'product_description': instance.productDescription,
      'sale_type': instance.saleType,
      'delivery_available': instance.deliveryAvailable,
      'delivery_time': instance.deliveryTime,
      'delivery_discount': instance.deliveryDiscount,
      'self_pickup': instance.selfPickup,
      'self_destruction': instance.selfDestruction,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'average_rating': instance.averageRating,
      'ratings_count': instance.ratingsCount,
      'images': instance.images,
      'variants': instance.variants,
      'category': instance.category,
      'user': instance.user,
      'owner': instance.owner,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
      'ratings': instance.ratings,
      'is_in_live_auction': instance.isInLiveAuction,
      'live_auction': instance.liveAuction,
    };

_$OwnerModelImpl _$$OwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$OwnerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OwnerModelImplToJson(_$OwnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
    };

_$VariantModelImpl _$$VariantModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantModelImpl(
      id: (json['id'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      price: _parseDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt() ?? 1,
      attributes: json['attributes'] as Map<String, dynamic>?,
      discount: _parseDouble(json['discount']),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'price': instance.price,
      'stock': instance.stock,
      'attributes': instance.attributes,
      'discount': instance.discount,
      'discount_type': instance.discountType,
    };

_$MainCategoryModelImpl _$$MainCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainCategoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      status: json['status'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MainCategoryModelImplToJson(
        _$MainCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'description': instance.description,
      'user_id': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$LiveAuctionModelImpl _$$LiveAuctionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveAuctionModelImpl(
      streamId: (json['stream_id'] as num?)?.toInt(),
      streamTitle: json['stream_title'] as String?,
      streamStatus: json['stream_status'] as String?,
      viewerCount: (json['viewer_count'] as num?)?.toInt(),
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      startingPrice: _parseDouble(json['starting_price']),
      currentBid: _parseDouble(json['current_bid']),
      biddingEnabled: json['bidding_enabled'] as bool?,
      bidSession: json['bid_session'] == null
          ? null
          : LiveAuctionBidSessionModel.fromJson(
              json['bid_session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LiveAuctionModelImplToJson(
        _$LiveAuctionModelImpl instance) =>
    <String, dynamic>{
      'stream_id': instance.streamId,
      'stream_title': instance.streamTitle,
      'stream_status': instance.streamStatus,
      'viewer_count': instance.viewerCount,
      'stream_product_id': instance.streamProductId,
      'starting_price': instance.startingPrice,
      'current_bid': instance.currentBid,
      'bidding_enabled': instance.biddingEnabled,
      'bid_session': instance.bidSession,
    };

_$LiveAuctionBidSessionModelImpl _$$LiveAuctionBidSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveAuctionBidSessionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      sessionEndTime: json['session_end_time'] == null
          ? null
          : DateTime.parse(json['session_end_time'] as String),
      remainingSeconds: (json['remaining_seconds'] as num?)?.toInt(),
      highestBidAmount: _parseDouble(json['highest_bid_amount']),
    );

Map<String, dynamic> _$$LiveAuctionBidSessionModelImplToJson(
        _$LiveAuctionBidSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'session_end_time': instance.sessionEndTime?.toIso8601String(),
      'remaining_seconds': instance.remainingSeconds,
      'highest_bid_amount': instance.highestBidAmount,
    };
