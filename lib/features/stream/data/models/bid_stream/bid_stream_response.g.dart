// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_stream_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidStreamResponseImpl _$$BidStreamResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BidStreamResponseImpl(
      success: json['success'] as bool,
      data: BidStreamData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidStreamResponseImplToJson(
        _$BidStreamResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$BidStreamDataImpl _$$BidStreamDataImplFromJson(Map<String, dynamic> json) =>
    _$BidStreamDataImpl(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => BidStreamItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => BidStreamLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BidStreamDataImplToJson(_$BidStreamDataImpl instance) =>
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

_$BidStreamItemImpl _$$BidStreamItemImplFromJson(Map<String, dynamic> json) =>
    _$BidStreamItemImpl(
      id: (json['id'] as num?)?.toInt(),
      streamId: (json['stream_id'] as num?)?.toInt(),
      streamProductId: (json['stream_product_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      bidAmount: json['bid_amount'] as String?,
      status: json['status'] as String?,
      notes: json['notes'] as String?,
      bidAt: json['bid_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      user: json['user'] == null
          ? null
          : StreamUserModel.fromJson(json['user'] as Map<String, dynamic>),
      streamProduct: json['stream_product'] == null
          ? null
          : StreamProductModel.fromJson(
              json['stream_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BidStreamItemImplToJson(_$BidStreamItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stream_id': instance.streamId,
      'stream_product_id': instance.streamProductId,
      'user_id': instance.userId,
      'bid_amount': instance.bidAmount,
      'status': instance.status,
      'notes': instance.notes,
      'bid_at': instance.bidAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
      'stream_product': instance.streamProduct,
    };

_$BidProductImpl _$$BidProductImplFromJson(Map<String, dynamic> json) =>
    _$BidProductImpl(
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
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      status: (json['status'] as num?)?.toInt(),
      featured: (json['featured'] as num?)?.toInt(),
      meta: json['meta'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deliveryLengthCm: json['delivery_length_cm'] as String?,
      deliveryWidthCm: json['delivery_width_cm'] as String?,
      deliveryHeightCm: json['delivery_height_cm'] as String?,
      deliveryWeightKg: json['delivery_weight_kg'] as String?,
      deliveryMethods: json['delivery_methods'] as String?,
      saleType: json['sale_type'] as String?,
    );

Map<String, dynamic> _$$BidProductImplToJson(_$BidProductImpl instance) =>
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
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'featured': instance.featured,
      'meta': instance.meta,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'delivery_length_cm': instance.deliveryLengthCm,
      'delivery_width_cm': instance.deliveryWidthCm,
      'delivery_height_cm': instance.deliveryHeightCm,
      'delivery_weight_kg': instance.deliveryWeightKg,
      'delivery_methods': instance.deliveryMethods,
      'sale_type': instance.saleType,
    };

_$BidStreamLinkImpl _$$BidStreamLinkImplFromJson(Map<String, dynamic> json) =>
    _$BidStreamLinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$BidStreamLinkImplToJson(_$BidStreamLinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
