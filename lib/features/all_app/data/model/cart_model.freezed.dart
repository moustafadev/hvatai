// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  List<CartModel>? get carts => throw _privateConstructorUsedError;

  /// Serializes this CartResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
          CartResponse value, $Res Function(CartResponse) then) =
      _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call({List<CartModel>? carts});
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = freezed,
  }) {
    return _then(_value.copyWith(
      carts: freezed == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartResponseImplCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$CartResponseImplCopyWith(
          _$CartResponseImpl value, $Res Function(_$CartResponseImpl) then) =
      __$$CartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartModel>? carts});
}

/// @nodoc
class __$$CartResponseImplCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$CartResponseImpl>
    implements _$$CartResponseImplCopyWith<$Res> {
  __$$CartResponseImplCopyWithImpl(
      _$CartResponseImpl _value, $Res Function(_$CartResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carts = freezed,
  }) {
    return _then(_$CartResponseImpl(
      carts: freezed == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartResponseImpl implements _CartResponse {
  const _$CartResponseImpl({final List<CartModel>? carts}) : _carts = carts;

  factory _$CartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartResponseImplFromJson(json);

  final List<CartModel>? _carts;
  @override
  List<CartModel>? get carts {
    final value = _carts;
    if (value == null) return null;
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartResponse(carts: $carts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartResponseImpl &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_carts));

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      __$$CartResponseImplCopyWithImpl<_$CartResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartResponseImplToJson(
      this,
    );
  }
}

abstract class _CartResponse implements CartResponse {
  const factory _CartResponse({final List<CartModel>? carts}) =
      _$CartResponseImpl;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$CartResponseImpl.fromJson;

  @override
  List<CartModel>? get carts;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get id => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  List<CartItem>? get items => throw _privateConstructorUsedError;

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({int? id, double? total, List<CartItem>? items});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, double? total, List<CartItem>? items});
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_$CartModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl({this.id, this.total, final List<CartItem>? items})
      : _items = items;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final int? id;
  @override
  final double? total;
  final List<CartItem>? _items;
  @override
  List<CartItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartModel(id: $id, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, total, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final int? id,
      final double? total,
      final List<CartItem>? items}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  int? get id;
  @override
  double? get total;
  @override
  List<CartItem>? get items;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_type')
  String? get itemType => throw _privateConstructorUsedError;
  MainVariantModel? get item => throw _privateConstructorUsedError;
  UserModel? get seller => throw _privateConstructorUsedError;

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      double? price,
      @JsonKey(name: 'item_type') String? itemType,
      MainVariantModel? item,
      UserModel? seller});

  $MainVariantModelCopyWith<$Res>? get item;
  $UserModelCopyWith<$Res>? get seller;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? itemType = freezed,
    Object? item = freezed,
    Object? seller = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MainVariantModel?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainVariantModelCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $MainVariantModelCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
          _$CartItemImpl value, $Res Function(_$CartItemImpl) then) =
      __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      double? price,
      @JsonKey(name: 'item_type') String? itemType,
      MainVariantModel? item,
      UserModel? seller});

  @override
  $MainVariantModelCopyWith<$Res>? get item;
  @override
  $UserModelCopyWith<$Res>? get seller;
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? itemType = freezed,
    Object? item = freezed,
    Object? seller = freezed,
  }) {
    return _then(_$CartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      itemType: freezed == itemType
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MainVariantModel?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl(
      {this.id,
      this.quantity,
      this.price,
      @JsonKey(name: 'item_type') this.itemType,
      this.item,
      this.seller});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  @JsonKey(name: 'item_type')
  final String? itemType;
  @override
  final MainVariantModel? item;
  @override
  final UserModel? seller;

  @override
  String toString() {
    return 'CartItem(id: $id, quantity: $quantity, price: $price, itemType: $itemType, item: $item, seller: $seller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.itemType, itemType) ||
                other.itemType == itemType) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.seller, seller) || other.seller == seller));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, price, itemType, item, seller);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {final int? id,
      final int? quantity,
      final double? price,
      @JsonKey(name: 'item_type') final String? itemType,
      final MainVariantModel? item,
      final UserModel? seller}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  double? get price;
  @override
  @JsonKey(name: 'item_type')
  String? get itemType;
  @override
  MainVariantModel? get item;
  @override
  UserModel? get seller;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainVariantModel _$MainVariantModelFromJson(Map<String, dynamic> json) {
  return _MainVariantModel.fromJson(json);
}

