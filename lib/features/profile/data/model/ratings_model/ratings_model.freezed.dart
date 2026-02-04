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
  @JsonKey(name: 'product_ratings')
  List<ProductRating> get productRatings => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_product_ratings')
  List<dynamic> get orderProductRatings => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'product_ratings') List<ProductRating> productRatings,
      @JsonKey(name: 'order_product_ratings') List<dynamic> orderProductRatings,
      @JsonKey(name: 'user_personal_ratings')
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
    Object? productRatings = null,
    Object? orderProductRatings = null,
    Object? userPersonalRatings = null,
  }) {
    return _then(_value.copyWith(
      productRatings: null == productRatings
          ? _value.productRatings
          : productRatings // ignore: cast_nullable_to_non_nullable
              as List<ProductRating>,
      orderProductRatings: null == orderProductRatings
          ? _value.orderProductRatings
          : orderProductRatings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      {@JsonKey(name: 'product_ratings') List<ProductRating> productRatings,
      @JsonKey(name: 'order_product_ratings') List<dynamic> orderProductRatings,
      @JsonKey(name: 'user_personal_ratings')
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
    Object? productRatings = null,
    Object? orderProductRatings = null,
    Object? userPersonalRatings = null,
  }) {
    return _then(_$UserRatingsResponseImpl(
      productRatings: null == productRatings
          ? _value._productRatings
          : productRatings // ignore: cast_nullable_to_non_nullable
              as List<ProductRating>,
      orderProductRatings: null == orderProductRatings
          ? _value._orderProductRatings
          : orderProductRatings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      {@JsonKey(name: 'product_ratings')
      required final List<ProductRating> productRatings,
      @JsonKey(name: 'order_product_ratings')
      required final List<dynamic> orderProductRatings,
      @JsonKey(name: 'user_personal_ratings')
      required final List<UserPersonalRating> userPersonalRatings})
      : _productRatings = productRatings,
        _orderProductRatings = orderProductRatings,
        _userPersonalRatings = userPersonalRatings;

  factory _$UserRatingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingsResponseImplFromJson(json);

  final List<ProductRating> _productRatings;
  @override
  @JsonKey(name: 'product_ratings')
  List<ProductRating> get productRatings {
    if (_productRatings is EqualUnmodifiableListView) return _productRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productRatings);
  }

  final List<dynamic> _orderProductRatings;
  @override
  @JsonKey(name: 'order_product_ratings')
  List<dynamic> get orderProductRatings {
    if (_orderProductRatings is EqualUnmodifiableListView)
      return _orderProductRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderProductRatings);
  }

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
    return 'UserRatingsResponse(productRatings: $productRatings, orderProductRatings: $orderProductRatings, userPersonalRatings: $userPersonalRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._productRatings, _productRatings) &&
            const DeepCollectionEquality()
                .equals(other._orderProductRatings, _orderProductRatings) &&
            const DeepCollectionEquality()
                .equals(other._userPersonalRatings, _userPersonalRatings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productRatings),
      const DeepCollectionEquality().hash(_orderProductRatings),
      const DeepCollectionEquality().hash(_userPersonalRatings));

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
          {@JsonKey(name: 'product_ratings')
          required final List<ProductRating> productRatings,
          @JsonKey(name: 'order_product_ratings')
          required final List<dynamic> orderProductRatings,
          @JsonKey(name: 'user_personal_ratings')
          required final List<UserPersonalRating> userPersonalRatings}) =
      _$UserRatingsResponseImpl;

  factory _UserRatingsResponse.fromJson(Map<String, dynamic> json) =
      _$UserRatingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_ratings')
  List<ProductRating> get productRatings;
  @override
  @JsonKey(name: 'order_product_ratings')
  List<dynamic> get orderProductRatings;
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

ProductRating _$ProductRatingFromJson(Map<String, dynamic> json) {
  return _ProductRating.fromJson(json);
}

