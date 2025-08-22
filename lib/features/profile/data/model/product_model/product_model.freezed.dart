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
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_description')
  String? get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type')
  String get saleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
  double? get deliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
  double? get deliveryDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  double? get deliveryRadius => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool get selfPickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
  double? get deliveryLengthCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
  double? get deliveryWidthCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
  double? get deliveryHeightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
  double? get deliveryWeightKg => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<String>? get children => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_methods')
  List<String>? get deliveryMethods => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _boolFromInt)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_pictures')
  dynamic get productPictures => throw _privateConstructorUsedError;
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
      {@JsonKey(fromJson: _imagesFromJson) List<String>? images,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'sale_type') String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool selfPickup,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      double? deliveryWeightKg,
      int? id,
      List<String>? children,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      String? type,
      String? icon,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'product_pictures') dynamic productPictures,
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
    Object? images = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? categoryId = freezed,
    Object? saleType = null,
    Object? deliveryAvailable = null,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? selfPickup = null,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? id = freezed,
    Object? children = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryMethods = freezed,
    Object? status = freezed,
    Object? productPictures = freezed,
    Object? variants = null,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = null,
    Object? favoritesCount = null,
    Object? ratings = null,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAvailable: null == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryDiscount: freezed == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRadius: freezed == deliveryRadius
          ? _value.deliveryRadius
          : deliveryRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      selfPickup: null == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryLengthCm: freezed == deliveryLengthCm
          ? _value.deliveryLengthCm
          : deliveryLengthCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWidthCm: freezed == deliveryWidthCm
          ? _value.deliveryWidthCm
          : deliveryWidthCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryHeightCm: freezed == deliveryHeightCm
          ? _value.deliveryHeightCm
          : deliveryHeightCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWeightKg: freezed == deliveryWeightKg
          ? _value.deliveryWeightKg
          : deliveryWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryMethods: freezed == deliveryMethods
          ? _value.deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      productPictures: freezed == productPictures
          ? _value.productPictures
          : productPictures // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(fromJson: _imagesFromJson) List<String>? images,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'sale_type') String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool selfPickup,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      double? deliveryWeightKg,
      int? id,
      List<String>? children,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      String? type,
      String? icon,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'product_pictures') dynamic productPictures,
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
    Object? images = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? categoryId = freezed,
    Object? saleType = null,
    Object? deliveryAvailable = null,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? selfPickup = null,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? id = freezed,
    Object? children = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? icon = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryMethods = freezed,
    Object? status = freezed,
    Object? productPictures = freezed,
    Object? variants = null,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = null,
    Object? favoritesCount = null,
    Object? ratings = null,
  }) {
    return _then(_$ProductModelImpl(
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      saleType: null == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAvailable: null == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryDiscount: freezed == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryRadius: freezed == deliveryRadius
          ? _value.deliveryRadius
          : deliveryRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      selfPickup: null == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryLengthCm: freezed == deliveryLengthCm
          ? _value.deliveryLengthCm
          : deliveryLengthCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWidthCm: freezed == deliveryWidthCm
          ? _value.deliveryWidthCm
          : deliveryWidthCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryHeightCm: freezed == deliveryHeightCm
          ? _value.deliveryHeightCm
          : deliveryHeightCm // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryWeightKg: freezed == deliveryWeightKg
          ? _value.deliveryWeightKg
          : deliveryWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryMethods: freezed == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      productPictures: freezed == productPictures
          ? _value.productPictures
          : productPictures // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_description') this.productDescription,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'sale_type') this.saleType = 'auction',
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      this.deliveryAvailable = false,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      @JsonKey(name: 'delivery_time') this.deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      this.deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      this.deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      this.deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      this.selfPickup = false,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      this.deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      this.deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      this.deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      this.deliveryWeightKg,
      this.id,
      final List<String>? children,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      this.type,
      this.icon,
      this.description,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'delivery_methods') final List<String>? deliveryMethods,
      @JsonKey(fromJson: _boolFromInt) this.status,
      @JsonKey(name: 'product_pictures') this.productPictures,
      final List<VariantModel> variants = const [],
      this.category,
      this.user,
      this.owner,
      @JsonKey(name: 'is_favorited') this.isFavorited = false,
      @JsonKey(name: 'favorites_count') this.favoritesCount = 0,
      final List<dynamic> ratings = const []})
      : _images = images,
        _children = children,
        _deliveryMethods = deliveryMethods,
        _variants = variants,
        _ratings = ratings;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  final List<String>? _images;
  @override
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_description')
  final String? productDescription;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'sale_type')
  final String saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  final bool deliveryAvailable;
  @override
  @JsonKey(name: 'delivery_type')
  final String? deliveryType;
  @override
  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;
  @override
  @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
  final double? deliveryPrice;
  @override
  @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
  final double? deliveryDiscount;
  @override
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  final double? deliveryRadius;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  final bool selfPickup;
  @override
  @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
  final double? deliveryLengthCm;
  @override
  @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
  final double? deliveryWidthCm;
  @override
  @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
  final double? deliveryHeightCm;
  @override
  @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
  final double? deliveryWeightKg;
  @override
  final int? id;
  final List<String>? _children;
  @override
  List<String>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<String>? _deliveryMethods;
  @override
  @JsonKey(name: 'delivery_methods')
  List<String>? get deliveryMethods {
    final value = _deliveryMethods;
    if (value == null) return null;
    if (_deliveryMethods is EqualUnmodifiableListView) return _deliveryMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: _boolFromInt)
  final bool? status;
  @override
  @JsonKey(name: 'product_pictures')
  final dynamic productPictures;
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
    return 'ProductModel(images: $images, productName: $productName, productDescription: $productDescription, categoryId: $categoryId, saleType: $saleType, deliveryAvailable: $deliveryAvailable, deliveryType: $deliveryType, deliveryTime: $deliveryTime, deliveryPrice: $deliveryPrice, deliveryDiscount: $deliveryDiscount, deliveryRadius: $deliveryRadius, selfPickup: $selfPickup, deliveryLengthCm: $deliveryLengthCm, deliveryWidthCm: $deliveryWidthCm, deliveryHeightCm: $deliveryHeightCm, deliveryWeightKg: $deliveryWeightKg, id: $id, children: $children, parentId: $parentId, name: $name, type: $type, icon: $icon, description: $description, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, deliveryMethods: $deliveryMethods, status: $status, productPictures: $productPictures, variants: $variants, category: $category, user: $user, owner: $owner, isFavorited: $isFavorited, favoritesCount: $favoritesCount, ratings: $ratings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.saleType, saleType) ||
                other.saleType == saleType) &&
            (identical(other.deliveryAvailable, deliveryAvailable) ||
                other.deliveryAvailable == deliveryAvailable) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            (identical(other.deliveryDiscount, deliveryDiscount) ||
                other.deliveryDiscount == deliveryDiscount) &&
            (identical(other.deliveryRadius, deliveryRadius) ||
                other.deliveryRadius == deliveryRadius) &&
            (identical(other.selfPickup, selfPickup) ||
                other.selfPickup == selfPickup) &&
            (identical(other.deliveryLengthCm, deliveryLengthCm) ||
                other.deliveryLengthCm == deliveryLengthCm) &&
            (identical(other.deliveryWidthCm, deliveryWidthCm) ||
                other.deliveryWidthCm == deliveryWidthCm) &&
            (identical(other.deliveryHeightCm, deliveryHeightCm) ||
                other.deliveryHeightCm == deliveryHeightCm) &&
            (identical(other.deliveryWeightKg, deliveryWeightKg) ||
                other.deliveryWeightKg == deliveryWeightKg) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.productPictures, productPictures) &&
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
        const DeepCollectionEquality().hash(_images),
        productName,
        productDescription,
        categoryId,
        saleType,
        deliveryAvailable,
        deliveryType,
        deliveryTime,
        deliveryPrice,
        deliveryDiscount,
        deliveryRadius,
        selfPickup,
        deliveryLengthCm,
        deliveryWidthCm,
        deliveryHeightCm,
        deliveryWeightKg,
        id,
        const DeepCollectionEquality().hash(_children),
        parentId,
        name,
        type,
        icon,
        description,
        userId,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_deliveryMethods),
        status,
        const DeepCollectionEquality().hash(productPictures),
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
      {@JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_description') final String? productDescription,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'sale_type') final String saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      final bool deliveryAvailable,
      @JsonKey(name: 'delivery_type') final String? deliveryType,
      @JsonKey(name: 'delivery_time') final String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      final double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      final double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      final double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      final bool selfPickup,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      final double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      final double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      final double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      final double? deliveryWeightKg,
      final int? id,
      final List<String>? children,
      @JsonKey(name: 'parent_id') final int? parentId,
      final String? name,
      final String? type,
      final String? icon,
      final String? description,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'delivery_methods') final List<String>? deliveryMethods,
      @JsonKey(fromJson: _boolFromInt) final bool? status,
      @JsonKey(name: 'product_pictures') final dynamic productPictures,
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
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_description')
  String? get productDescription;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'sale_type')
  String get saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool get deliveryAvailable;
  @override
  @JsonKey(name: 'delivery_type')
  String? get deliveryType;
  @override
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime;
  @override
  @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
  double? get deliveryPrice;
  @override
  @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
  double? get deliveryDiscount;
  @override
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  double? get deliveryRadius;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool get selfPickup;
  @override
  @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
  double? get deliveryLengthCm;
  @override
  @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
  double? get deliveryWidthCm;
  @override
  @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
  double? get deliveryHeightCm;
  @override
  @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
  double? get deliveryWeightKg;
  @override
  int? get id;
  @override
  List<String>? get children;
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
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'delivery_methods')
  List<String>? get deliveryMethods;
  @override
  @JsonKey(fromJson: _boolFromInt)
  bool? get status;
  @override
  @JsonKey(name: 'product_pictures')
  dynamic get productPictures;
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

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_confirmation')
  int? get ageConfirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_agreement')
  int? get termsAgreement => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  double? get personalRating => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  String? get providerId => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_business')
  String? get imageBusiness => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get sms => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_email')
  String? get sendEmail => throw _privateConstructorUsedError;
  String? get push => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      String? email,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') int? ageConfirmation,
      @JsonKey(name: 'terms_agreement') int? termsAgreement,
      @JsonKey(name: 'personal_rating') double? personalRating,
      String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      String? role,
      String? phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      String? visibility,
      String? sms,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? push,
      String? status,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = freezed,
    Object? termsAgreement = freezed,
    Object? personalRating = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? sendEmail = freezed,
    Object? push = freezed,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int?,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      String? email,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') int? ageConfirmation,
      @JsonKey(name: 'terms_agreement') int? termsAgreement,
      @JsonKey(name: 'personal_rating') double? personalRating,
      String? provider,
      @JsonKey(name: 'provider_id') String? providerId,
      String? role,
      String? phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      String? visibility,
      String? sms,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? push,
      String? status,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = freezed,
    Object? termsAgreement = freezed,
    Object? personalRating = freezed,
    Object? provider = freezed,
    Object? providerId = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? sendEmail = freezed,
    Object? push = freezed,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int?,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      @JsonKey(name: 'business_id') this.businessId,
      this.email,
      this.name,
      @JsonKey(name: 'last_name') this.lastName,
      this.gender,
      this.country,
      @JsonKey(name: 'age_confirmation') this.ageConfirmation,
      @JsonKey(name: 'terms_agreement') this.termsAgreement,
      @JsonKey(name: 'personal_rating') this.personalRating,
      this.provider,
      @JsonKey(name: 'provider_id') this.providerId,
      this.role,
      this.phone,
      this.image,
      @JsonKey(name: 'image_business') this.imageBusiness,
      this.description,
      this.lang,
      this.visibility,
      this.sms,
      @JsonKey(name: 'send_email') this.sendEmail,
      this.push,
      this.status,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  @JsonKey(name: 'age_confirmation')
  final int? ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  final int? termsAgreement;
  @override
  @JsonKey(name: 'personal_rating')
  final double? personalRating;
  @override
  final String? provider;
  @override
  @JsonKey(name: 'provider_id')
  final String? providerId;
  @override
  final String? role;
  @override
  final String? phone;
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
  final String? sms;
  @override
  @JsonKey(name: 'send_email')
  final String? sendEmail;
  @override
  final String? push;
  @override
  final String? status;
  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
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
    return 'UserModel(id: $id, businessId: $businessId, email: $email, name: $name, lastName: $lastName, gender: $gender, country: $country, ageConfirmation: $ageConfirmation, termsAgreement: $termsAgreement, personalRating: $personalRating, provider: $provider, providerId: $providerId, role: $role, phone: $phone, image: $image, imageBusiness: $imageBusiness, description: $description, lang: $lang, visibility: $visibility, sms: $sms, sendEmail: $sendEmail, push: $push, status: $status, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
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
        createdAt,
        updatedAt,
        personalRatingCount,
        isFavorited,
        favoritesCount
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? id,
      @JsonKey(name: 'business_id') final int? businessId,
      final String? email,
      final String? name,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? gender,
      final String? country,
      @JsonKey(name: 'age_confirmation') final int? ageConfirmation,
      @JsonKey(name: 'terms_agreement') final int? termsAgreement,
      @JsonKey(name: 'personal_rating') final double? personalRating,
      final String? provider,
      @JsonKey(name: 'provider_id') final String? providerId,
      final String? role,
      final String? phone,
      final String? image,
      @JsonKey(name: 'image_business') final String? imageBusiness,
      final String? description,
      final String? lang,
      final String? visibility,
      final String? sms,
      @JsonKey(name: 'send_email') final String? sendEmail,
      final String? push,
      final String? status,
      @JsonKey(name: 'email_verified_at') final DateTime? emailVerifiedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'is_favorited') final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      final int? favoritesCount}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'business_id')
  int? get businessId;
  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  @JsonKey(name: 'age_confirmation')
  int? get ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  int? get termsAgreement;
  @override
  @JsonKey(name: 'personal_rating')
  double? get personalRating;
  @override
  String? get provider;
  @override
  @JsonKey(name: 'provider_id')
  String? get providerId;
  @override
  String? get role;
  @override
  String? get phone;
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
  String? get sms;
  @override
  @JsonKey(name: 'send_email')
  String? get sendEmail;
  @override
  String? get push;
  @override
  String? get status;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
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
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
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
      {@JsonKey(fromJson: _parseDouble) double? price,
      int stock,
      int? id,
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
    Object? price = freezed,
    Object? stock = null,
    Object? id = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(fromJson: _parseDouble) double? price,
      int stock,
      int? id,
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
    Object? price = freezed,
    Object? stock = null,
    Object? id = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$VariantModelImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(fromJson: _parseDouble) this.price,
      this.stock = 1,
      this.id,
      final Map<String, dynamic>? attributes,
      @JsonKey(fromJson: _parseDouble) this.discount,
      @JsonKey(name: 'discount_type') this.discountType})
      : _attributes = attributes;

  factory _$VariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantModelImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseDouble)
  final double? price;
  @override
  @JsonKey()
  final int stock;
  @override
  final int? id;
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
    return 'VariantModel(price: $price, stock: $stock, id: $id, attributes: $attributes, discount: $discount, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantModelImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, stock, id,
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
          {@JsonKey(fromJson: _parseDouble) final double? price,
          final int stock,
          final int? id,
          final Map<String, dynamic>? attributes,
          @JsonKey(fromJson: _parseDouble) final double? discount,
          @JsonKey(name: 'discount_type') final String? discountType}) =
      _$VariantModelImpl;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$VariantModelImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseDouble)
  double? get price;
  @override
  int get stock;
  @override
  int? get id;
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