/// @nodoc
mixin _$MainVariantModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  dynamic get attributes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  MainProductModel? get product => throw _privateConstructorUsedError;

  /// Serializes this MainVariantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainVariantModelCopyWith<MainVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainVariantModelCopyWith<$Res> {
  factory $MainVariantModelCopyWith(
          MainVariantModel value, $Res Function(MainVariantModel) then) =
      _$MainVariantModelCopyWithImpl<$Res, MainVariantModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int? stock,
      dynamic attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      MainProductModel? product});

  $MainProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$MainVariantModelCopyWithImpl<$Res, $Val extends MainVariantModel>
    implements $MainVariantModelCopyWith<$Res> {
  _$MainVariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as MainProductModel?,
    ) as $Val);
  }

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $MainProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainVariantModelImplCopyWith<$Res>
    implements $MainVariantModelCopyWith<$Res> {
  factory _$$MainVariantModelImplCopyWith(_$MainVariantModelImpl value,
          $Res Function(_$MainVariantModelImpl) then) =
      __$$MainVariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int? stock,
      dynamic attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      MainProductModel? product});

  @override
  $MainProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$MainVariantModelImplCopyWithImpl<$Res>
    extends _$MainVariantModelCopyWithImpl<$Res, _$MainVariantModelImpl>
    implements _$$MainVariantModelImplCopyWith<$Res> {
  __$$MainVariantModelImplCopyWithImpl(_$MainVariantModelImpl _value,
      $Res Function(_$MainVariantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_$MainVariantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as MainProductModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainVariantModelImpl implements _MainVariantModel {
  const _$MainVariantModelImpl(
      {this.id,
      @JsonKey(name: 'product_id') this.productId,
      this.sku,
      @JsonKey(fromJson: _parseDouble) this.price,
      this.stock,
      this.attributes,
      @JsonKey(fromJson: _parseDouble) this.discount,
      @JsonKey(name: 'discount_type') this.discountType,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.product});

  factory _$MainVariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainVariantModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? sku;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? price;
  @override
  final int? stock;
  @override
  final dynamic attributes;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? discount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final MainProductModel? product;

  @override
  String toString() {
    return 'MainVariantModel(id: $id, productId: $productId, sku: $sku, price: $price, stock: $stock, attributes: $attributes, discount: $discount, discountType: $discountType, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainVariantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      sku,
      price,
      stock,
      const DeepCollectionEquality().hash(attributes),
      discount,
      discountType,
      createdAt,
      updatedAt,
      product);

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainVariantModelImplCopyWith<_$MainVariantModelImpl> get copyWith =>
      __$$MainVariantModelImplCopyWithImpl<_$MainVariantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainVariantModelImplToJson(
      this,
    );
  }
}

abstract class _MainVariantModel implements MainVariantModel {
  const factory _MainVariantModel(
      {final int? id,
      @JsonKey(name: 'product_id') final int? productId,
      final String? sku,
      @JsonKey(fromJson: _parseDouble) final double? price,
      final int? stock,
      final dynamic attributes,
      @JsonKey(fromJson: _parseDouble) final double? discount,
      @JsonKey(name: 'discount_type') final String? discountType,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final MainProductModel? product}) = _$MainVariantModelImpl;

  factory _MainVariantModel.fromJson(Map<String, dynamic> json) =
      _$MainVariantModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  String? get sku;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get price;
  @override
  int? get stock;
  @override
  dynamic get attributes;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get discount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  MainProductModel? get product;

  /// Create a copy of MainVariantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainVariantModelImplCopyWith<_$MainVariantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainProductModel _$MainProductModelFromJson(Map<String, dynamic> json) {
  return _MainProductModel.fromJson(json);
}

/// @nodoc
mixin _$MainProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  dynamic get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool? get selfPickup => throw _privateConstructorUsedError;
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
  String? get location => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _boolFromInt)
  bool? get status => throw _privateConstructorUsedError;
  int? get featured => throw _privateConstructorUsedError;
  dynamic get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
  double? get deliveryLengthCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
  double? get deliveryWidthCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
  double? get deliveryHeightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
  double? get deliveryWeightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_methods')
  List<String>? get deliveryMethods => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type')
  String? get saleType => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Serializes this MainProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainProductModelCopyWith<MainProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainProductModelCopyWith<$Res> {
  factory $MainProductModelCopyWith(
          MainProductModel value, $Res Function(MainProductModel) then) =
      _$MainProductModelCopyWithImpl<$Res, MainProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      String? code,
      dynamic unit,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      String? location,
      String? latitude,
      String? longitude,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      int? featured,
      dynamic meta,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      double? deliveryWeightKg,
      @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(fromJson: _imagesFromJson) List<String>? images,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$MainProductModelCopyWithImpl<$Res, $Val extends MainProductModel>
    implements $MainProductModelCopyWith<$Res> {
  _$MainProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? code = freezed,
    Object? unit = freezed,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? deliveryMethods = freezed,
    Object? saleType = freezed,
    Object? images = freezed,
    Object? user = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      deliveryMethods: freezed == deliveryMethods
          ? _value.deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of MainProductModel
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
}

/// @nodoc
abstract class _$$MainProductModelImplCopyWith<$Res>
    implements $MainProductModelCopyWith<$Res> {
  factory _$$MainProductModelImplCopyWith(_$MainProductModelImpl value,
          $Res Function(_$MainProductModelImpl) then) =
      __$$MainProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      String? code,
      dynamic unit,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) bool? selfPickup,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      String? location,
      String? latitude,
      String? longitude,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      int? featured,
      dynamic meta,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      double? deliveryWeightKg,
      @JsonKey(name: 'delivery_methods') List<String>? deliveryMethods,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(fromJson: _imagesFromJson) List<String>? images,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MainProductModelImplCopyWithImpl<$Res>
    extends _$MainProductModelCopyWithImpl<$Res, _$MainProductModelImpl>
    implements _$$MainProductModelImplCopyWith<$Res> {
  __$$MainProductModelImplCopyWithImpl(_$MainProductModelImpl _value,
      $Res Function(_$MainProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? code = freezed,
    Object? unit = freezed,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? deliveryMethods = freezed,
    Object? saleType = freezed,
    Object? images = freezed,
    Object? user = freezed,
  }) {
    return _then(_$MainProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      deliveryMethods: freezed == deliveryMethods
          ? _value._deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainProductModelImpl implements _MainProductModel {
  const _$MainProductModelImpl(
      {this.id,
      this.name,
      this.type,
      this.description,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      this.code,
      this.unit,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      this.deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt) this.selfPickup,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      @JsonKey(name: 'delivery_time') this.deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      this.deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      this.deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      this.deliveryRadius,
      this.location,
      this.latitude,
      this.longitude,
      @JsonKey(fromJson: _boolFromInt) this.status,
      this.featured,
      this.meta,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      this.deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      this.deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      this.deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      this.deliveryWeightKg,
      @JsonKey(name: 'delivery_methods') final List<String>? deliveryMethods,
      @JsonKey(name: 'sale_type') this.saleType,
      @JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      this.user})
      : _deliveryMethods = deliveryMethods,
        _images = images;

  factory _$MainProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? description;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  final String? code;
  @override
  final dynamic unit;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  final bool? deliveryAvailable;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  final bool? selfPickup;
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
  final String? location;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(fromJson: _boolFromInt)
  final bool? status;
  @override
  final int? featured;
  @override
  final dynamic meta;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
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
  @JsonKey(name: 'sale_type')
  final String? saleType;
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
  final UserModel? user;

  @override
  String toString() {
    return 'MainProductModel(id: $id, name: $name, type: $type, description: $description, userId: $userId, categoryId: $categoryId, code: $code, unit: $unit, deliveryAvailable: $deliveryAvailable, selfPickup: $selfPickup, deliveryType: $deliveryType, deliveryTime: $deliveryTime, deliveryPrice: $deliveryPrice, deliveryDiscount: $deliveryDiscount, deliveryRadius: $deliveryRadius, location: $location, latitude: $latitude, longitude: $longitude, status: $status, featured: $featured, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, deliveryLengthCm: $deliveryLengthCm, deliveryWidthCm: $deliveryWidthCm, deliveryHeightCm: $deliveryHeightCm, deliveryWeightKg: $deliveryWeightKg, deliveryMethods: $deliveryMethods, saleType: $saleType, images: $images, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            (identical(other.deliveryAvailable, deliveryAvailable) ||
                other.deliveryAvailable == deliveryAvailable) &&
            (identical(other.selfPickup, selfPickup) ||
                other.selfPickup == selfPickup) &&
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
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryLengthCm, deliveryLengthCm) ||
                other.deliveryLengthCm == deliveryLengthCm) &&
            (identical(other.deliveryWidthCm, deliveryWidthCm) ||
                other.deliveryWidthCm == deliveryWidthCm) &&
            (identical(other.deliveryHeightCm, deliveryHeightCm) ||
                other.deliveryHeightCm == deliveryHeightCm) &&
            (identical(other.deliveryWeightKg, deliveryWeightKg) ||
                other.deliveryWeightKg == deliveryWeightKg) &&
            const DeepCollectionEquality()
                .equals(other._deliveryMethods, _deliveryMethods) &&
            (identical(other.saleType, saleType) ||
                other.saleType == saleType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        type,
        description,
        userId,
        categoryId,
        code,
        const DeepCollectionEquality().hash(unit),
        deliveryAvailable,
        selfPickup,
        deliveryType,
        deliveryTime,
        deliveryPrice,
        deliveryDiscount,
        deliveryRadius,
        location,
        latitude,
        longitude,
        status,
        featured,
        const DeepCollectionEquality().hash(meta),
        createdAt,
        updatedAt,
        deliveryLengthCm,
        deliveryWidthCm,
        deliveryHeightCm,
        deliveryWeightKg,
        const DeepCollectionEquality().hash(_deliveryMethods),
        saleType,
        const DeepCollectionEquality().hash(_images),
        user
      ]);

  /// Create a copy of MainProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainProductModelImplCopyWith<_$MainProductModelImpl> get copyWith =>
      __$$MainProductModelImplCopyWithImpl<_$MainProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainProductModelImplToJson(
      this,
    );
  }
}

