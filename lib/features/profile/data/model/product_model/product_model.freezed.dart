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
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_description')
  String? get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type')
  String? get saleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable => throw _privateConstructorUsedError;
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
  bool? get selfPickup => throw _privateConstructorUsedError;
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
  List<VariantModel>? get variants => throw _privateConstructorUsedError;

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
      {List<String>? images,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
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
      List<VariantModel>? variants});
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
    Object? saleType = freezed,
    Object? deliveryAvailable = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? selfPickup = freezed,
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
    Object? variants = freezed,
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
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ) as $Val);
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
      {List<String>? images,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
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
      List<VariantModel>? variants});
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
    Object? saleType = freezed,
    Object? deliveryAvailable = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? selfPickup = freezed,
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
    Object? variants = freezed,
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
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {final List<String>? images,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_description') this.productDescription,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'sale_type') this.saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      this.deliveryAvailable,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      @JsonKey(name: 'delivery_time') this.deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      this.deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      this.deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      this.deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) this.selfPickup,
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
      final List<VariantModel>? variants})
      : _images = images,
        _children = children,
        _deliveryMethods = deliveryMethods,
        _variants = variants;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  final List<String>? _images;
  @override
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
  final String? saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  final bool? deliveryAvailable;
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
  final bool? selfPickup;
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
  final List<VariantModel>? _variants;
  @override
  List<VariantModel>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModel(images: $images, productName: $productName, productDescription: $productDescription, categoryId: $categoryId, saleType: $saleType, deliveryAvailable: $deliveryAvailable, deliveryType: $deliveryType, deliveryTime: $deliveryTime, deliveryPrice: $deliveryPrice, deliveryDiscount: $deliveryDiscount, deliveryRadius: $deliveryRadius, selfPickup: $selfPickup, deliveryLengthCm: $deliveryLengthCm, deliveryWidthCm: $deliveryWidthCm, deliveryHeightCm: $deliveryHeightCm, deliveryWeightKg: $deliveryWeightKg, id: $id, children: $children, parentId: $parentId, name: $name, type: $type, icon: $icon, description: $description, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, deliveryMethods: $deliveryMethods, status: $status, productPictures: $productPictures, variants: $variants)';
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
            const DeepCollectionEquality().equals(other._variants, _variants));
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
        const DeepCollectionEquality().hash(_variants)
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
      {final List<String>? images,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_description') final String? productDescription,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'sale_type') final String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      final bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') final String? deliveryType,
      @JsonKey(name: 'delivery_time') final String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      final double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      final double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      final double? deliveryRadius,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      final bool? selfPickup,
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
      final List<VariantModel>? variants}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
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
  String? get saleType;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable;
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
  bool? get selfPickup;
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
  List<VariantModel>? get variants;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
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
      int? stock,
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
    Object? stock = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
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
      int? stock,
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
    Object? stock = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$VariantModelImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
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
      this.stock,
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
  final int? stock;
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
    return 'VariantModel(price: $price, stock: $stock, attributes: $attributes, discount: $discount, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantModelImpl &&
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
  int get hashCode => Object.hash(runtimeType, price, stock,
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
          final int? stock,
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
  int? get stock;
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