/// @nodoc
mixin _$ProductRating {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  List<dynamic> get attributes => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  RatingUser? get user => throw _privateConstructorUsedError;
  RatingProduct? get product => throw _privateConstructorUsedError;

  /// Serializes this ProductRating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRatingCopyWith<ProductRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingCopyWith<$Res> {
  factory $ProductRatingCopyWith(
          ProductRating value, $Res Function(ProductRating) then) =
      _$ProductRatingCopyWithImpl<$Res, ProductRating>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'product_id') int productId,
      int score,
      List<dynamic> attributes,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      RatingUser? user,
      RatingProduct? product});

  $RatingUserCopyWith<$Res>? get user;
  $RatingProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductRatingCopyWithImpl<$Res, $Val extends ProductRating>
    implements $ProductRatingCopyWith<$Res> {
  _$ProductRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? score = null,
    Object? attributes = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as RatingProduct?,
    ) as $Val);
  }

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $RatingUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $RatingProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductRatingImplCopyWith<$Res>
    implements $ProductRatingCopyWith<$Res> {
  factory _$$ProductRatingImplCopyWith(
          _$ProductRatingImpl value, $Res Function(_$ProductRatingImpl) then) =
      __$$ProductRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'product_id') int productId,
      int score,
      List<dynamic> attributes,
      String? comment,
      String? image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      RatingUser? user,
      RatingProduct? product});

  @override
  $RatingUserCopyWith<$Res>? get user;
  @override
  $RatingProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductRatingImplCopyWithImpl<$Res>
    extends _$ProductRatingCopyWithImpl<$Res, _$ProductRatingImpl>
    implements _$$ProductRatingImplCopyWith<$Res> {
  __$$ProductRatingImplCopyWithImpl(
      _$ProductRatingImpl _value, $Res Function(_$ProductRatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? score = null,
    Object? attributes = null,
    Object? comment = freezed,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = freezed,
    Object? product = freezed,
  }) {
    return _then(_$ProductRatingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as RatingProduct?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRatingImpl implements _ProductRating {
  const _$ProductRatingImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'product_id') required this.productId,
      required this.score,
      required final List<dynamic> attributes,
      required this.comment,
      required this.image,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.user,
      required this.product})
      : _attributes = attributes;

  factory _$ProductRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRatingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  final int score;
  final List<dynamic> _attributes;
  @override
  List<dynamic> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

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
  final RatingUser? user;
  @override
  final RatingProduct? product;

  @override
  String toString() {
    return 'ProductRating(id: $id, userId: $userId, productId: $productId, score: $score, attributes: $attributes, comment: $comment, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRatingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      productId,
      score,
      const DeepCollectionEquality().hash(_attributes),
      comment,
      image,
      createdAt,
      updatedAt,
      user,
      product);

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRatingImplCopyWith<_$ProductRatingImpl> get copyWith =>
      __$$ProductRatingImplCopyWithImpl<_$ProductRatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRatingImplToJson(
      this,
    );
  }
}

abstract class _ProductRating implements ProductRating {
  const factory _ProductRating(
      {required final int id,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'product_id') required final int productId,
      required final int score,
      required final List<dynamic> attributes,
      required final String? comment,
      required final String? image,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final RatingUser? user,
      required final RatingProduct? product}) = _$ProductRatingImpl;

  factory _ProductRating.fromJson(Map<String, dynamic> json) =
      _$ProductRatingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  int get score;
  @override
  List<dynamic> get attributes;
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
  RatingUser? get user;
  @override
  RatingProduct? get product;

  /// Create a copy of ProductRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRatingImplCopyWith<_$ProductRatingImpl> get copyWith =>
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
  @JsonKey(name: 'personal_rating')
  double? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

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
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(name: 'personal_rating') double? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
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
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
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
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(name: 'personal_rating') double? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
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
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
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
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingUserImpl implements _RatingUser {
  const _$RatingUserImpl(
      {required this.id,
      required this.name,
      required this.image,
      @JsonKey(name: 'personal_rating') required this.personalRating,
      @JsonKey(name: 'personal_rating_count') required this.personalRatingCount,
      @JsonKey(name: 'is_favorited') required this.isFavorited,
      @JsonKey(name: 'favorites_count') required this.favoritesCount});

  factory _$RatingUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingUserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'personal_rating')
  final double? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'RatingUser(id: $id, name: $name, image: $image, personalRating: $personalRating, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, personalRating,
      personalRatingCount, isFavorited, favoritesCount);

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
      required final String? image,
      @JsonKey(name: 'personal_rating') required final double? personalRating,
      @JsonKey(name: 'personal_rating_count')
      required final int? personalRatingCount,
      @JsonKey(name: 'is_favorited') required final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      required final int? favoritesCount}) = _$RatingUserImpl;

  factory _RatingUser.fromJson(Map<String, dynamic> json) =
      _$RatingUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'personal_rating')
  double? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of RatingUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingUserImplCopyWith<_$RatingUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingProduct _$RatingProductFromJson(Map<String, dynamic> json) {
  return _RatingProduct.fromJson(json);
}

