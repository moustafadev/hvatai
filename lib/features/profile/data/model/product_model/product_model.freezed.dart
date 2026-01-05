// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_description')
  String? get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type')
  String get saleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool? get selfPickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_destruction')
  String? get selfDestruction => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings_count')
  int get ratingsCount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _imagesFromJson)
  List<String> get images => throw _privateConstructorUsedError;
  List<VariantModel> get variants => throw _privateConstructorUsedError;
  MainCategoryModel? get category => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  OwnerModel? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int get favoritesCount => throw _privateConstructorUsedError;
  List<dynamic> get ratings => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'sale_type') String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
      @JsonKey(name: 'self_destruction') String? selfDestruction,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
      int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      double? averageRating,
      @JsonKey(name: 'ratings_count') int ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) List<String> images,
      List<VariantModel> variants,
      MainCategoryModel? category,
      UserModel? user,
      OwnerModel? owner,
      @JsonKey(name: 'is_favorited') bool isFavorited,
      @JsonKey(name: 'favorites_count') int favoritesCount,
      List<dynamic> ratings});

  $MainCategoryModelCopyWith<$Res>? get category;
  $UserModelCopyWith<$Res>? get user;
  $OwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? saleType = null,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? selfDestruction = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = null,
    Object? images = null,
    Object? variants = null,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = null,
    Object? favoritesCount = null,
    Object? ratings = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfDestruction: freezed == selfDestruction
          ? _value.selfDestruction
          : selfDestruction // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MainCategoryModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesCount: null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainCategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $MainCategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'sale_type') String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
      @JsonKey(name: 'self_destruction') String? selfDestruction,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
      int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      double? averageRating,
      @JsonKey(name: 'ratings_count') int ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) List<String> images,
      List<VariantModel> variants,
      MainCategoryModel? category,
      UserModel? user,
      OwnerModel? owner,
      @JsonKey(name: 'is_favorited') bool isFavorited,
      @JsonKey(name: 'favorites_count') int favoritesCount,
      List<dynamic> ratings});

  @override
  $MainCategoryModelCopyWith<$Res>? get category;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $OwnerModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? saleType = null,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? selfDestruction = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = null,
    Object? images = null,
    Object? variants = null,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = null,
    Object? favoritesCount = null,
    Object? ratings = null,
  }) {
    return _then(_$ProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfDestruction: freezed == selfDestruction
          ? _value.selfDestruction
          : selfDestruction // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: null == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MainCategoryModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerModel?,
      isFavorited: null == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesCount: null == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {this.id,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_description') this.productDescription,
      @JsonKey(name: 'sale_type') this.saleType = 'buy_now',
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      this.deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      this.selfPickup = false,
      @JsonKey(name: 'self_destruction') this.selfDestruction,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
      this.categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      this.averageRating,
      @JsonKey(name: 'ratings_count') this.ratingsCount = 0,
      @JsonKey(fromJson: _imagesFromJson) final List<String> images = const [],
      final List<VariantModel> variants = const [],
      this.category,
      this.user,
      this.owner,
      @JsonKey(name: 'is_favorited') this.isFavorited = false,
      @JsonKey(name: 'favorites_count') this.favoritesCount = 0,
      final List<dynamic> ratings = const []})
      : _images = images,
        _variants = variants,
        _ratings = ratings;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_description')
  final String? productDescription;
  @override
  @JsonKey(name: 'sale_type')
  final String saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  final bool? deliveryAvailable;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  final bool? selfPickup;
  @override
  @JsonKey(name: 'self_destruction')
  final String? selfDestruction;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
  final int? categoryId;
  @override
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  final double? averageRating;
  @override
  @JsonKey(name: 'ratings_count')
  final int ratingsCount;
  final List<String> _images;
  @override
  @JsonKey(fromJson: _imagesFromJson)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<VariantModel> _variants;
  @override
  @JsonKey()
  List<VariantModel> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  final MainCategoryModel? category;
  @override
  final UserModel? user;
  @override
  final OwnerModel? owner;
  @override
  @JsonKey(name: 'is_favorited')
  final bool isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int favoritesCount;
  final List<dynamic> _ratings;
  @override
  @JsonKey()
  List<dynamic> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, productName: $productName, productDescription: $productDescription, saleType: $saleType, deliveryAvailable: $deliveryAvailable, selfPickup: $selfPickup, selfDestruction: $selfDestruction, userId: $userId, categoryId: $categoryId, averageRating: $averageRating, ratingsCount: $ratingsCount, images: $images, variants: $variants, category: $category, user: $user, owner: $owner, isFavorited: $isFavorited, favoritesCount: $favoritesCount, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.saleType, saleType) ||
                other.saleType == saleType) &&
            (identical(other.deliveryAvailable, deliveryAvailable) ||
                other.deliveryAvailable == deliveryAvailable) &&
            (identical(other.selfPickup, selfPickup) ||
                other.selfPickup == selfPickup) &&
            (identical(other.selfDestruction, selfDestruction) ||
                other.selfDestruction == selfDestruction) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        productName,
        productDescription,
        saleType,
        deliveryAvailable,
        selfPickup,
        selfDestruction,
        userId,
        categoryId,
        averageRating,
        ratingsCount,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_variants),
        category,
        user,
        owner,
        isFavorited,
        favoritesCount,
        const DeepCollectionEquality().hash(_ratings)
      ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final int? id,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_description') final String? productDescription,
      @JsonKey(name: 'sale_type') final String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      final bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      final bool? selfPickup,
      @JsonKey(name: 'self_destruction') final String? selfDestruction,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
      final int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      final double? averageRating,
      @JsonKey(name: 'ratings_count') final int ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) final List<String> images,
      final List<VariantModel> variants,
      final MainCategoryModel? category,
      final UserModel? user,
      final OwnerModel? owner,
      @JsonKey(name: 'is_favorited') final bool isFavorited,
      @JsonKey(name: 'favorites_count') final int favoritesCount,
      final List<dynamic> ratings}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_description')
  String? get productDescription;
  @override
  @JsonKey(name: 'sale_type')
  String get saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool? get selfPickup;
  @override
  @JsonKey(name: 'self_destruction')
  String? get selfDestruction;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'category_id', fromJson: _categoryIdFromJson)
  int? get categoryId;
  @override
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  double? get averageRating;
  @override
  @JsonKey(name: 'ratings_count')
  int get ratingsCount;
  @override
  @JsonKey(fromJson: _imagesFromJson)
  List<String> get images;
  @override
  List<VariantModel> get variants;
  @override
  MainCategoryModel? get category;
  @override
  UserModel? get user;
  @override
  OwnerModel? get owner;
  @override
  @JsonKey(name: 'is_favorited')
  bool get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int get favoritesCount;
  @override
  List<dynamic> get ratings;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) {
  return _OwnerModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this OwnerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerModelCopyWith<OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerModelCopyWith<$Res> {
  factory $OwnerModelCopyWith(
          OwnerModel value, $Res Function(OwnerModel) then) =
      _$OwnerModelCopyWithImpl<$Res, OwnerModel>;
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class _$OwnerModelCopyWithImpl<$Res, $Val extends OwnerModel>
    implements $OwnerModelCopyWith<$Res> {
  _$OwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerModelImplCopyWith<$Res>
    implements $OwnerModelCopyWith<$Res> {
  factory _$$OwnerModelImplCopyWith(
          _$OwnerModelImpl value, $Res Function(_$OwnerModelImpl) then) =
      __$$OwnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? email, String? image});
}

/// @nodoc
class __$$OwnerModelImplCopyWithImpl<$Res>
    extends _$OwnerModelCopyWithImpl<$Res, _$OwnerModelImpl>
    implements _$$OwnerModelImplCopyWith<$Res> {
  __$$OwnerModelImplCopyWithImpl(
      _$OwnerModelImpl _value, $Res Function(_$OwnerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
  }) {
    return _then(_$OwnerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerModelImpl implements _OwnerModel {
  const _$OwnerModelImpl({this.id, this.name, this.email, this.image});

  factory _$OwnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;

  @override
  String toString() {
    return 'OwnerModel(id: $id, name: $name, email: $email, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, image);

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerModelImplCopyWith<_$OwnerModelImpl> get copyWith =>
      __$$OwnerModelImplCopyWithImpl<_$OwnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerModelImplToJson(
      this,
    );
  }
}

abstract class _OwnerModel implements OwnerModel {
  const factory _OwnerModel(
      {final int? id,
      final String? name,
      final String? email,
      final String? image}) = _$OwnerModelImpl;

  factory _OwnerModel.fromJson(Map<String, dynamic> json) =
      _$OwnerModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get image;

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerModelImplCopyWith<_$OwnerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;

  /// Serializes this VariantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {int? id,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int stock,
      Map<String, dynamic>? attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = null,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantModelImplCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$VariantModelImplCopyWith(
          _$VariantModelImpl value, $Res Function(_$VariantModelImpl) then) =
      __$$VariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int stock,
      Map<String, dynamic>? attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class __$$VariantModelImplCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$VariantModelImpl>
    implements _$$VariantModelImplCopyWith<$Res> {
  __$$VariantModelImplCopyWithImpl(
      _$VariantModelImpl _value, $Res Function(_$VariantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = null,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$VariantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantModelImpl implements _VariantModel {
  const _$VariantModelImpl(
      {this.id,
      this.sku,
      @JsonKey(fromJson: _parseDouble) this.price,
      this.stock = 1,
      final Map<String, dynamic>? attributes,
      @JsonKey(fromJson: _parseDouble) this.discount,
      @JsonKey(name: 'discount_type') this.discountType})
      : _attributes = attributes;

  factory _$VariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? sku;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? price;
  @override
  @JsonKey()
  final int stock;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(fromJson: _parseDouble)
  final double? discount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;

  @override
  String toString() {
    return 'VariantModel(id: $id, sku: $sku, price: $price, stock: $stock, attributes: $attributes, discount: $discount, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sku, price, stock,
      const DeepCollectionEquality().hash(_attributes), discount, discountType);

  /// Create a copy of VariantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantModelImplCopyWith<_$VariantModelImpl> get copyWith =>
      __$$VariantModelImplCopyWithImpl<_$VariantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantModelImplToJson(
      this,
    );
  }
}

abstract class _VariantModel implements VariantModel {
  const factory _VariantModel(
          {final int? id,
          final String? sku,
          @JsonKey(fromJson: _parseDouble) final double? price,
          final int stock,
          final Map<String, dynamic>? attributes,
          @JsonKey(fromJson: _parseDouble) final double? discount,
          @JsonKey(name: 'discount_type') final String? discountType}) =
      _$VariantModelImpl;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$VariantModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get sku;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get price;
  @override
  int get stock;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get discount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;

  /// Create a copy of VariantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantModelImplCopyWith<_$VariantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainCategoryModel _$MainCategoryModelFromJson(Map<String, dynamic> json) {
  return _MainCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$MainCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MainCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainCategoryModelCopyWith<MainCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryModelCopyWith<$Res> {
  factory $MainCategoryModelCopyWith(
          MainCategoryModel value, $Res Function(MainCategoryModel) then) =
      _$MainCategoryModelCopyWithImpl<$Res, MainCategoryModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      String? type,
      String? icon,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      bool? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MainCategoryModelCopyWithImpl<$Res, $Val extends MainCategoryModel>
    implements $MainCategoryModelCopyWith<$Res> {
  _$MainCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainCategoryModelImplCopyWith<$Res>
    implements $MainCategoryModelCopyWith<$Res> {
  factory _$$MainCategoryModelImplCopyWith(_$MainCategoryModelImpl value,
          $Res Function(_$MainCategoryModelImpl) then) =
      __$$MainCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      String? type,
      String? icon,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      bool? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$MainCategoryModelImplCopyWithImpl<$Res>
    extends _$MainCategoryModelCopyWithImpl<$Res, _$MainCategoryModelImpl>
    implements _$$MainCategoryModelImplCopyWith<$Res> {
  __$$MainCategoryModelImplCopyWithImpl(_$MainCategoryModelImpl _value,
      $Res Function(_$MainCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MainCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainCategoryModelImpl implements _MainCategoryModel {
  const _$MainCategoryModelImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      this.type,
      this.icon,
      this.description,
      @JsonKey(name: 'user_id') this.userId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$MainCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainCategoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? icon;
  @override
  final String? description;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final bool? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MainCategoryModel(id: $id, parentId: $parentId, name: $name, type: $type, icon: $icon, description: $description, userId: $userId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, name, type, icon,
      description, userId, status, createdAt, updatedAt);

  /// Create a copy of MainCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCategoryModelImplCopyWith<_$MainCategoryModelImpl> get copyWith =>
      __$$MainCategoryModelImplCopyWithImpl<_$MainCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _MainCategoryModel implements MainCategoryModel {
  const factory _MainCategoryModel(
          {final int? id,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          final String? type,
          final String? icon,
          final String? description,
          @JsonKey(name: 'user_id') final int? userId,
          final bool? status,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$MainCategoryModelImpl;

  factory _MainCategoryModel.fromJson(Map<String, dynamic> json) =
      _$MainCategoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get icon;
  @override
  String? get description;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  bool? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of MainCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainCategoryModelImplCopyWith<_$MainCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
