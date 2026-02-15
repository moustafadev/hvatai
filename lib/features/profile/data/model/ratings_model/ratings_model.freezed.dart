// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ratings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRatingsResponse _$UserRatingsResponseFromJson(Map<String, dynamic> json) {
  return _UserRatingsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserRatingsResponse {
  @JsonKey(name: 'user_personal_ratings')
  List<UserPersonalRating> get userPersonalRatings =>
      throw _privateConstructorUsedError;

  /// Serializes this UserRatingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingsResponseCopyWith<UserRatingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingsResponseCopyWith<$Res> {
  factory $UserRatingsResponseCopyWith(
          UserRatingsResponse value, $Res Function(UserRatingsResponse) then) =
      _$UserRatingsResponseCopyWithImpl<$Res, UserRatingsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_personal_ratings')
      List<UserPersonalRating> userPersonalRatings});
}

/// @nodoc
class _$UserRatingsResponseCopyWithImpl<$Res, $Val extends UserRatingsResponse>
    implements $UserRatingsResponseCopyWith<$Res> {
  _$UserRatingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPersonalRatings = null,
  }) {
    return _then(_value.copyWith(
      userPersonalRatings: null == userPersonalRatings
          ? _value.userPersonalRatings
          : userPersonalRatings // ignore: cast_nullable_to_non_nullable
              as List<UserPersonalRating>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingsResponseImplCopyWith<$Res>
    implements $UserRatingsResponseCopyWith<$Res> {
  factory _$$UserRatingsResponseImplCopyWith(_$UserRatingsResponseImpl value,
          $Res Function(_$UserRatingsResponseImpl) then) =
      __$$UserRatingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_personal_ratings')
      List<UserPersonalRating> userPersonalRatings});
}

/// @nodoc
class __$$UserRatingsResponseImplCopyWithImpl<$Res>
    extends _$UserRatingsResponseCopyWithImpl<$Res, _$UserRatingsResponseImpl>
    implements _$$UserRatingsResponseImplCopyWith<$Res> {
  __$$UserRatingsResponseImplCopyWithImpl(_$UserRatingsResponseImpl _value,
      $Res Function(_$UserRatingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPersonalRatings = null,
  }) {
    return _then(_$UserRatingsResponseImpl(
      userPersonalRatings: null == userPersonalRatings
          ? _value._userPersonalRatings
          : userPersonalRatings // ignore: cast_nullable_to_non_nullable
              as List<UserPersonalRating>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRatingsResponseImpl implements _UserRatingsResponse {
  const _$UserRatingsResponseImpl(
      {@JsonKey(name: 'user_personal_ratings')
      required final List<UserPersonalRating> userPersonalRatings})
      : _userPersonalRatings = userPersonalRatings;

  factory _$UserRatingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingsResponseImplFromJson(json);

  final List<UserPersonalRating> _userPersonalRatings;
  @override
  @JsonKey(name: 'user_personal_ratings')
  List<UserPersonalRating> get userPersonalRatings {
    if (_userPersonalRatings is EqualUnmodifiableListView)
      return _userPersonalRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPersonalRatings);
  }

  @override
  String toString() {
    return 'UserRatingsResponse(userPersonalRatings: $userPersonalRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._userPersonalRatings, _userPersonalRatings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userPersonalRatings));

  /// Create a copy of UserRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingsResponseImplCopyWith<_$UserRatingsResponseImpl> get copyWith =>
      __$$UserRatingsResponseImplCopyWithImpl<_$UserRatingsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingsResponseImplToJson(
      this,
    );
  }
}

abstract class _UserRatingsResponse implements UserRatingsResponse {
  const factory _UserRatingsResponse(
          {@JsonKey(name: 'user_personal_ratings')
          required final List<UserPersonalRating> userPersonalRatings}) =
      _$UserRatingsResponseImpl;

  factory _UserRatingsResponse.fromJson(Map<String, dynamic> json) =
      _$UserRatingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_personal_ratings')
  List<UserPersonalRating> get userPersonalRatings;

  /// Create a copy of UserRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingsResponseImplCopyWith<_$UserRatingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GivenRating _$GivenRatingFromJson(Map<String, dynamic> json) {
  return _GivenRating.fromJson(json);
}

/// @nodoc
mixin _$GivenRating {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewer_id')
  int get reviewerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  List<dynamic> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'rated_user')
  RatedUser get ratedUser => throw _privateConstructorUsedError;

  /// Serializes this GivenRating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GivenRatingCopyWith<GivenRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GivenRatingCopyWith<$Res> {
  factory $GivenRatingCopyWith(
          GivenRating value, $Res Function(GivenRating) then) =
      _$GivenRatingCopyWithImpl<$Res, GivenRating>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reviewer_id') int reviewerId,
      @JsonKey(name: 'user_id') int userId,
      int score,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<dynamic> attributes,
      @JsonKey(name: 'rated_user') RatedUser ratedUser});

  $RatedUserCopyWith<$Res> get ratedUser;
}

/// @nodoc
class _$GivenRatingCopyWithImpl<$Res, $Val extends GivenRating>
    implements $GivenRatingCopyWith<$Res> {
  _$GivenRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewerId = null,
    Object? userId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? attributes = null,
    Object? ratedUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as RatedUser,
    ) as $Val);
  }

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatedUserCopyWith<$Res> get ratedUser {
    return $RatedUserCopyWith<$Res>(_value.ratedUser, (value) {
      return _then(_value.copyWith(ratedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GivenRatingImplCopyWith<$Res>
    implements $GivenRatingCopyWith<$Res> {
  factory _$$GivenRatingImplCopyWith(
          _$GivenRatingImpl value, $Res Function(_$GivenRatingImpl) then) =
      __$$GivenRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reviewer_id') int reviewerId,
      @JsonKey(name: 'user_id') int userId,
      int score,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<dynamic> attributes,
      @JsonKey(name: 'rated_user') RatedUser ratedUser});

  @override
  $RatedUserCopyWith<$Res> get ratedUser;
}

/// @nodoc
class __$$GivenRatingImplCopyWithImpl<$Res>
    extends _$GivenRatingCopyWithImpl<$Res, _$GivenRatingImpl>
    implements _$$GivenRatingImplCopyWith<$Res> {
  __$$GivenRatingImplCopyWithImpl(
      _$GivenRatingImpl _value, $Res Function(_$GivenRatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewerId = null,
    Object? userId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? attributes = null,
    Object? ratedUser = null,
  }) {
    return _then(_$GivenRatingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      ratedUser: null == ratedUser
          ? _value.ratedUser
          : ratedUser // ignore: cast_nullable_to_non_nullable
              as RatedUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GivenRatingImpl implements _GivenRating {
  const _$GivenRatingImpl(
      {required this.id,
      @JsonKey(name: 'reviewer_id') required this.reviewerId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.score,
      required this.comment,
      required this.image,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<dynamic> attributes,
      @JsonKey(name: 'rated_user') required this.ratedUser})
      : _attributes = attributes;

  factory _$GivenRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GivenRatingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'reviewer_id')
  final int reviewerId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final int score;
  @override
  final String? comment;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<dynamic> _attributes;
  @override
  List<dynamic> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  @JsonKey(name: 'rated_user')
  final RatedUser ratedUser;

  @override
  String toString() {
    return 'GivenRating(id: $id, reviewerId: $reviewerId, userId: $userId, score: $score, comment: $comment, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, attributes: $attributes, ratedUser: $ratedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GivenRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.ratedUser, ratedUser) ||
                other.ratedUser == ratedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      reviewerId,
      userId,
      score,
      comment,
      image,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_attributes),
      ratedUser);

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GivenRatingImplCopyWith<_$GivenRatingImpl> get copyWith =>
      __$$GivenRatingImplCopyWithImpl<_$GivenRatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GivenRatingImplToJson(
      this,
    );
  }
}

abstract class _GivenRating implements GivenRating {
  const factory _GivenRating(
          {required final int id,
          @JsonKey(name: 'reviewer_id') required final int reviewerId,
          @JsonKey(name: 'user_id') required final int userId,
          required final int score,
          required final String? comment,
          required final String? image,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          required final List<dynamic> attributes,
          @JsonKey(name: 'rated_user') required final RatedUser ratedUser}) =
      _$GivenRatingImpl;

  factory _GivenRating.fromJson(Map<String, dynamic> json) =
      _$GivenRatingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'reviewer_id')
  int get reviewerId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  int get score;
  @override
  String? get comment;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  List<dynamic> get attributes;
  @override
  @JsonKey(name: 'rated_user')
  RatedUser get ratedUser;

  /// Create a copy of GivenRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GivenRatingImplCopyWith<_$GivenRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatedUser _$RatedUserFromJson(Map<String, dynamic> json) {
  return _RatedUser.fromJson(json);
}

/// @nodoc
mixin _$RatedUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RatedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatedUserCopyWith<RatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatedUserCopyWith<$Res> {
  factory $RatedUserCopyWith(RatedUser value, $Res Function(RatedUser) then) =
      _$RatedUserCopyWithImpl<$Res, RatedUser>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RatedUserCopyWithImpl<$Res, $Val extends RatedUser>
    implements $RatedUserCopyWith<$Res> {
  _$RatedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatedUserImplCopyWith<$Res>
    implements $RatedUserCopyWith<$Res> {
  factory _$$RatedUserImplCopyWith(
          _$RatedUserImpl value, $Res Function(_$RatedUserImpl) then) =
      __$$RatedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$RatedUserImplCopyWithImpl<$Res>
    extends _$RatedUserCopyWithImpl<$Res, _$RatedUserImpl>
    implements _$$RatedUserImplCopyWith<$Res> {
  __$$RatedUserImplCopyWithImpl(
      _$RatedUserImpl _value, $Res Function(_$RatedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$RatedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatedUserImpl implements _RatedUser {
  const _$RatedUserImpl({required this.id, required this.name});

  factory _$RatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatedUserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RatedUser(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatedUserImplCopyWith<_$RatedUserImpl> get copyWith =>
      __$$RatedUserImplCopyWithImpl<_$RatedUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatedUserImplToJson(
      this,
    );
  }
}

abstract class _RatedUser implements RatedUser {
  const factory _RatedUser(
      {required final int id, required final String name}) = _$RatedUserImpl;

  factory _RatedUser.fromJson(Map<String, dynamic> json) =
      _$RatedUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatedUserImplCopyWith<_$RatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPersonalRating _$UserPersonalRatingFromJson(Map<String, dynamic> json) {
  return _UserPersonalRating.fromJson(json);
}

/// @nodoc
mixin _$UserPersonalRating {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewer_id')
  int get reviewerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  RatingUser? get reviewer => throw _privateConstructorUsedError;
  String? get reply => throw _privateConstructorUsedError;
  @JsonKey(name: 'replied_at')
  String? get repliedAt => throw _privateConstructorUsedError;

  /// Serializes this UserPersonalRating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPersonalRatingCopyWith<UserPersonalRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPersonalRatingCopyWith<$Res> {
  factory $UserPersonalRatingCopyWith(
          UserPersonalRating value, $Res Function(UserPersonalRating) then) =
      _$UserPersonalRatingCopyWithImpl<$Res, UserPersonalRating>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reviewer_id') int reviewerId,
      @JsonKey(name: 'user_id') int userId,
      int score,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      RatingUser? reviewer,
      String? reply,
      @JsonKey(name: 'replied_at') String? repliedAt});

  $RatingUserCopyWith<$Res>? get reviewer;
}

/// @nodoc
class _$UserPersonalRatingCopyWithImpl<$Res, $Val extends UserPersonalRating>
    implements $UserPersonalRatingCopyWith<$Res> {
  _$UserPersonalRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewerId = null,
    Object? userId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? reviewer = freezed,
    Object? reply = freezed,
    Object? repliedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedAt: freezed == repliedAt
          ? _value.repliedAt
          : repliedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingUserCopyWith<$Res>? get reviewer {
    if (_value.reviewer == null) {
      return null;
    }

    return $RatingUserCopyWith<$Res>(_value.reviewer!, (value) {
      return _then(_value.copyWith(reviewer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPersonalRatingImplCopyWith<$Res>
    implements $UserPersonalRatingCopyWith<$Res> {
  factory _$$UserPersonalRatingImplCopyWith(_$UserPersonalRatingImpl value,
          $Res Function(_$UserPersonalRatingImpl) then) =
      __$$UserPersonalRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'reviewer_id') int reviewerId,
      @JsonKey(name: 'user_id') int userId,
      int score,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      RatingUser? reviewer,
      String? reply,
      @JsonKey(name: 'replied_at') String? repliedAt});

  @override
  $RatingUserCopyWith<$Res>? get reviewer;
}

/// @nodoc
class __$$UserPersonalRatingImplCopyWithImpl<$Res>
    extends _$UserPersonalRatingCopyWithImpl<$Res, _$UserPersonalRatingImpl>
    implements _$$UserPersonalRatingImplCopyWith<$Res> {
  __$$UserPersonalRatingImplCopyWithImpl(_$UserPersonalRatingImpl _value,
      $Res Function(_$UserPersonalRatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reviewerId = null,
    Object? userId = null,
    Object? score = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? reviewer = freezed,
    Object? reply = freezed,
    Object? repliedAt = freezed,
  }) {
    return _then(_$UserPersonalRatingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedAt: freezed == repliedAt
          ? _value.repliedAt
          : repliedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPersonalRatingImpl implements _UserPersonalRating {
  const _$UserPersonalRatingImpl(
      {required this.id,
      @JsonKey(name: 'reviewer_id') required this.reviewerId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.score,
      required this.comment,
      required this.image,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.reviewer,
      this.reply,
      @JsonKey(name: 'replied_at') this.repliedAt});

  factory _$UserPersonalRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPersonalRatingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'reviewer_id')
  final int reviewerId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final int score;
  @override
  final String? comment;
  @override
  final String? image;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final RatingUser? reviewer;
  @override
  final String? reply;
  @override
  @JsonKey(name: 'replied_at')
  final String? repliedAt;

  @override
  String toString() {
    return 'UserPersonalRating(id: $id, reviewerId: $reviewerId, userId: $userId, score: $score, comment: $comment, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, reviewer: $reviewer, reply: $reply, repliedAt: $repliedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPersonalRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.repliedAt, repliedAt) ||
                other.repliedAt == repliedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, reviewerId, userId, score,
      comment, image, createdAt, updatedAt, reviewer, reply, repliedAt);

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPersonalRatingImplCopyWith<_$UserPersonalRatingImpl> get copyWith =>
      __$$UserPersonalRatingImplCopyWithImpl<_$UserPersonalRatingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPersonalRatingImplToJson(
      this,
    );
  }
}

abstract class _UserPersonalRating implements UserPersonalRating {
  const factory _UserPersonalRating(
          {required final int id,
          @JsonKey(name: 'reviewer_id') required final int reviewerId,
          @JsonKey(name: 'user_id') required final int userId,
          required final int score,
          required final String? comment,
          required final String? image,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          required final RatingUser? reviewer,
          final String? reply,
          @JsonKey(name: 'replied_at') final String? repliedAt}) =
      _$UserPersonalRatingImpl;

  factory _UserPersonalRating.fromJson(Map<String, dynamic> json) =
      _$UserPersonalRatingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'reviewer_id')
  int get reviewerId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  int get score;
  @override
  String? get comment;
  @override
  String? get image;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  RatingUser? get reviewer;
  @override
  String? get reply;
  @override
  @JsonKey(name: 'replied_at')
  String? get repliedAt;

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPersonalRatingImplCopyWith<_$UserPersonalRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingUser _$RatingUserFromJson(Map<String, dynamic> json) {
  return _RatingUser.fromJson(json);
}

/// @nodoc
mixin _$RatingUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this RatingUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingUserCopyWith<RatingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingUserCopyWith<$Res> {
  factory $RatingUserCopyWith(
          RatingUser value, $Res Function(RatingUser) then) =
      _$RatingUserCopyWithImpl<$Res, RatingUser>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$RatingUserCopyWithImpl<$Res, $Val extends RatingUser>
    implements $RatingUserCopyWith<$Res> {
  _$RatingUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingUserImplCopyWith<$Res>
    implements $RatingUserCopyWith<$Res> {
  factory _$$RatingUserImplCopyWith(
          _$RatingUserImpl value, $Res Function(_$RatingUserImpl) then) =
      __$$RatingUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$RatingUserImplCopyWithImpl<$Res>
    extends _$RatingUserCopyWithImpl<$Res, _$RatingUserImpl>
    implements _$$RatingUserImplCopyWith<$Res> {
  __$$RatingUserImplCopyWithImpl(
      _$RatingUserImpl _value, $Res Function(_$RatingUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$RatingUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingUserImpl implements _RatingUser {
  const _$RatingUserImpl(
      {required this.id, required this.name, required this.image});

  factory _$RatingUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingUserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'RatingUser(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingUserImplCopyWith<_$RatingUserImpl> get copyWith =>
      __$$RatingUserImplCopyWithImpl<_$RatingUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingUserImplToJson(
      this,
    );
  }
}

abstract class _RatingUser implements RatingUser {
  const factory _RatingUser(
      {required final int id,
      required final String name,
      required final String? image}) = _$RatingUserImpl;

  factory _RatingUser.fromJson(Map<String, dynamic> json) =
      _$RatingUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingUserImplCopyWith<_$RatingUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyRatingsResponse _$MyRatingsResponseFromJson(Map<String, dynamic> json) {
  return _MyRatingsResponse.fromJson(json);
}

/// @nodoc
mixin _$MyRatingsResponse {
  @JsonKey(name: 'given_ratings')
  List<GivenRating> get givenRatings => throw _privateConstructorUsedError;

  /// Serializes this MyRatingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyRatingsResponseCopyWith<MyRatingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRatingsResponseCopyWith<$Res> {
  factory $MyRatingsResponseCopyWith(
          MyRatingsResponse value, $Res Function(MyRatingsResponse) then) =
      _$MyRatingsResponseCopyWithImpl<$Res, MyRatingsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'given_ratings') List<GivenRating> givenRatings});
}

/// @nodoc
class _$MyRatingsResponseCopyWithImpl<$Res, $Val extends MyRatingsResponse>
    implements $MyRatingsResponseCopyWith<$Res> {
  _$MyRatingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenRatings = null,
  }) {
    return _then(_value.copyWith(
      givenRatings: null == givenRatings
          ? _value.givenRatings
          : givenRatings // ignore: cast_nullable_to_non_nullable
              as List<GivenRating>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyRatingsResponseImplCopyWith<$Res>
    implements $MyRatingsResponseCopyWith<$Res> {
  factory _$$MyRatingsResponseImplCopyWith(_$MyRatingsResponseImpl value,
          $Res Function(_$MyRatingsResponseImpl) then) =
      __$$MyRatingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'given_ratings') List<GivenRating> givenRatings});
}

/// @nodoc
class __$$MyRatingsResponseImplCopyWithImpl<$Res>
    extends _$MyRatingsResponseCopyWithImpl<$Res, _$MyRatingsResponseImpl>
    implements _$$MyRatingsResponseImplCopyWith<$Res> {
  __$$MyRatingsResponseImplCopyWithImpl(_$MyRatingsResponseImpl _value,
      $Res Function(_$MyRatingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenRatings = null,
  }) {
    return _then(_$MyRatingsResponseImpl(
      givenRatings: null == givenRatings
          ? _value._givenRatings
          : givenRatings // ignore: cast_nullable_to_non_nullable
              as List<GivenRating>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRatingsResponseImpl implements _MyRatingsResponse {
  const _$MyRatingsResponseImpl(
      {@JsonKey(name: 'given_ratings')
      required final List<GivenRating> givenRatings})
      : _givenRatings = givenRatings;

  factory _$MyRatingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyRatingsResponseImplFromJson(json);

  final List<GivenRating> _givenRatings;
  @override
  @JsonKey(name: 'given_ratings')
  List<GivenRating> get givenRatings {
    if (_givenRatings is EqualUnmodifiableListView) return _givenRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_givenRatings);
  }

  @override
  String toString() {
    return 'MyRatingsResponse(givenRatings: $givenRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRatingsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._givenRatings, _givenRatings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_givenRatings));

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRatingsResponseImplCopyWith<_$MyRatingsResponseImpl> get copyWith =>
      __$$MyRatingsResponseImplCopyWithImpl<_$MyRatingsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyRatingsResponseImplToJson(
      this,
    );
  }
}

abstract class _MyRatingsResponse implements MyRatingsResponse {
  const factory _MyRatingsResponse(
      {@JsonKey(name: 'given_ratings')
      required final List<GivenRating> givenRatings}) = _$MyRatingsResponseImpl;

  factory _MyRatingsResponse.fromJson(Map<String, dynamic> json) =
      _$MyRatingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'given_ratings')
  List<GivenRating> get givenRatings;

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyRatingsResponseImplCopyWith<_$MyRatingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
