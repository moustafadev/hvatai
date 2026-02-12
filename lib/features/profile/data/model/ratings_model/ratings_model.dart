// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ratings_model.freezed.dart';
part 'ratings_model.g.dart';

@freezed
class UserRatingsResponse with _$UserRatingsResponse {
  const factory UserRatingsResponse({
    @JsonKey(name: 'product_ratings')
    required List<ProductRating> productRatings,
    @JsonKey(name: 'order_product_ratings')
    required List<dynamic> orderProductRatings,
    @JsonKey(name: 'user_personal_ratings')
    required List<UserPersonalRating> userPersonalRatings,
  }) = _UserRatingsResponse;

  factory UserRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRatingsResponseFromJson(json);
}

@freezed
class ProductRating with _$ProductRating {
  const factory ProductRating({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'product_id') required int productId,
    required int score,
    required List<dynamic> attributes,
    required String? comment,
    required String? image,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required RatingUser? user,
    required RatingProduct? product,
  }) = _ProductRating;

  factory ProductRating.fromJson(Map<String, dynamic> json) =>
      _$ProductRatingFromJson(json);
}

@freezed
class RatingUser with _$RatingUser {
  const factory RatingUser({
    required int id,
    required String name,
    required String? image,
    @JsonKey(name: 'personal_rating') required double? personalRating,
    @JsonKey(name: 'personal_rating_count') required int? personalRatingCount,
    @JsonKey(name: 'is_favorited') required bool? isFavorited,
    @JsonKey(name: 'favorites_count') required int? favoritesCount,
  }) = _RatingUser;

  factory RatingUser.fromJson(Map<String, dynamic> json) =>
      _$RatingUserFromJson(json);
}

@freezed
class RatingProduct with _$RatingProduct {
  const factory RatingProduct({
    required int id,
    required String name,
    @JsonKey(name: 'user_id') required int userId,
    required List<dynamic> images,
  }) = _RatingProduct;

  factory RatingProduct.fromJson(Map<String, dynamic> json) =>
      _$RatingProductFromJson(json);
}

@freezed
class UserPersonalRating with _$UserPersonalRating {
  const factory UserPersonalRating({
    required int id,
    @JsonKey(name: 'reviewer_id') required int reviewerId,
    @JsonKey(name: 'user_id') required int userId,
    required int score,
    required String? comment,
    required String? image,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<dynamic> attributes,
    required RatingUser? reviewer,
    required String? reply,
    @JsonKey(name: 'replied_at') required String? repliedAt,
  }) = _UserPersonalRating;

  factory UserPersonalRating.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalRatingFromJson(json);
}

@freezed
class MyRatingsResponse with _$MyRatingsResponse {
  const factory MyRatingsResponse({
    @JsonKey(name: 'given_ratings') required List<GivenRating> givenRatings,
    required ReceivedRatings received,
  }) = _MyRatingsResponse;

  factory MyRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyRatingsResponseFromJson(json);
}

@freezed
class GivenRating with _$GivenRating {
  const factory GivenRating({
    required int id,
    @JsonKey(name: 'reviewer_id') required int reviewerId,
    @JsonKey(name: 'user_id') required int userId,
    required int score,
    required String? comment,
    required String? image,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<dynamic> attributes,
    @JsonKey(name: 'rated_user') required RatedUser ratedUser,
  }) = _GivenRating;

  factory GivenRating.fromJson(Map<String, dynamic> json) =>
      _$GivenRatingFromJson(json);
}

@freezed
class RatedUser with _$RatedUser {
  const factory RatedUser({
    required int id,
    @JsonKey(name: 'business_id') required int? businessId,
    required String email,
    required String name,
    @JsonKey(name: 'last_name') required String? lastName,
    required String? gender,
    required String? country,
    @JsonKey(name: 'age_confirmation') required int ageConfirmation,
    @JsonKey(name: 'terms_agreement') required int termsAgreement,
    @JsonKey(name: 'personal_rating') required double? personalRating,
    required String? provider,
    @JsonKey(name: 'provider_id') required String? providerId,
    required String role,
    required String phone,
    required String? image,
    @JsonKey(name: 'image_business') required String? imageBusiness,
    required String? description,
    required String? lang,
    required String? visibility,
    required String sms,
    @JsonKey(name: 'send_email') required String sendEmail,
    required String push,
    required String? status,
    @JsonKey(name: 'email_verified_at') required String? emailVerifiedAt,
    @JsonKey(name: 'invite_code') required String inviteCode,
    @JsonKey(name: 'referred_by') required int? referredBy,
    @JsonKey(name: 'referral_awarded_at') required String? referralAwardedAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'personal_rating_count') required int? personalRatingCount,
    @JsonKey(name: 'is_favorited') required bool? isFavorited,
    @JsonKey(name: 'favorites_count') required int? favoritesCount,
  }) = _RatedUser;

  factory RatedUser.fromJson(Map<String, dynamic> json) =>
      _$RatedUserFromJson(json);
}

@freezed
class ReceivedRatings with _$ReceivedRatings {
  const factory ReceivedRatings({
    required List<UserPersonalRating> personal,
  }) = _ReceivedRatings;

  factory ReceivedRatings.fromJson(Map<String, dynamic> json) =>
      _$ReceivedRatingsFromJson(json);
}