/// @nodoc
mixin _$RatingProduct {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;

  /// Serializes this RatingProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingProductCopyWith<RatingProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingProductCopyWith<$Res> {
  factory $RatingProductCopyWith(
          RatingProduct value, $Res Function(RatingProduct) then) =
      _$RatingProductCopyWithImpl<$Res, RatingProduct>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'user_id') int userId,
      List<dynamic> images});
}

/// @nodoc
class _$RatingProductCopyWithImpl<$Res, $Val extends RatingProduct>
    implements $RatingProductCopyWith<$Res> {
  _$RatingProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? images = null,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingProductImplCopyWith<$Res>
    implements $RatingProductCopyWith<$Res> {
  factory _$$RatingProductImplCopyWith(
          _$RatingProductImpl value, $Res Function(_$RatingProductImpl) then) =
      __$$RatingProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'user_id') int userId,
      List<dynamic> images});
}

/// @nodoc
class __$$RatingProductImplCopyWithImpl<$Res>
    extends _$RatingProductCopyWithImpl<$Res, _$RatingProductImpl>
    implements _$$RatingProductImplCopyWith<$Res> {
  __$$RatingProductImplCopyWithImpl(
      _$RatingProductImpl _value, $Res Function(_$RatingProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userId = null,
    Object? images = null,
  }) {
    return _then(_$RatingProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingProductImpl implements _RatingProduct {
  const _$RatingProductImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'user_id') required this.userId,
      required final List<dynamic> images})
      : _images = images;

  factory _$RatingProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  final List<dynamic> _images;
  @override
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'RatingProduct(id: $id, name: $name, userId: $userId, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userId,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of RatingProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingProductImplCopyWith<_$RatingProductImpl> get copyWith =>
      __$$RatingProductImplCopyWithImpl<_$RatingProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingProductImplToJson(
      this,
    );
  }
}

abstract class _RatingProduct implements RatingProduct {
  const factory _RatingProduct(
      {required final int id,
      required final String name,
      @JsonKey(name: 'user_id') required final int userId,
      required final List<dynamic> images}) = _$RatingProductImpl;

  factory _RatingProduct.fromJson(Map<String, dynamic> json) =
      _$RatingProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  List<dynamic> get images;

