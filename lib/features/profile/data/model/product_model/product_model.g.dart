// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      productName: json['product_name'] as String?,
      productDescription: json['product_description'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      saleType: json['sale_type'] as String? ?? 'auction',
      deliveryAvailable: json['delivery_available'] == null
          ? false
          : _boolFromInt(json['delivery_available']),
      deliveryType: json['delivery_type'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryPrice: _parseDouble(json['delivery_price']),
      deliveryDiscount: _parseDouble(json['delivery_discount']),
      deliveryRadius: _parseDouble(json['delivery_radius']),
      selfPickup: json['self_pickup'] == null
          ? false
          : _boolFromInt(json['self_pickup']),
      deliveryLengthCm: _parseDouble(json['delivery_length_cm']),
      deliveryWidthCm: _parseDouble(json['delivery_width_cm']),
      deliveryHeightCm: _parseDouble(json['delivery_height_cm']),
      deliveryWeightKg: _parseDouble(json['delivery_weight_kg']),
      id: (json['id'] as num?)?.toInt(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deliveryMethods: (json['delivery_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: _boolFromInt(json['status']),
      productPictures: json['product_pictures'],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'product_name': instance.productName,
      'product_description': instance.productDescription,
      'category_id': instance.categoryId,
      'sale_type': instance.saleType,
      'delivery_available': instance.deliveryAvailable,
      'delivery_type': instance.deliveryType,
      'delivery_time': instance.deliveryTime,
      'delivery_price': instance.deliveryPrice,
      'delivery_discount': instance.deliveryDiscount,
      'delivery_radius': instance.deliveryRadius,
      'self_pickup': instance.selfPickup,
      'delivery_length_cm': instance.deliveryLengthCm,
      'delivery_width_cm': instance.deliveryWidthCm,
      'delivery_height_cm': instance.deliveryHeightCm,
      'delivery_weight_kg': instance.deliveryWeightKg,
      'id': instance.id,
      'children': instance.children,
      'parent_id': instance.parentId,
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'description': instance.description,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'delivery_methods': instance.deliveryMethods,
      'status': instance.status,
      'product_pictures': instance.productPictures,
      'variants': instance.variants,
    };

_$VariantModelImpl _$$VariantModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantModelImpl(
      price: _parseDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt() ?? 1,
      attributes: json['attributes'] as Map<String, dynamic>?,
      discount: _parseDouble(json['discount']),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'stock': instance.stock,
      'attributes': instance.attributes,
      'discount': instance.discount,
      'discount_type': instance.discountType,
    };
