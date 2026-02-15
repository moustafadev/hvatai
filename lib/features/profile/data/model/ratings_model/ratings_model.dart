// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ratings_model.freezed.dart';
part 'ratings_model.g.dart';

@freezed
class UserRatingsResponse with _$UserRatingsResponse {
  const factory UserRatingsResponse({
    @JsonKey(name: 'user_personal_ratings')
    required List<UserPersonalRating> userPersonalRatings,
  }) = _UserRatingsResponse;

  factory UserRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRatingsResponseFromJson(json);
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
    required String name,
  }) = _RatedUser;

  factory RatedUser.fromJson(Map<String, dynamic> json) =>
      _$RatedUserFromJson(json);
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
    required RatingUser? reviewer,
    String? reply,
    @JsonKey(name: 'replied_at') String? repliedAt,
  }) = _UserPersonalRating;

  factory UserPersonalRating.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalRatingFromJson(json);
}

@freezed
class RatingUser with _$RatingUser {
  const factory RatingUser({
    required int id,
    required String name,
    required String? image,
  }) = _RatingUser;

  factory RatingUser.fromJson(Map<String, dynamic> json) =>
      _$RatingUserFromJson(json);
}

@freezed
class MyRatingsResponse with _$MyRatingsResponse {
  const factory MyRatingsResponse({
    @JsonKey(name: 'given_ratings') required List<GivenRating> givenRatings,
  }) = _MyRatingsResponse;

  factory MyRatingsResponse.fromJson(Map<String, dynamic> json) =>
      _$MyRatingsResponseFromJson(json);
}

/// extension to convert given ratings to user personal ratings
extension GivenRatingToUserPersonalRating on GivenRating {
  UserPersonalRating toUserPersonalRating() => UserPersonalRating(
        id: id,
        reviewerId: reviewerId,
        userId: userId,
        score: score,
        comment: comment,
        image: image,
        createdAt: createdAt,
        updatedAt: updatedAt,
        reviewer:
            RatingUser(id: reviewerId, name: ratedUser.name, image: image),
      );
}