abstract class _MainProductModel implements MainProductModel {
  const factory _MainProductModel(
      {final int? id,
      final String? name,
      final String? type,
      final String? description,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'category_id') final int? categoryId,
      final String? code,
      final dynamic unit,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      final bool? deliveryAvailable,
      @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
      final bool? selfPickup,
      @JsonKey(name: 'delivery_type') final String? deliveryType,
      @JsonKey(name: 'delivery_time') final String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseDouble)
      final double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseDouble)
      final double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      final double? deliveryRadius,
      final String? location,
      final String? latitude,
      final String? longitude,
      @JsonKey(fromJson: _boolFromInt) final bool? status,
      final int? featured,
      final dynamic meta,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'delivery_length_cm', fromJson: _parseDouble)
      final double? deliveryLengthCm,
      @JsonKey(name: 'delivery_width_cm', fromJson: _parseDouble)
      final double? deliveryWidthCm,
      @JsonKey(name: 'delivery_height_cm', fromJson: _parseDouble)
      final double? deliveryHeightCm,
      @JsonKey(name: 'delivery_weight_kg', fromJson: _parseDouble)
      final double? deliveryWeightKg,
      @JsonKey(name: 'delivery_methods') final List<String>? deliveryMethods,
      @JsonKey(name: 'sale_type') final String? saleType,
      @JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      final UserModel? user}) = _$MainProductModelImpl;

  factory _MainProductModel.fromJson(Map<String, dynamic> json) =
      _$MainProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get description;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  String? get code;
  @override
  dynamic get unit;
  @override
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable;
  @override
  @JsonKey(name: 'self_pickup', fromJson: _boolFromInt)
  bool? get selfPickup;
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
  String? get location;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(fromJson: _boolFromInt)
  bool? get status;
  @override
  int? get featured;
  @override
  dynamic get meta;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
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
  @JsonKey(name: 'delivery_methods')
  List<String>? get deliveryMethods;
  @override
  @JsonKey(name: 'sale_type')
  String? get saleType;
  @override
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images;
  @override
  UserModel? get user;

  /// Create a copy of MainProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainProductModelImplCopyWith<_$MainProductModelImpl> get copyWith =>
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
