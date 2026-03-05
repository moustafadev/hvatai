// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      uuid: json['uuid'] as String?,
      totalAmount: json['total_amount'] as String?,
      deliveryTotal: json['delivery_total'] as num?,
      itemsTotal: json['items_total'] as num?,
      status: json['status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      deliveryMethod: json['delivery_method'] as String?,
      totals: json['totals'] == null
          ? null
          : TotalsModel.fromJson(json['totals'] as Map<String, dynamic>),
      items: (json['details'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'total_amount': instance.totalAmount,
      'delivery_total': instance.deliveryTotal,
      'items_total': instance.itemsTotal,
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'delivery_method': instance.deliveryMethod,
      'totals': instance.totals,
      'details': instance.items,
      'user': instance.user,
    };

_$TotalsModelImpl _$$TotalsModelImplFromJson(Map<String, dynamic> json) =>
    _$TotalsModelImpl(
      items: json['items'] == null
          ? null
          : TotalSectionModel.fromJson(json['items'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : TotalSectionModel.fromJson(
              json['delivery'] as Map<String, dynamic>),
      grand: json['grand'] == null
          ? null
          : TotalSectionModel.fromJson(json['grand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalsModelImplToJson(_$TotalsModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'delivery': instance.delivery,
      'grand': instance.grand,
    };

_$TotalSectionModelImpl _$$TotalSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TotalSectionModelImpl(
      original: json['original'] as num?,
      discount: json['discount'] as num?,
      finalAmount: json['final'] as num?,
    );

Map<String, dynamic> _$$TotalSectionModelImplToJson(
        _$TotalSectionModelImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'discount': instance.discount,
      'final': instance.finalAmount,
    };

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      id: (json['id'] as num?)?.toInt(),
      price: json['price'] as num?,
      originalPrice: json['original_price'] as num?,
      quantity: (json['quantity'] as num?)?.toInt(),
      store: json['store'] == null
          ? null
          : StoreModel.fromJson(json['store'] as Map<String, dynamic>),
      variant: json['variant'] == null
          ? null
          : VariantModel.fromJson(json['variant'] as Map<String, dynamic>),
      productImages: (json['product_images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'original_price': instance.originalPrice,
      'quantity': instance.quantity,
      'store': instance.store,
      'variant': instance.variant,
      'product_images': instance.productImages,
    };

_$StoreModelImpl _$$StoreModelImplFromJson(Map<String, dynamic> json) =>
    _$StoreModelImpl(
      id: (json['id'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] as num?,
      ratingCount: (json['rating_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StoreModelImplToJson(_$StoreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'image': instance.image,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
    };

_$VariantModelImpl _$$VariantModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantModelImpl(
      id: (json['id'] as num?)?.toInt(),
      price: json['price'] as num?,
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'product': instance.product,
    };

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryPrice: json['delivery_price'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'delivery_time': instance.deliveryTime,
      'delivery_price': instance.deliveryPrice,
      'images': instance.images,
    };

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