  /// Create a copy of RatingProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingProductImplCopyWith<_$RatingProductImpl> get copyWith =>
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
  List<dynamic> get attributes => throw _privateConstructorUsedError;
  RatingUser? get reviewer => throw _privateConstructorUsedError;

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
      List<dynamic> attributes,
      RatingUser? reviewer});

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
    Object? attributes = null,
    Object? reviewer = freezed,
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
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
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
      List<dynamic> attributes,
      RatingUser? reviewer});

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
    Object? attributes = null,
    Object? reviewer = freezed,
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
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as RatingUser?,
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
      required final List<dynamic> attributes,
      required this.reviewer})
      : _attributes = attributes;

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
  final List<dynamic> _attributes;
  @override
  List<dynamic> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  final RatingUser? reviewer;

  @override
  String toString() {
    return 'UserPersonalRating(id: $id, reviewerId: $reviewerId, userId: $userId, score: $score, comment: $comment, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, attributes: $attributes, reviewer: $reviewer)';
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
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer));
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
      reviewer);

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
      required final List<dynamic> attributes,
      required final RatingUser? reviewer}) = _$UserPersonalRatingImpl;

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
  List<dynamic> get attributes;
  @override
  RatingUser? get reviewer;

  /// Create a copy of UserPersonalRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPersonalRatingImplCopyWith<_$UserPersonalRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyRatingsResponse _$MyRatingsResponseFromJson(Map<String, dynamic> json) {
  return _MyRatingsResponse.fromJson(json);
}

