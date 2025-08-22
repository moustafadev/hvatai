// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      images: _imagesFromJson(json['images']),
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
      'category': instance.category,
      'user': instance.user,
      'owner': instance.owner,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
      'ratings': instance.ratings,
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
      price: _parseDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt() ?? 1,
      id: (json['id'] as num?)?.toInt(),
      attributes: json['attributes'] as Map<String, dynamic>?,
      discount: _parseDouble(json['discount']),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$VariantModelImplToJson(_$VariantModelImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'stock': instance.stock,
      'id': instance.id,
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
