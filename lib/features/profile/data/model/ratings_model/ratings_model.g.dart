// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRatingsResponseImpl _$$UserRatingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRatingsResponseImpl(
      userPersonalRatings: (json['user_personal_ratings'] as List<dynamic>)
          .map((e) => UserPersonalRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserRatingsResponseImplToJson(
        _$UserRatingsResponseImpl instance) =>
    <String, dynamic>{
      'user_personal_ratings': instance.userPersonalRatings,
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
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RatedUserImplToJson(_$RatedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
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
      'reviewer': instance.reviewer,
      'reply': instance.reply,
      'replied_at': instance.repliedAt,
    };

_$RatingUserImpl _$$RatingUserImplFromJson(Map<String, dynamic> json) =>
    _$RatingUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$RatingUserImplToJson(_$RatingUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$MyRatingsResponseImpl _$$MyRatingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyRatingsResponseImpl(
      givenRatings: (json['given_ratings'] as List<dynamic>)
          .map((e) => GivenRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyRatingsResponseImplToJson(
        _$MyRatingsResponseImpl instance) =>
    <String, dynamic>{
      'given_ratings': instance.givenRatings,
    };
