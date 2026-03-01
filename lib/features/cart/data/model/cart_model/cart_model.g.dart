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
      businessId: (json['business_id'] as num?)?.toInt(),
      total: _parseDouble(json['total']),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryAvailability: json['delivery_availability'] == null
          ? null
          : DeliveryAvailability.fromJson(
              json['delivery_availability'] as Map<String, dynamic>),
      checkoutTotals: json['checkout_totals'] == null
          ? null
          : CheckoutTotals.fromJson(
              json['checkout_totals'] as Map<String, dynamic>),
      totals: json['totals'] == null
          ? null
          : Totals.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'total': instance.total,
      'items': instance.items,
      'delivery_availability': instance.deliveryAvailability,
      'checkout_totals': instance.checkoutTotals,
      'totals': instance.totals,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: _parseDouble(json['price']),
      originalPrice: _parseDouble(json['original_price']),
      discountAmount: _parseDouble(json['discount_amount']),
      discountType: json['discount_type'] as String?,
      discount: json['discount'] == null
          ? null
          : Discount.fromJson(json['discount'] as Map<String, dynamic>),
      totalPrice: _parseDouble(json['total_price']),
      totalOriginalPrice: _parseDouble(json['total_original_price']),
      bundleInfo: json['bundle_info'],
      fulfillment: json['fulfillment'] == null
          ? null
          : Fulfillment.fromJson(json['fulfillment'] as Map<String, dynamic>),
      item: json['item'] == null
          ? null
          : CartItemProductWrapper.fromJson(
              json['item'] as Map<String, dynamic>),
      business: json['business'] == null
          ? null
          : Business.fromJson(json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'original_price': instance.originalPrice,
      'discount_amount': instance.discountAmount,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'total_price': instance.totalPrice,
      'total_original_price': instance.totalOriginalPrice,
      'bundle_info': instance.bundleInfo,
      'fulfillment': instance.fulfillment,
      'item': instance.item,
      'business': instance.business,
    };

