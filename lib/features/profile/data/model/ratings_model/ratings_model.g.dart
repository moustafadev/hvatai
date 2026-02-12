// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRatingsResponseImpl _$$UserRatingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingsResponseImpl(
      productRatings: (json['product_ratings'] as List<dynamic>)
          .map((e) => ProductRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderProductRatings: json['order_product_ratings'] as List<dynamic>,
      userPersonalRatings: (json['user_personal_ratings'] as List<dynamic>)
          .map((e) => UserPersonalRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserRatingsResponseImplToJson(
        _$UserRatingsResponseImpl instance) =>
    <String, dynamic>{
      'product_ratings': instance.productRatings,
      'order_product_ratings': instance.orderProductRatings,
      'user_personal_ratings': instance.userPersonalRatings,
    };

_$ProductRatingImpl _$$ProductRatingImplFromJson(Map<String, dynamic> json) =>
    _$ProductRatingImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      attributes: json['attributes'] as List<dynamic>,
      comment: json['comment'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      user: json['user'] == null
          ? null
          : RatingUser.fromJson(json['user'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : RatingProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductRatingImplToJson(_$ProductRatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'score': instance.score,
      'attributes': instance.attributes,
      'comment': instance.comment,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
      'product': instance.product,
    };

_$RatingUserImpl _$$RatingUserImplFromJson(Map<String, dynamic> json) =>
    _$RatingUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      personalRating: (json['personal_rating'] as num?)?.toDouble(),
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingUserImplToJson(_$RatingUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'personal_rating': instance.personalRating,
      'personal_rating_count': instance.personalRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };

_$RatingProductImpl _$$RatingProductImplFromJson(Map<String, dynamic> json) =>
    _$RatingProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      userId: (json['user_id'] as num).toInt(),
      images: json['images'] as List<dynamic>,
    );

Map<String, dynamic> _$$RatingProductImplToJson(_$RatingProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'images': instance.images,
    };

_$UserPersonalRatingImpl _$$UserPersonalRatingImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPersonalRatingImpl(
      id: (json['id'] as num).toInt(),
      reviewerId: (json['reviewer_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      comment: json['comment'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      attributes: json['attributes'] as List<dynamic>,
      reviewer: json['reviewer'] == null
          ? null
          : RatingUser.fromJson(json['reviewer'] as Map<String, dynamic>),
      reply: json['reply'] as String?,
      repliedAt: json['replied_at'] as String?,
    );

Map<String, dynamic> _$$UserPersonalRatingImplToJson(
        _$UserPersonalRatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewer_id': instance.reviewerId,
      'user_id': instance.userId,
      'score': instance.score,
      'comment': instance.comment,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'attributes': instance.attributes,
      'reviewer': instance.reviewer,
      'reply': instance.reply,
      'replied_at': instance.repliedAt,
    };

_$MyRatingsResponseImpl _$$MyRatingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyRatingsResponseImpl(
      givenRatings: (json['given_ratings'] as List<dynamic>)
          .map((e) => GivenRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      received:
          ReceivedRatings.fromJson(json['received'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyRatingsResponseImplToJson(
        _$MyRatingsResponseImpl instance) =>
    <String, dynamic>{
      'given_ratings': instance.givenRatings,
      'received': instance.received,
    };

_$GivenRatingImpl _$$GivenRatingImplFromJson(Map<String, dynamic> json) =>
    _$GivenRatingImpl(
      id: (json['id'] as num).toInt(),
      reviewerId: (json['reviewer_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      comment: json['comment'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      attributes: json['attributes'] as List<dynamic>,
      ratedUser: RatedUser.fromJson(json['rated_user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GivenRatingImplToJson(_$GivenRatingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewer_id': instance.reviewerId,
      'user_id': instance.userId,
      'score': instance.score,
      'comment': instance.comment,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'attributes': instance.attributes,
      'rated_user': instance.ratedUser,
    };

_$RatedUserImpl _$$RatedUserImplFromJson(Map<String, dynamic> json) =>
    _$RatedUserImpl(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num?)?.toInt(),
      email: json['email'] as String,
      name: json['name'] as String,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      country: json['country'] as String?,
      ageConfirmation: (json['age_confirmation'] as num).toInt(),
      termsAgreement: (json['terms_agreement'] as num).toInt(),
      personalRating: (json['personal_rating'] as num?)?.toDouble(),
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      role: json['role'] as String,
      phone: json['phone'] as String,
      image: json['image'] as String?,
      imageBusiness: json['image_business'] as String?,
      description: json['description'] as String?,
      lang: json['lang'] as String?,
      visibility: json['visibility'] as String?,
      sms: json['sms'] as String,
      sendEmail: json['send_email'] as String,
      push: json['push'] as String,
      status: json['status'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      inviteCode: json['invite_code'] as String,
      referredBy: (json['referred_by'] as num?)?.toInt(),
      referralAwardedAt: json['referral_awarded_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      personalRatingCount: (json['personal_rating_count'] as num?)?.toInt(),
      isFavorited: json['is_favorited'] as bool?,
      favoritesCount: (json['favorites_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatedUserImplToJson(_$RatedUserImpl instance) =>
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
      'email_verified_at': instance.emailVerifiedAt,
      'invite_code': instance.inviteCode,
      'referred_by': instance.referredBy,
      'referral_awarded_at': instance.referralAwardedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'personal_rating_count': instance.personalRatingCount,
      'is_favorited': instance.isFavorited,
      'favorites_count': instance.favoritesCount,
    };

_$ReceivedRatingsImpl _$$ReceivedRatingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceivedRatingsImpl(
      personal: (json['personal'] as List<dynamic>)
          .map((e) => UserPersonalRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReceivedRatingsImplToJson(
        _$ReceivedRatingsImpl instance) =>
    <String, dynamic>{
      'personal': instance.personal,
    };