/// @nodoc
mixin _$MyRatingsResponse {
  @JsonKey(name: 'given_ratings')
  List<GivenRating> get givenRatings => throw _privateConstructorUsedError;
  ReceivedRatings get received => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'given_ratings') List<GivenRating> givenRatings,
      ReceivedRatings received});

  $ReceivedRatingsCopyWith<$Res> get received;
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
    Object? received = null,
  }) {
    return _then(_value.copyWith(
      givenRatings: null == givenRatings
          ? _value.givenRatings
          : givenRatings // ignore: cast_nullable_to_non_nullable
              as List<GivenRating>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as ReceivedRatings,
    ) as $Val);
  }

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceivedRatingsCopyWith<$Res> get received {
    return $ReceivedRatingsCopyWith<$Res>(_value.received, (value) {
      return _then(_value.copyWith(received: value) as $Val);
    });
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
  $Res call(
      {@JsonKey(name: 'given_ratings') List<GivenRating> givenRatings,
      ReceivedRatings received});

  @override
  $ReceivedRatingsCopyWith<$Res> get received;
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
    Object? received = null,
  }) {
    return _then(_$MyRatingsResponseImpl(
      givenRatings: null == givenRatings
          ? _value._givenRatings
          : givenRatings // ignore: cast_nullable_to_non_nullable
              as List<GivenRating>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as ReceivedRatings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRatingsResponseImpl implements _MyRatingsResponse {
  const _$MyRatingsResponseImpl(
      {@JsonKey(name: 'given_ratings')
      required final List<GivenRating> givenRatings,
      required this.received})
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
  final ReceivedRatings received;

  @override
  String toString() {
    return 'MyRatingsResponse(givenRatings: $givenRatings, received: $received)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRatingsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._givenRatings, _givenRatings) &&
            (identical(other.received, received) ||
                other.received == received));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_givenRatings), received);

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
      required final List<GivenRating> givenRatings,
      required final ReceivedRatings received}) = _$MyRatingsResponseImpl;

  factory _MyRatingsResponse.fromJson(Map<String, dynamic> json) =
      _$MyRatingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'given_ratings')
  List<GivenRating> get givenRatings;
  @override
  ReceivedRatings get received;

  /// Create a copy of MyRatingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyRatingsResponseImplCopyWith<_$MyRatingsResponseImpl> get copyWith =>
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
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_confirmation')
  int get ageConfirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_agreement')
  int get termsAgreement => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  double? get personalRating => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  String? get providerId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_business')
  String? get imageBusiness => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String get sms => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_email')
  String get sendEmail => throw _privateConstructorUsedError;
  String get push => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'invite_code')
  String get inviteCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referred_by')
  int? get referredBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_awarded_at')
  String? get referralAwardedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

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
  $Res call(
      {int id,
      @JsonKey(name: 'business_id') int? businessId,
      String email,
      String name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') int ageConfirmation,
      @JsonKey(name: 'terms_agreement') int termsAgreement,
      @JsonKey(name: 'personal_rating') double? personalRating,
      String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      String role,
      String phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      String? visibility,
      String sms,
      @JsonKey(name: 'send_email') String sendEmail,
      String push,
      String? status,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'invite_code') String inviteCode,
      @JsonKey(name: 'referred_by') int? referredBy,
      @JsonKey(name: 'referral_awarded_at') String? referralAwardedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
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
    Object? businessId = freezed,
    Object? email = null,
    Object? name = null,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = null,
    Object? termsAgreement = null,
    Object? personalRating = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? role = null,
    Object? phone = null,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = null,
    Object? sendEmail = null,
    Object? push = null,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? inviteCode = null,
    Object? referredBy = freezed,
    Object? referralAwardedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      ageConfirmation: null == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int,
      termsAgreement: null == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      referralAwardedAt: freezed == referralAwardedAt
          ? _value.referralAwardedAt
          : referralAwardedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {int id,
      @JsonKey(name: 'business_id') int? businessId,
      String email,
      String name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') int ageConfirmation,
      @JsonKey(name: 'terms_agreement') int termsAgreement,
      @JsonKey(name: 'personal_rating') double? personalRating,
      String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      String role,
      String phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      String? visibility,
      String sms,
      @JsonKey(name: 'send_email') String sendEmail,
      String push,
      String? status,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'invite_code') String inviteCode,
      @JsonKey(name: 'referred_by') int? referredBy,
      @JsonKey(name: 'referral_awarded_at') String? referralAwardedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
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
    Object? businessId = freezed,
    Object? email = null,
    Object? name = null,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = null,
    Object? termsAgreement = null,
    Object? personalRating = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? role = null,
    Object? phone = null,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = null,
    Object? sendEmail = null,
    Object? push = null,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? inviteCode = null,
    Object? referredBy = freezed,
    Object? referralAwardedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$RatedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      ageConfirmation: null == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int,
      termsAgreement: null == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as double?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      providerId: freezed == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      referralAwardedAt: freezed == referralAwardedAt
          ? _value.referralAwardedAt
          : referralAwardedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatedUserImpl implements _RatedUser {
  const _$RatedUserImpl(
      {required this.id,
      @JsonKey(name: 'business_id') required this.businessId,
      required this.email,
      required this.name,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.gender,
      required this.country,
      @JsonKey(name: 'age_confirmation') required this.ageConfirmation,
      @JsonKey(name: 'terms_agreement') required this.termsAgreement,
      @JsonKey(name: 'personal_rating') required this.personalRating,
      required this.provider,
      @JsonKey(name: 'provider_id') required this.providerId,
      required this.role,
      required this.phone,
      required this.image,
      @JsonKey(name: 'image_business') required this.imageBusiness,
      required this.description,
      required this.lang,
      required this.visibility,
      required this.sms,
      @JsonKey(name: 'send_email') required this.sendEmail,
      required this.push,
      required this.status,
      @JsonKey(name: 'email_verified_at') required this.emailVerifiedAt,
      @JsonKey(name: 'invite_code') required this.inviteCode,
      @JsonKey(name: 'referred_by') required this.referredBy,
      @JsonKey(name: 'referral_awarded_at') required this.referralAwardedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'personal_rating_count') required this.personalRatingCount,
      @JsonKey(name: 'is_favorited') required this.isFavorited,
      @JsonKey(name: 'favorites_count') required this.favoritesCount});

  factory _$RatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatedUserImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  final String email;
  @override
  final String name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  @JsonKey(name: 'age_confirmation')
  final int ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  final int termsAgreement;
  @override
  @JsonKey(name: 'personal_rating')
  final double? personalRating;
  @override
  final String? provider;
  @override
  @JsonKey(name: 'provider_id')
  final String? providerId;
  @override
  final String role;
  @override
  final String phone;
  @override
  final String? image;
  @override
  @JsonKey(name: 'image_business')
  final String? imageBusiness;
  @override
  final String? description;
  @override
  final String? lang;
  @override
  final String? visibility;
  @override
  final String sms;
  @override
  @JsonKey(name: 'send_email')
  final String sendEmail;
  @override
  final String push;
  @override
  final String? status;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'invite_code')
  final String inviteCode;
  @override
  @JsonKey(name: 'referred_by')
  final int? referredBy;
  @override
  @JsonKey(name: 'referral_awarded_at')
  final String? referralAwardedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'RatedUser(id: $id, businessId: $businessId, email: $email, name: $name, lastName: $lastName, gender: $gender, country: $country, ageConfirmation: $ageConfirmation, termsAgreement: $termsAgreement, personalRating: $personalRating, provider: $provider, providerId: $providerId, role: $role, phone: $phone, image: $image, imageBusiness: $imageBusiness, description: $description, lang: $lang, visibility: $visibility, sms: $sms, sendEmail: $sendEmail, push: $push, status: $status, emailVerifiedAt: $emailVerifiedAt, inviteCode: $inviteCode, referredBy: $referredBy, referralAwardedAt: $referralAwardedAt, createdAt: $createdAt, updatedAt: $updatedAt, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.ageConfirmation, ageConfirmation) ||
                other.ageConfirmation == ageConfirmation) &&
            (identical(other.termsAgreement, termsAgreement) ||
                other.termsAgreement == termsAgreement) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageBusiness, imageBusiness) ||
                other.imageBusiness == imageBusiness) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            (identical(other.referralAwardedAt, referralAwardedAt) ||
                other.referralAwardedAt == referralAwardedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        businessId,
        email,
        name,
        lastName,
        gender,
        country,
        ageConfirmation,
        termsAgreement,
        personalRating,
        provider,
        providerId,
        role,
        phone,
        image,
        imageBusiness,
        description,
        lang,
        visibility,
        sms,
        sendEmail,
        push,
        status,
        emailVerifiedAt,
        inviteCode,
        referredBy,
        referralAwardedAt,
        createdAt,
        updatedAt,
        personalRatingCount,
        isFavorited,
        favoritesCount
      ]);

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
      {required final int id,
      @JsonKey(name: 'business_id') required final int? businessId,
      required final String email,
      required final String name,
      @JsonKey(name: 'last_name') required final String? lastName,
      required final String? gender,
      required final String? country,
      @JsonKey(name: 'age_confirmation') required final int ageConfirmation,
      @JsonKey(name: 'terms_agreement') required final int termsAgreement,
      @JsonKey(name: 'personal_rating') required final double? personalRating,
      required final String? provider,
      @JsonKey(name: 'provider_id') required final String? providerId,
      required final String role,
      required final String phone,
      required final String? image,
      @JsonKey(name: 'image_business') required final String? imageBusiness,
      required final String? description,
      required final String? lang,
      required final String? visibility,
      required final String sms,
      @JsonKey(name: 'send_email') required final String sendEmail,
      required final String push,
      required final String? status,
      @JsonKey(name: 'email_verified_at')
      required final String? emailVerifiedAt,
      @JsonKey(name: 'invite_code') required final String inviteCode,
      @JsonKey(name: 'referred_by') required final int? referredBy,
      @JsonKey(name: 'referral_awarded_at')
      required final String? referralAwardedAt,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      @JsonKey(name: 'personal_rating_count')
      required final int? personalRatingCount,
      @JsonKey(name: 'is_favorited') required final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      required final int? favoritesCount}) = _$RatedUserImpl;

  factory _RatedUser.fromJson(Map<String, dynamic> json) =
      _$RatedUserImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'business_id')
  int? get businessId;
  @override
  String get email;
  @override
  String get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  @JsonKey(name: 'age_confirmation')
  int get ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  int get termsAgreement;
  @override
  @JsonKey(name: 'personal_rating')
  double? get personalRating;
  @override
  String? get provider;
  @override
  @JsonKey(name: 'provider_id')
  String? get providerId;
  @override
  String get role;
  @override
  String get phone;
  @override
  String? get image;
  @override
  @JsonKey(name: 'image_business')
  String? get imageBusiness;
  @override
  String? get description;
  @override
  String? get lang;
  @override
  String? get visibility;
  @override
  String get sms;
  @override
  @JsonKey(name: 'send_email')
  String get sendEmail;
  @override
  String get push;
  @override
  String? get status;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'invite_code')
  String get inviteCode;
  @override
  @JsonKey(name: 'referred_by')
  int? get referredBy;
  @override
  @JsonKey(name: 'referral_awarded_at')
  String? get referralAwardedAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of RatedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatedUserImplCopyWith<_$RatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceivedRatings _$ReceivedRatingsFromJson(Map<String, dynamic> json) {
  return _ReceivedRatings.fromJson(json);
}