_$CartItemProductWrapperImpl _$$CartItemProductWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemProductWrapperImpl(
      id: (json['id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : CartItemProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartItemProductWrapperImplToJson(
        _$CartItemProductWrapperImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
    };

_$CartItemProductImpl _$$CartItemProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemProductImpl(
      id: (json['id'] as num?)?.toInt(),
      productCode: json['product_code'] as String?,
      productName: json['product_name'] as String?,
      productDescription: json['product_description'] as String?,
      type: json['type'] as String?,
      saleType: json['sale_type'] as String?,
      deliveryAvailable: _boolFromInt(json['delivery_available']),
      deliveryType: json['delivery_type'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      deliveryPrice: _parseStringToDouble(json['delivery_price']),
      deliveryDiscount: _parseStringToDouble(json['delivery_discount']),
      deliveryRadius: _parseDouble(json['delivery_radius']),
      status: _boolFromInt(json['status']),
      goHome: json['go_home'],
      selfDestruction: json['self_destruction'],
      userId: (json['user_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      averageRating: _parseDouble(json['average_rating']),
      ratingsCount: (json['ratings_count'] as num?)?.toInt(),
      images: _imagesFromJson(json['images']),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => CartItemVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : UserModel.fromJson(json['owner'] as Map<String, dynamic>),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
      ratings: json['ratings'] as List<dynamic>?,
      isInLiveAuction: json['is_in_live_auction'] as bool?,
      liveAuction: json['live_auction'],
    );

Map<String, dynamic> _$$CartItemProductImplToJson(
        _$CartItemProductImpl instance) =>
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
      'status': instance.status,
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
      'is_in_live_auction': instance.isInLiveAuction,
      'live_auction': instance.liveAuction,
    };

_$CartItemVariantImpl _$$CartItemVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$CartItemVariantImpl(
      id: (json['id'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      price: _parseDouble(json['price']),
      stock: (json['stock'] as num?)?.toInt(),
      attributes: json['attributes'],
      discount: _parseDouble(json['discount']),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$CartItemVariantImplToJson(
        _$CartItemVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'price': instance.price,
      'stock': instance.stock,
      'attributes': instance.attributes,
      'discount': instance.discount,
      'discount_type': instance.discountType,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      status: _boolFromInt(json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
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

_$BusinessImpl _$$BusinessImplFromJson(Map<String, dynamic> json) =>
    _$BusinessImpl(
      id: (json['id'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$$BusinessImplToJson(_$BusinessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
    };

_$DiscountImpl _$$DiscountImplFromJson(Map<String, dynamic> json) =>
    _$DiscountImpl(
      kind: json['kind'] as String?,
      amount: _parseDouble(json['amount']),
      meta: json['meta'] == null
          ? null
          : DiscountMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountImplToJson(_$DiscountImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'amount': instance.amount,
      'meta': instance.meta,
    };

_$DiscountMetaImpl _$$DiscountMetaImplFromJson(Map<String, dynamic> json) =>
    _$DiscountMetaImpl(
      value: _parseDouble(json['value']),
      valueType: json['value_type'] as String?,
    );

Map<String, dynamic> _$$DiscountMetaImplToJson(_$DiscountMetaImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'value_type': instance.valueType,
    };

_$FulfillmentImpl _$$FulfillmentImplFromJson(Map<String, dynamic> json) =>
    _$FulfillmentImpl(
      pickup: json['pickup'] as bool?,
      delivery: json['delivery'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$FulfillmentImplToJson(_$FulfillmentImpl instance) =>
    <String, dynamic>{
      'pickup': instance.pickup,
      'delivery': instance.delivery,
      'type': instance.type,
    };

_$DeliveryAvailabilityImpl _$$DeliveryAvailabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryAvailabilityImpl(
      pickup: json['pickup'] == null
          ? null
          : PickupDeliveryOption.fromJson(
              json['pickup'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : PickupDeliveryOption.fromJson(
              json['delivery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryAvailabilityImplToJson(
        _$DeliveryAvailabilityImpl instance) =>
    <String, dynamic>{
      'pickup': instance.pickup,
      'delivery': instance.delivery,
    };

_$PickupDeliveryOptionImpl _$$PickupDeliveryOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$PickupDeliveryOptionImpl(
      available: json['available'] as bool?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$PickupDeliveryOptionImplToJson(
        _$PickupDeliveryOptionImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'reason': instance.reason,
    };

_$CheckoutTotalsImpl _$$CheckoutTotalsImplFromJson(Map<String, dynamic> json) =>
    _$CheckoutTotalsImpl(
      pickup: json['pickup'] == null
          ? null
          : GrandTotal.fromJson(json['pickup'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : GrandTotal.fromJson(json['delivery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutTotalsImplToJson(
        _$CheckoutTotalsImpl instance) =>
    <String, dynamic>{
      'pickup': instance.pickup,
      'delivery': instance.delivery,
    };

_$GrandTotalImpl _$$GrandTotalImplFromJson(Map<String, dynamic> json) =>
    _$GrandTotalImpl(
      grand: json['grand'] == null
          ? null
          : GrandTotalDetails.fromJson(json['grand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GrandTotalImplToJson(_$GrandTotalImpl instance) =>
    <String, dynamic>{
      'grand': instance.grand,
    };

_$GrandTotalDetailsImpl _$$GrandTotalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$GrandTotalDetailsImpl(
      finalValue: _parseDouble(json['final']),
    );

Map<String, dynamic> _$$GrandTotalDetailsImplToJson(
        _$GrandTotalDetailsImpl instance) =>
    <String, dynamic>{
      'final': instance.finalValue,
    };

_$TotalsImpl _$$TotalsImplFromJson(Map<String, dynamic> json) => _$TotalsImpl(
      items: json['items'] == null
          ? null
          : TotalDetails.fromJson(json['items'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : TotalDetails.fromJson(json['delivery'] as Map<String, dynamic>),
      grand: json['grand'] == null
          ? null
          : TotalDetails.fromJson(json['grand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TotalsImplToJson(_$TotalsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'delivery': instance.delivery,
      'grand': instance.grand,
    };

_$TotalDetailsImpl _$$TotalDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TotalDetailsImpl(
      original: _parseDouble(json['original']),
      discount: _parseDouble(json['discount']),
      finalValue: _parseDouble(json['final']),
    );

Map<String, dynamic> _$$TotalDetailsImplToJson(_$TotalDetailsImpl instance) =>
    <String, dynamic>{
      'original': instance.original,
      'discount': instance.discount,
      'final': instance.finalValue,
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
