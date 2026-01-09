// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bids_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBidsResponseImpl _$$UserBidsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserBidsResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserBidItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserBidsResponseImplToJson(
        _$UserBidsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$UserBidItemImpl _$$UserBidItemImplFromJson(Map<String, dynamic> json) =>
    _$UserBidItemImpl(
      id: (json['id'] as num?)?.toInt(),
      bidAmount: (json['bid_amount'] as num?)?.toDouble(),
      status: json['status'] as String?,
      statusRu: json['status_ru'] as String?,
      bidAt: json['bid_at'] == null
          ? null
          : DateTime.parse(json['bid_at'] as String),
      stream: json['stream'] == null
          ? null
          : UserBidStream.fromJson(json['stream'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      order: json['order'],
    );

Map<String, dynamic> _$$UserBidItemImplToJson(_$UserBidItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bid_amount': instance.bidAmount,
      'status': instance.status,
      'status_ru': instance.statusRu,
      'bid_at': instance.bidAt?.toIso8601String(),
      'stream': instance.stream,
      'product': instance.product,
      'order': instance.order,
    };

_$UserBidStreamImpl _$$UserBidStreamImplFromJson(Map<String, dynamic> json) =>
    _$UserBidStreamImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      status: json['status'] as String?,
      isPublic: json['is_public'] as bool?,
    );

Map<String, dynamic> _$$UserBidStreamImplToJson(_$UserBidStreamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'is_public': instance.isPublic,
    };