/// @nodoc
mixin _$ReceivedRatings {
  List<UserPersonalRating> get personal => throw _privateConstructorUsedError;

  /// Serializes this ReceivedRatings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceivedRatings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceivedRatingsCopyWith<ReceivedRatings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedRatingsCopyWith<$Res> {
  factory $ReceivedRatingsCopyWith(
          ReceivedRatings value, $Res Function(ReceivedRatings) then) =
      _$ReceivedRatingsCopyWithImpl<$Res, ReceivedRatings>;
  @useResult
  $Res call({List<UserPersonalRating> personal});
}

/// @nodoc
class _$ReceivedRatingsCopyWithImpl<$Res, $Val extends ReceivedRatings>
    implements $ReceivedRatingsCopyWith<$Res> {
  _$ReceivedRatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceivedRatings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personal = null,
  }) {
    return _then(_value.copyWith(
      personal: null == personal
          ? _value.personal
          : personal // ignore: cast_nullable_to_non_nullable
              as List<UserPersonalRating>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceivedRatingsImplCopyWith<$Res>
    implements $ReceivedRatingsCopyWith<$Res> {
  factory _$$ReceivedRatingsImplCopyWith(_$ReceivedRatingsImpl value,
          $Res Function(_$ReceivedRatingsImpl) then) =
      __$$ReceivedRatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserPersonalRating> personal});
}

/// @nodoc
class __$$ReceivedRatingsImplCopyWithImpl<$Res>
    extends _$ReceivedRatingsCopyWithImpl<$Res, _$ReceivedRatingsImpl>
    implements _$$ReceivedRatingsImplCopyWith<$Res> {
  __$$ReceivedRatingsImplCopyWithImpl(
      _$ReceivedRatingsImpl _value, $Res Function(_$ReceivedRatingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceivedRatings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personal = null,
  }) {
    return _then(_$ReceivedRatingsImpl(
      personal: null == personal
          ? _value._personal
          : personal // ignore: cast_nullable_to_non_nullable
              as List<UserPersonalRating>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceivedRatingsImpl implements _ReceivedRatings {
  const _$ReceivedRatingsImpl(
      {required final List<UserPersonalRating> personal})
      : _personal = personal;

  factory _$ReceivedRatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceivedRatingsImplFromJson(json);

  final List<UserPersonalRating> _personal;
  @override
  List<UserPersonalRating> get personal {
    if (_personal is EqualUnmodifiableListView) return _personal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personal);
  }

  @override
  String toString() {
    return 'ReceivedRatings(personal: $personal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceivedRatingsImpl &&
            const DeepCollectionEquality().equals(other._personal, _personal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_personal));

  /// Create a copy of ReceivedRatings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceivedRatingsImplCopyWith<_$ReceivedRatingsImpl> get copyWith =>
      __$$ReceivedRatingsImplCopyWithImpl<_$ReceivedRatingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceivedRatingsImplToJson(
      this,
    );
  }
}

abstract class _ReceivedRatings implements ReceivedRatings {
  const factory _ReceivedRatings(
          {required final List<UserPersonalRating> personal}) =
      _$ReceivedRatingsImpl;

  factory _ReceivedRatings.fromJson(Map<String, dynamic> json) =
      _$ReceivedRatingsImpl.fromJson;

  @override
  List<UserPersonalRating> get personal;

  /// Create a copy of ReceivedRatings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceivedRatingsImplCopyWith<_$ReceivedRatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
