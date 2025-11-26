// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseModelImpl _$$SearchResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResponseModelImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : SearchDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResponseModelImplToJson(
        _$SearchResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$SearchDataModelImpl _$$SearchDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDataModelImpl(
      parentCategories: (json['parent_categories'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      childCategories: (json['child_categories'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: json['products'] == null
          ? null
          : SearchProductsPayload.fromJson(
              json['products'] as Map<String, dynamic>),
      streams: (json['streams'] as List<dynamic>?)
          ?.map((e) => SearchStreamDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => SearchUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNoResults: json['has_no_results'] as bool?,
      recommendations: json['recommendations'],
    );

Map<String, dynamic> _$$SearchDataModelImplToJson(
        _$SearchDataModelImpl instance) =>
    <String, dynamic>{
      'parent_categories': instance.parentCategories,
      'child_categories': instance.childCategories,
      'products': instance.products,
      'streams': instance.streams,
      'users': instance.users,
      'has_no_results': instance.hasNoResults,
      'recommendations': instance.recommendations,
    };

_$SearchProductsPayloadImpl _$$SearchProductsPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductsPayloadImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : SearchPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchProductsPayloadImplToJson(
        _$SearchProductsPayloadImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$SearchPaginationImpl _$$SearchPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPaginationImpl(
      total: (json['total'] as num?)?.toInt(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchPaginationImplToJson(
        _$SearchPaginationImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'per_page': instance.perPage,
    };

_$SearchProductDtoImpl _$$SearchProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : SearchProductCategoryDto.fromJson(
              json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : SearchProductUserDto.fromJson(json['user'] as Map<String, dynamic>),
      price: _toDouble(json['price']),
      originalPrice: _toDouble(json['original_price']),
      hasDiscount: json['has_discount'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      rating: _toDouble(json['rating']),
      ratingsCount: (json['ratings_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) =>
              SearchProductVariantDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      delivery: json['delivery'] == null
          ? null
          : SearchProductDeliveryDto.fromJson(
              json['delivery'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SearchProductDtoImplToJson(
        _$SearchProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'user': instance.user,
      'price': instance.price,
      'original_price': instance.originalPrice,
      'has_discount': instance.hasDiscount,
      'images': instance.images,
      'rating': instance.rating,
      'ratings_count': instance.ratingsCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
      'variants': instance.variants,
      'delivery': instance.delivery,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$SearchProductCategoryDtoImpl _$$SearchProductCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductCategoryDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SearchProductCategoryDtoImplToJson(
        _$SearchProductCategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SearchProductUserDtoImpl _$$SearchProductUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductUserDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$SearchProductUserDtoImplToJson(
        _$SearchProductUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'description': instance.description,
    };

_$SearchProductVariantDtoImpl _$$SearchProductVariantDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductVariantDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      price: _toDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt(),
      discount: _toDouble(json['discount']),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$SearchProductVariantDtoImplToJson(
        _$SearchProductVariantDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'stock': instance.stock,
      'discount': instance.discount,
      'discount_type': instance.discountType,
    };

_$SearchProductDeliveryDtoImpl _$$SearchProductDeliveryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchProductDeliveryDtoImpl(
      available: json['available'] as bool?,
      type: json['type'] as String?,
      time: json['time'] as String?,
      price: json['price'] as String?,
      radius: json['radius'] as String?,
    );

Map<String, dynamic> _$$SearchProductDeliveryDtoImplToJson(
        _$SearchProductDeliveryDtoImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'type': instance.type,
      'time': instance.time,
      'price': instance.price,
      'radius': instance.radius,
    };

_$SearchStreamDtoImpl _$$SearchStreamDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchStreamDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      isLive: json['is_live'] as bool?,
      viewerCount: (json['viewer_count'] as num?)?.toInt(),
      thumbnail: json['thumbnail'] as String?,
      user: json['user'] == null
          ? null
          : SearchStreamUserDto.fromJson(json['user'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              SearchStreamCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SearchStreamDtoImplToJson(
        _$SearchStreamDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'is_live': instance.isLive,
      'viewer_count': instance.viewerCount,
      'thumbnail': instance.thumbnail,
      'user': instance.user,
      'categories': instance.categories,
      'updated_at': instance.updatedAt,
    };

_$SearchStreamUserDtoImpl _$$SearchStreamUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchStreamUserDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SearchStreamUserDtoImplToJson(
        _$SearchStreamUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
    };

_$SearchStreamCategoryDtoImpl _$$SearchStreamCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchStreamCategoryDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SearchStreamCategoryDtoImplToJson(
        _$SearchStreamCategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SearchUserDtoImpl _$$SearchUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$SearchUserDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      personalRating: (json['personal_rating'] as num?)?.toInt(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchUserDtoImplToJson(_$SearchUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'description': instance.description,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'favorites_count': instance.favoritesCount,
    };
