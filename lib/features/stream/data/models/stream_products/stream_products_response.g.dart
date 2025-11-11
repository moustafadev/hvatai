// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreamProductsResponseModelImpl _$$StreamProductsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamProductsResponseModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : StreamProductsDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamProductsResponseModelImplToJson(
        _$StreamProductsResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$StreamProductsDataModelImpl _$$StreamProductsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamProductsDataModelImpl(
      stream: json['stream'] == null
          ? null
          : StreamDataModel.fromJson(json['stream'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  StreamProductItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalProducts: (json['total_products'] as num?)?.toInt() ?? 0,
      activeProducts: (json['active_products'] as num?)?.toInt() ?? 0,
      biddableProducts: (json['biddable_products'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StreamProductsDataModelImplToJson(
        _$StreamProductsDataModelImpl instance) =>
    <String, dynamic>{
      'stream': instance.stream,
      'products': instance.products,
      'total_products': instance.totalProducts,
      'active_products': instance.activeProducts,
      'biddable_products': instance.biddableProducts,
    };

_$StreamProductItemModelImpl _$$StreamProductItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamProductItemModelImpl(
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      product: _productFromJson(json['product']),
      startingBid: _parseDouble(json['starting_bid']),
      currentHighestBid: _parseDouble(json['current_highest_bid']),
      currentHighestBidder:
          json['current_highest_bidder'] as Map<String, dynamic>?,
      totalBids: (json['total_bids'] as num?)?.toInt() ?? 0,
      canBid: json['can_bid'] as bool? ?? false,
      biddingEnabled: json['bidding_enabled'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? false,
      displayOrder: (json['display_order'] as num?)?.toInt() ?? 0,
      addedAt: json['added_at'] == null
          ? null
          : DateTime.parse(json['added_at'] as String),
      bidSession: json['bid_session'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StreamProductItemModelImplToJson(
        _$StreamProductItemModelImpl instance) =>
    <String, dynamic>{
      'stream_product_id': instance.streamProductId,
      'product': instance.product,
      'starting_bid': instance.startingBid,
      'current_highest_bid': instance.currentHighestBid,
      'current_highest_bidder': instance.currentHighestBidder,
      'total_bids': instance.totalBids,
      'can_bid': instance.canBid,
      'bidding_enabled': instance.biddingEnabled,
      'is_active': instance.isActive,
      'display_order': instance.displayOrder,
      'added_at': instance.addedAt?.toIso8601String(),
      'bid_session': instance.bidSession,
    };
