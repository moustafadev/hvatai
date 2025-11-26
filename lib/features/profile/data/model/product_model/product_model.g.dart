// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      productCode: json['product_code'] as String?,
      productName: json['product_name'] as String?,
      productDescription: json['product_description'] as String?,
      type: json['type'] as String?,
      saleType: json['sale_type'] as String? ?? 'buy_now',
      deliveryAvailable: _boolFromInt(json['delivery_available']),
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
      deliveryMethods: (json['delivery_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: _boolFromInt(json['status']),
      goHome: json['go_home'] as String?,
      selfDestruction: json['self_destruction'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
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
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'product_description': instance.productDescription,
      'type': instance.type,
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
      'delivery_methods': instance.deliveryMethods,
      'status': _boolToJson(instance.status),
      'go_home': instance.goHome,
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
