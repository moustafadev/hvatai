// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartResponseImpl _$$CartResponseImplFromJson(Map<String, dynamic> json) =>
    _$CartResponseImpl(
      carts: (json['carts'] as List<dynamic>?)
          ?.map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartResponseImplToJson(_$CartResponseImpl instance) =>
    <String, dynamic>{
      'carts': instance.carts,
    };

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      id: (json['id'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toDouble(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'items': instance.items,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      itemType: json['item_type'] as String?,
      item: json['item'] == null
          ? null
          : MainVariantModel.fromJson(json['item'] as Map<String, dynamic>),
      seller: json['seller'] == null
          ? null
          : UserModel.fromJson(json['seller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'item_type': instance.itemType,
      'item': instance.item,
      'seller': instance.seller,
    };

_$MainVariantModelImpl _$$MainVariantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainVariantModelImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      price: _parseDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt(),
      attributes: json['attributes'],
      discount: _parseDouble(json['discount']),
      discountType: json['discount_type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      product: json['product'] == null
          ? null
          : MainProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainVariantModelImplToJson(
        _$MainVariantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'sku': instance.sku,
      'price': instance.price,
      'stock': instance.stock,
      'attributes': instance.attributes,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
    };

_$MainProductModelImpl _$$MainProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MainProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      code: json['code'] as String?,
      unit: json['unit'],
      deliveryAvailable: _boolFromInt(json['delivery_available']),
      selfPickup: _boolFromInt(json['self_pickup']),
      deliveryType: json['delivery_type'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryPrice: _parseDouble(json['delivery_price']),
      deliveryDiscount: _parseDouble(json['delivery_discount']),
      deliveryRadius: _parseDouble(json['delivery_radius']),
      location: json['location'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      status: _boolFromInt(json['status']),
      featured: (json['featured'] as num?)?.toInt(),
      meta: json['meta'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deliveryLengthCm: _parseDouble(json['delivery_length_cm']),
      deliveryWidthCm: _parseDouble(json['delivery_width_cm']),
      deliveryHeightCm: _parseDouble(json['delivery_height_cm']),
      deliveryWeightKg: _parseDouble(json['delivery_weight_kg']),
      deliveryMethods: (json['delivery_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      saleType: json['sale_type'] as String?,
      images: _imagesFromJson(json['images']),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainProductModelImplToJson(
        _$MainProductModelImpl instance) =>
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'delivery_length_cm': instance.deliveryLengthCm,
      'delivery_width_cm': instance.deliveryWidthCm,
      'delivery_height_cm': instance.deliveryHeightCm,
      'delivery_weight_kg': instance.deliveryWeightKg,
      'delivery_methods': instance.deliveryMethods,
      'sale_type': instance.saleType,
      'images': instance.images,
      'user': instance.user,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      businessId: (json['business_id'] as num?)?.toInt(),
      email: json['email'] as String?,
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      ageConfirmation: (json['age_confirmation'] as num?)?.toInt(),
      termsAgreement: (json['terms_agreement'] as num?)?.toInt(),
      personalRating: (json['personal_rating'] as num?)?.toDouble(),
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      imageBusiness: json['image_business'] as String?,
      description: json['description'] as String?,
      lang: json['lang'] as String?,
      visibility: json['visibility'] as String?,
      sms: json['sms'] as String?,
      sendEmail: json['send_email'] as String?,
      push: json['push'] as String?,
      status: json['status'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'email': instance.email,
      'name': instance.name,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'country': instance.country,
      'age_confirmation': instance.ageConfirmation,
      'terms_agreement': instance.termsAgreement,
      'personal_rating': instance.personalRating,
      'provider': instance.provider,
      'provider_id': instance.providerId,
      'role': instance.role,
      'phone': instance.phone,
      'image': instance.image,
      'image_business': instance.imageBusiness,
      'description': instance.description,
      'lang': instance.lang,
      'visibility': instance.visibility,
      'sms': instance.sms,
      'send_email': instance.sendEmail,
      'push': instance.push,
      'status': instance.status,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'personal_rating_count': instance.personalRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };
