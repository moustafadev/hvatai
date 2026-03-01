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
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get total => throw _privateConstructorUsedError;
  List<CartItem>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_availability')
  DeliveryAvailability? get deliveryAvailability =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'checkout_totals')
  CheckoutTotals? get checkoutTotals => throw _privateConstructorUsedError;
  Totals? get totals => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      @JsonKey(fromJson: _parseDouble) double? total,
      List<CartItem>? items,
      @JsonKey(name: 'delivery_availability')
      DeliveryAvailability? deliveryAvailability,
      @JsonKey(name: 'checkout_totals') CheckoutTotals? checkoutTotals,
      Totals? totals});

  $DeliveryAvailabilityCopyWith<$Res>? get deliveryAvailability;
  $CheckoutTotalsCopyWith<$Res>? get checkoutTotals;
  $TotalsCopyWith<$Res>? get totals;
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
    Object? businessId = freezed,
    Object? total = freezed,
    Object? items = freezed,
    Object? deliveryAvailability = freezed,
    Object? checkoutTotals = freezed,
    Object? totals = freezed,
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
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      deliveryAvailability: freezed == deliveryAvailability
          ? _value.deliveryAvailability
          : deliveryAvailability // ignore: cast_nullable_to_non_nullable
              as DeliveryAvailability?,
      checkoutTotals: freezed == checkoutTotals
          ? _value.checkoutTotals
          : checkoutTotals // ignore: cast_nullable_to_non_nullable
              as CheckoutTotals?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals?,
    ) as $Val);
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryAvailabilityCopyWith<$Res>? get deliveryAvailability {
    if (_value.deliveryAvailability == null) {
      return null;
    }

    return $DeliveryAvailabilityCopyWith<$Res>(_value.deliveryAvailability!,
        (value) {
      return _then(_value.copyWith(deliveryAvailability: value) as $Val);
    });
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutTotalsCopyWith<$Res>? get checkoutTotals {
    if (_value.checkoutTotals == null) {
      return null;
    }

    return $CheckoutTotalsCopyWith<$Res>(_value.checkoutTotals!, (value) {
      return _then(_value.copyWith(checkoutTotals: value) as $Val);
    });
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalsCopyWith<$Res>? get totals {
    if (_value.totals == null) {
      return null;
    }

    return $TotalsCopyWith<$Res>(_value.totals!, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
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
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      @JsonKey(fromJson: _parseDouble) double? total,
      List<CartItem>? items,
      @JsonKey(name: 'delivery_availability')
      DeliveryAvailability? deliveryAvailability,
      @JsonKey(name: 'checkout_totals') CheckoutTotals? checkoutTotals,
      Totals? totals});

  @override
  $DeliveryAvailabilityCopyWith<$Res>? get deliveryAvailability;
  @override
  $CheckoutTotalsCopyWith<$Res>? get checkoutTotals;
  @override
  $TotalsCopyWith<$Res>? get totals;
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
    Object? businessId = freezed,
    Object? total = freezed,
    Object? items = freezed,
    Object? deliveryAvailability = freezed,
    Object? checkoutTotals = freezed,
    Object? totals = freezed,
  }) {
    return _then(_$CartModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      deliveryAvailability: freezed == deliveryAvailability
          ? _value.deliveryAvailability
          : deliveryAvailability // ignore: cast_nullable_to_non_nullable
              as DeliveryAvailability?,
      checkoutTotals: freezed == checkoutTotals
          ? _value.checkoutTotals
          : checkoutTotals // ignore: cast_nullable_to_non_nullable
              as CheckoutTotals?,
      totals: freezed == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl(
      {this.id,
      @JsonKey(name: 'business_id') this.businessId,
      @JsonKey(fromJson: _parseDouble) this.total,
      final List<CartItem>? items,
      @JsonKey(name: 'delivery_availability') this.deliveryAvailability,
      @JsonKey(name: 'checkout_totals') this.checkoutTotals,
      this.totals})
      : _items = items;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  @JsonKey(fromJson: _parseDouble)
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
  @JsonKey(name: 'delivery_availability')
  final DeliveryAvailability? deliveryAvailability;
  @override
  @JsonKey(name: 'checkout_totals')
  final CheckoutTotals? checkoutTotals;
  @override
  final Totals? totals;

  @override
  String toString() {
    return 'CartModel(id: $id, businessId: $businessId, total: $total, items: $items, deliveryAvailability: $deliveryAvailability, checkoutTotals: $checkoutTotals, totals: $totals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.deliveryAvailability, deliveryAvailability) ||
                other.deliveryAvailability == deliveryAvailability) &&
            (identical(other.checkoutTotals, checkoutTotals) ||
                other.checkoutTotals == checkoutTotals) &&
            (identical(other.totals, totals) || other.totals == totals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessId,
      total,
      const DeepCollectionEquality().hash(_items),
      deliveryAvailability,
      checkoutTotals,
      totals);

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
      @JsonKey(name: 'business_id') final int? businessId,
      @JsonKey(fromJson: _parseDouble) final double? total,
      final List<CartItem>? items,
      @JsonKey(name: 'delivery_availability')
      final DeliveryAvailability? deliveryAvailability,
      @JsonKey(name: 'checkout_totals') final CheckoutTotals? checkoutTotals,
      final Totals? totals}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'business_id')
  int? get businessId;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get total;
  @override
  List<CartItem>? get items;
  @override
  @JsonKey(name: 'delivery_availability')
  DeliveryAvailability? get deliveryAvailability;
  @override
  @JsonKey(name: 'checkout_totals')
  CheckoutTotals? get checkoutTotals;
  @override
  Totals? get totals;

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
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_price', fromJson: _parseDouble)
  double? get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
  double? get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;
  Discount? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price', fromJson: _parseDouble)
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
  double? get totalOriginalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundle_info')
  dynamic get bundleInfo => throw _privateConstructorUsedError;
  Fulfillment? get fulfillment => throw _privateConstructorUsedError;
  CartItemProductWrapper? get item => throw _privateConstructorUsedError;
  Business? get business => throw _privateConstructorUsedError;

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
      @JsonKey(fromJson: _parseDouble) double? price,
      @JsonKey(name: 'original_price', fromJson: _parseDouble)
      double? originalPrice,
      @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
      double? discountAmount,
      @JsonKey(name: 'discount_type') String? discountType,
      Discount? discount,
      @JsonKey(name: 'total_price', fromJson: _parseDouble) double? totalPrice,
      @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
      double? totalOriginalPrice,
      @JsonKey(name: 'bundle_info') dynamic bundleInfo,
      Fulfillment? fulfillment,
      CartItemProductWrapper? item,
      Business? business});

  $DiscountCopyWith<$Res>? get discount;
  $FulfillmentCopyWith<$Res>? get fulfillment;
  $CartItemProductWrapperCopyWith<$Res>? get item;
  $BusinessCopyWith<$Res>? get business;
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
    Object? originalPrice = freezed,
    Object? discountAmount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? totalPrice = freezed,
    Object? totalOriginalPrice = freezed,
    Object? bundleInfo = freezed,
    Object? fulfillment = freezed,
    Object? item = freezed,
    Object? business = freezed,
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
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalOriginalPrice: freezed == totalOriginalPrice
          ? _value.totalOriginalPrice
          : totalOriginalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      bundleInfo: freezed == bundleInfo
          ? _value.bundleInfo
          : bundleInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fulfillment: freezed == fulfillment
          ? _value.fulfillment
          : fulfillment // ignore: cast_nullable_to_non_nullable
              as Fulfillment?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItemProductWrapper?,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business?,
    ) as $Val);
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FulfillmentCopyWith<$Res>? get fulfillment {
    if (_value.fulfillment == null) {
      return null;
    }

    return $FulfillmentCopyWith<$Res>(_value.fulfillment!, (value) {
      return _then(_value.copyWith(fulfillment: value) as $Val);
    });
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemProductWrapperCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $CartItemProductWrapperCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessCopyWith<$Res>? get business {
    if (_value.business == null) {
      return null;
    }

    return $BusinessCopyWith<$Res>(_value.business!, (value) {
      return _then(_value.copyWith(business: value) as $Val);
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
      @JsonKey(fromJson: _parseDouble) double? price,
      @JsonKey(name: 'original_price', fromJson: _parseDouble)
      double? originalPrice,
      @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
      double? discountAmount,
      @JsonKey(name: 'discount_type') String? discountType,
      Discount? discount,
      @JsonKey(name: 'total_price', fromJson: _parseDouble) double? totalPrice,
      @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
      double? totalOriginalPrice,
      @JsonKey(name: 'bundle_info') dynamic bundleInfo,
      Fulfillment? fulfillment,
      CartItemProductWrapper? item,
      Business? business});

  @override
  $DiscountCopyWith<$Res>? get discount;
  @override
  $FulfillmentCopyWith<$Res>? get fulfillment;
  @override
  $CartItemProductWrapperCopyWith<$Res>? get item;
  @override
  $BusinessCopyWith<$Res>? get business;
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
    Object? originalPrice = freezed,
    Object? discountAmount = freezed,
    Object? discountType = freezed,
    Object? discount = freezed,
    Object? totalPrice = freezed,
    Object? totalOriginalPrice = freezed,
    Object? bundleInfo = freezed,
    Object? fulfillment = freezed,
    Object? item = freezed,
    Object? business = freezed,
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
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalOriginalPrice: freezed == totalOriginalPrice
          ? _value.totalOriginalPrice
          : totalOriginalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      bundleInfo: freezed == bundleInfo
          ? _value.bundleInfo
          : bundleInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fulfillment: freezed == fulfillment
          ? _value.fulfillment
          : fulfillment // ignore: cast_nullable_to_non_nullable
              as Fulfillment?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartItemProductWrapper?,
      business: freezed == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl(
      {this.id,
      this.quantity,
      @JsonKey(fromJson: _parseDouble) this.price,
      @JsonKey(name: 'original_price', fromJson: _parseDouble)
      this.originalPrice,
      @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
      this.discountAmount,
      @JsonKey(name: 'discount_type') this.discountType,
      this.discount,
      @JsonKey(name: 'total_price', fromJson: _parseDouble) this.totalPrice,
      @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
      this.totalOriginalPrice,
      @JsonKey(name: 'bundle_info') this.bundleInfo,
      this.fulfillment,
      this.item,
      this.business});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? price;
  @override
  @JsonKey(name: 'original_price', fromJson: _parseDouble)
  final double? originalPrice;
  @override
  @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
  final double? discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  final Discount? discount;
  @override
  @JsonKey(name: 'total_price', fromJson: _parseDouble)
  final double? totalPrice;
  @override
  @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
  final double? totalOriginalPrice;
  @override
  @JsonKey(name: 'bundle_info')
  final dynamic bundleInfo;
  @override
  final Fulfillment? fulfillment;
  @override
  final CartItemProductWrapper? item;
  @override
  final Business? business;

  @override
  String toString() {
    return 'CartItem(id: $id, quantity: $quantity, price: $price, originalPrice: $originalPrice, discountAmount: $discountAmount, discountType: $discountType, discount: $discount, totalPrice: $totalPrice, totalOriginalPrice: $totalOriginalPrice, bundleInfo: $bundleInfo, fulfillment: $fulfillment, item: $item, business: $business)';
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
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalOriginalPrice, totalOriginalPrice) ||
                other.totalOriginalPrice == totalOriginalPrice) &&
            const DeepCollectionEquality()
                .equals(other.bundleInfo, bundleInfo) &&
            (identical(other.fulfillment, fulfillment) ||
                other.fulfillment == fulfillment) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.business, business) ||
                other.business == business));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quantity,
      price,
      originalPrice,
      discountAmount,
      discountType,
      discount,
      totalPrice,
      totalOriginalPrice,
      const DeepCollectionEquality().hash(bundleInfo),
      fulfillment,
      item,
      business);

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
      @JsonKey(fromJson: _parseDouble) final double? price,
      @JsonKey(name: 'original_price', fromJson: _parseDouble)
      final double? originalPrice,
      @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
      final double? discountAmount,
      @JsonKey(name: 'discount_type') final String? discountType,
      final Discount? discount,
      @JsonKey(name: 'total_price', fromJson: _parseDouble)
      final double? totalPrice,
      @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
      final double? totalOriginalPrice,
      @JsonKey(name: 'bundle_info') final dynamic bundleInfo,
      final Fulfillment? fulfillment,
      final CartItemProductWrapper? item,
      final Business? business}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get price;
  @override
  @JsonKey(name: 'original_price', fromJson: _parseDouble)
  double? get originalPrice;
  @override
  @JsonKey(name: 'discount_amount', fromJson: _parseDouble)
  double? get discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  Discount? get discount;
  @override
  @JsonKey(name: 'total_price', fromJson: _parseDouble)
  double? get totalPrice;
  @override
  @JsonKey(name: 'total_original_price', fromJson: _parseDouble)
  double? get totalOriginalPrice;
  @override
  @JsonKey(name: 'bundle_info')
  dynamic get bundleInfo;
  @override
  Fulfillment? get fulfillment;
  @override
  CartItemProductWrapper? get item;
  @override
  Business? get business;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItemProductWrapper _$CartItemProductWrapperFromJson(
    Map<String, dynamic> json) {
  return _CartItemProductWrapper.fromJson(json);
}

/// @nodoc
mixin _$CartItemProductWrapper {
  int? get id => throw _privateConstructorUsedError;
  CartItemProduct? get product => throw _privateConstructorUsedError;

  /// Serializes this CartItemProductWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemProductWrapperCopyWith<CartItemProductWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemProductWrapperCopyWith<$Res> {
  factory $CartItemProductWrapperCopyWith(CartItemProductWrapper value,
          $Res Function(CartItemProductWrapper) then) =
      _$CartItemProductWrapperCopyWithImpl<$Res, CartItemProductWrapper>;
  @useResult
  $Res call({int? id, CartItemProduct? product});

  $CartItemProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartItemProductWrapperCopyWithImpl<$Res,
        $Val extends CartItemProductWrapper>
    implements $CartItemProductWrapperCopyWith<$Res> {
  _$CartItemProductWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartItemProduct?,
    ) as $Val);
  }

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartItemProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $CartItemProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemProductWrapperImplCopyWith<$Res>
    implements $CartItemProductWrapperCopyWith<$Res> {
  factory _$$CartItemProductWrapperImplCopyWith(
          _$CartItemProductWrapperImpl value,
          $Res Function(_$CartItemProductWrapperImpl) then) =
      __$$CartItemProductWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, CartItemProduct? product});

  @override
  $CartItemProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartItemProductWrapperImplCopyWithImpl<$Res>
    extends _$CartItemProductWrapperCopyWithImpl<$Res,
        _$CartItemProductWrapperImpl>
    implements _$$CartItemProductWrapperImplCopyWith<$Res> {
  __$$CartItemProductWrapperImplCopyWithImpl(
      _$CartItemProductWrapperImpl _value,
      $Res Function(_$CartItemProductWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
  }) {
    return _then(_$CartItemProductWrapperImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartItemProduct?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemProductWrapperImpl implements _CartItemProductWrapper {
  const _$CartItemProductWrapperImpl({this.id, this.product});

  factory _$CartItemProductWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemProductWrapperImplFromJson(json);

  @override
  final int? id;
  @override
  final CartItemProduct? product;

  @override
  String toString() {
    return 'CartItemProductWrapper(id: $id, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemProductWrapperImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product);

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemProductWrapperImplCopyWith<_$CartItemProductWrapperImpl>
      get copyWith => __$$CartItemProductWrapperImplCopyWithImpl<
          _$CartItemProductWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemProductWrapperImplToJson(
      this,
    );
  }
}

abstract class _CartItemProductWrapper implements CartItemProductWrapper {
  const factory _CartItemProductWrapper(
      {final int? id,
      final CartItemProduct? product}) = _$CartItemProductWrapperImpl;

  factory _CartItemProductWrapper.fromJson(Map<String, dynamic> json) =
      _$CartItemProductWrapperImpl.fromJson;

  @override
  int? get id;
  @override
  CartItemProduct? get product;

  /// Create a copy of CartItemProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemProductWrapperImplCopyWith<_$CartItemProductWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CartItemProduct _$CartItemProductFromJson(Map<String, dynamic> json) {
  return _CartItemProduct.fromJson(json);
}

/// @nodoc
mixin _$CartItemProduct {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_code')
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_description')
  String? get productDescription => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_type')
  String? get saleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
  bool? get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
  double? get deliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
  double? get deliveryDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  double? get deliveryRadius => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _boolFromInt)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'go_home')
  dynamic get goHome => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_destruction')
  dynamic get selfDestruction => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images => throw _privateConstructorUsedError;
  List<CartItemVariant>? get variants => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  UserModel? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;
  List<dynamic>? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_in_live_auction')
  bool? get isInLiveAuction => throw _privateConstructorUsedError;
  @JsonKey(name: 'live_auction')
  dynamic get liveAuction => throw _privateConstructorUsedError;

  /// Serializes this CartItemProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemProductCopyWith<CartItemProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemProductCopyWith<$Res> {
  factory $CartItemProductCopyWith(
          CartItemProduct value, $Res Function(CartItemProduct) then) =
      _$CartItemProductCopyWithImpl<$Res, CartItemProduct>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_code') String? productCode,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      String? type,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'go_home') dynamic goHome,
      @JsonKey(name: 'self_destruction') dynamic selfDestruction,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      double? averageRating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) List<String>? images,
      List<CartItemVariant>? variants,
      Category? category,
      UserModel? user,
      UserModel? owner,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount,
      List<dynamic>? ratings,
      @JsonKey(name: 'is_in_live_auction') bool? isInLiveAuction,
      @JsonKey(name: 'live_auction') dynamic liveAuction});

  $CategoryCopyWith<$Res>? get category;
  $UserModelCopyWith<$Res>? get user;
  $UserModelCopyWith<$Res>? get owner;
}

/// @nodoc
class _$CartItemProductCopyWithImpl<$Res, $Val extends CartItemProduct>
    implements $CartItemProductCopyWith<$Res> {
  _$CartItemProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? type = freezed,
    Object? saleType = freezed,
    Object? deliveryAvailable = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? status = freezed,
    Object? goHome = freezed,
    Object? selfDestruction = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? images = freezed,
    Object? variants = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
    Object? ratings = freezed,
    Object? isInLiveAuction = freezed,
    Object? liveAuction = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      goHome: freezed == goHome
          ? _value.goHome
          : goHome // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selfDestruction: freezed == selfDestruction
          ? _value.selfDestruction
          : selfDestruction // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CartItemVariant>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isInLiveAuction: freezed == isInLiveAuction
          ? _value.isInLiveAuction
          : isInLiveAuction // ignore: cast_nullable_to_non_nullable
              as bool?,
      liveAuction: freezed == liveAuction
          ? _value.liveAuction
          : liveAuction // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of CartItemProduct
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

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemProductImplCopyWith<$Res>
    implements $CartItemProductCopyWith<$Res> {
  factory _$$CartItemProductImplCopyWith(_$CartItemProductImpl value,
          $Res Function(_$CartItemProductImpl) then) =
      __$$CartItemProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_code') String? productCode,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_description') String? productDescription,
      String? type,
      @JsonKey(name: 'sale_type') String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
      double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
      double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      double? deliveryRadius,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'go_home') dynamic goHome,
      @JsonKey(name: 'self_destruction') dynamic selfDestruction,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      double? averageRating,
      @JsonKey(name: 'ratings_count') int? ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) List<String>? images,
      List<CartItemVariant>? variants,
      Category? category,
      UserModel? user,
      UserModel? owner,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount,
      List<dynamic>? ratings,
      @JsonKey(name: 'is_in_live_auction') bool? isInLiveAuction,
      @JsonKey(name: 'live_auction') dynamic liveAuction});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $UserModelCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$CartItemProductImplCopyWithImpl<$Res>
    extends _$CartItemProductCopyWithImpl<$Res, _$CartItemProductImpl>
    implements _$$CartItemProductImplCopyWith<$Res> {
  __$$CartItemProductImplCopyWithImpl(
      _$CartItemProductImpl _value, $Res Function(_$CartItemProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? type = freezed,
    Object? saleType = freezed,
    Object? deliveryAvailable = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? status = freezed,
    Object? goHome = freezed,
    Object? selfDestruction = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? images = freezed,
    Object? variants = freezed,
    Object? category = freezed,
    Object? user = freezed,
    Object? owner = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
    Object? ratings = freezed,
    Object? isInLiveAuction = freezed,
    Object? liveAuction = freezed,
  }) {
    return _then(_$CartItemProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: freezed == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      goHome: freezed == goHome
          ? _value.goHome
          : goHome // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selfDestruction: freezed == selfDestruction
          ? _value.selfDestruction
          : selfDestruction // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      ratingsCount: freezed == ratingsCount
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CartItemVariant>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ratings: freezed == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isInLiveAuction: freezed == isInLiveAuction
          ? _value.isInLiveAuction
          : isInLiveAuction // ignore: cast_nullable_to_non_nullable
              as bool?,
      liveAuction: freezed == liveAuction
          ? _value.liveAuction
          : liveAuction // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemProductImpl implements _CartItemProduct {
  const _$CartItemProductImpl(
      {this.id,
      @JsonKey(name: 'product_code') this.productCode,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_description') this.productDescription,
      this.type,
      @JsonKey(name: 'sale_type') this.saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      this.deliveryAvailable,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      @JsonKey(name: 'delivery_time') this.deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
      this.deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
      this.deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      this.deliveryRadius,
      @JsonKey(fromJson: _boolFromInt) this.status,
      @JsonKey(name: 'go_home') this.goHome,
      @JsonKey(name: 'self_destruction') this.selfDestruction,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      this.averageRating,
      @JsonKey(name: 'ratings_count') this.ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      final List<CartItemVariant>? variants,
      this.category,
      this.user,
      this.owner,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount,
      final List<dynamic>? ratings,
      @JsonKey(name: 'is_in_live_auction') this.isInLiveAuction,
      @JsonKey(name: 'live_auction') this.liveAuction})
      : _images = images,
        _variants = variants,
        _ratings = ratings;

  factory _$CartItemProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemProductImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_code')
  final String? productCode;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_description')
  final String? productDescription;
  @override
  final String? type;
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
  @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
  final double? deliveryPrice;
  @override
  @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
  final double? deliveryDiscount;
  @override
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  final double? deliveryRadius;
  @override
  @JsonKey(fromJson: _boolFromInt)
  final bool? status;
  @override
  @JsonKey(name: 'go_home')
  final dynamic goHome;
  @override
  @JsonKey(name: 'self_destruction')
  final dynamic selfDestruction;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  final double? averageRating;
  @override
  @JsonKey(name: 'ratings_count')
  final int? ratingsCount;
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

  final List<CartItemVariant>? _variants;
  @override
  List<CartItemVariant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Category? category;
  @override
  final UserModel? user;
  @override
  final UserModel? owner;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;
  final List<dynamic>? _ratings;
  @override
  List<dynamic>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_in_live_auction')
  final bool? isInLiveAuction;
  @override
  @JsonKey(name: 'live_auction')
  final dynamic liveAuction;

  @override
  String toString() {
    return 'CartItemProduct(id: $id, productCode: $productCode, productName: $productName, productDescription: $productDescription, type: $type, saleType: $saleType, deliveryAvailable: $deliveryAvailable, deliveryType: $deliveryType, deliveryTime: $deliveryTime, deliveryPrice: $deliveryPrice, deliveryDiscount: $deliveryDiscount, deliveryRadius: $deliveryRadius, status: $status, goHome: $goHome, selfDestruction: $selfDestruction, userId: $userId, categoryId: $categoryId, averageRating: $averageRating, ratingsCount: $ratingsCount, images: $images, variants: $variants, category: $category, user: $user, owner: $owner, isFavorited: $isFavorited, favoritesCount: $favoritesCount, ratings: $ratings, isInLiveAuction: $isInLiveAuction, liveAuction: $liveAuction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.type, type) || other.type == type) &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.goHome, goHome) &&
            const DeepCollectionEquality()
                .equals(other.selfDestruction, selfDestruction) &&
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
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.isInLiveAuction, isInLiveAuction) ||
                other.isInLiveAuction == isInLiveAuction) &&
            const DeepCollectionEquality()
                .equals(other.liveAuction, liveAuction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        productCode,
        productName,
        productDescription,
        type,
        saleType,
        deliveryAvailable,
        deliveryType,
        deliveryTime,
        deliveryPrice,
        deliveryDiscount,
        deliveryRadius,
        status,
        const DeepCollectionEquality().hash(goHome),
        const DeepCollectionEquality().hash(selfDestruction),
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
        const DeepCollectionEquality().hash(_ratings),
        isInLiveAuction,
        const DeepCollectionEquality().hash(liveAuction)
      ]);

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemProductImplCopyWith<_$CartItemProductImpl> get copyWith =>
      __$$CartItemProductImplCopyWithImpl<_$CartItemProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemProductImplToJson(
      this,
    );
  }
}

abstract class _CartItemProduct implements CartItemProduct {
  const factory _CartItemProduct(
      {final int? id,
      @JsonKey(name: 'product_code') final String? productCode,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_description') final String? productDescription,
      final String? type,
      @JsonKey(name: 'sale_type') final String? saleType,
      @JsonKey(name: 'delivery_available', fromJson: _boolFromInt)
      final bool? deliveryAvailable,
      @JsonKey(name: 'delivery_type') final String? deliveryType,
      @JsonKey(name: 'delivery_time') final String? deliveryTime,
      @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
      final double? deliveryPrice,
      @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
      final double? deliveryDiscount,
      @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
      final double? deliveryRadius,
      @JsonKey(fromJson: _boolFromInt) final bool? status,
      @JsonKey(name: 'go_home') final dynamic goHome,
      @JsonKey(name: 'self_destruction') final dynamic selfDestruction,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'average_rating', fromJson: _parseDouble)
      final double? averageRating,
      @JsonKey(name: 'ratings_count') final int? ratingsCount,
      @JsonKey(fromJson: _imagesFromJson) final List<String>? images,
      final List<CartItemVariant>? variants,
      final Category? category,
      final UserModel? user,
      final UserModel? owner,
      @JsonKey(name: 'is_favorited') final bool? isFavorited,
      @JsonKey(name: 'favorites_count') final int? favoritesCount,
      final List<dynamic>? ratings,
      @JsonKey(name: 'is_in_live_auction') final bool? isInLiveAuction,
      @JsonKey(name: 'live_auction')
      final dynamic liveAuction}) = _$CartItemProductImpl;

  factory _CartItemProduct.fromJson(Map<String, dynamic> json) =
      _$CartItemProductImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_code')
  String? get productCode;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_description')
  String? get productDescription;
  @override
  String? get type;
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
  @JsonKey(name: 'delivery_price', fromJson: _parseStringToDouble)
  double? get deliveryPrice;
  @override
  @JsonKey(name: 'delivery_discount', fromJson: _parseStringToDouble)
  double? get deliveryDiscount;
  @override
  @JsonKey(name: 'delivery_radius', fromJson: _parseDouble)
  double? get deliveryRadius;
  @override
  @JsonKey(fromJson: _boolFromInt)
  bool? get status;
  @override
  @JsonKey(name: 'go_home')
  dynamic get goHome;
  @override
  @JsonKey(name: 'self_destruction')
  dynamic get selfDestruction;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'average_rating', fromJson: _parseDouble)
  double? get averageRating;
  @override
  @JsonKey(name: 'ratings_count')
  int? get ratingsCount;
  @override
  @JsonKey(fromJson: _imagesFromJson)
  List<String>? get images;
  @override
  List<CartItemVariant>? get variants;
  @override
  Category? get category;
  @override
  UserModel? get user;
  @override
  UserModel? get owner;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;
  @override
  List<dynamic>? get ratings;
  @override
  @JsonKey(name: 'is_in_live_auction')
  bool? get isInLiveAuction;
  @override
  @JsonKey(name: 'live_auction')
  dynamic get liveAuction;

  /// Create a copy of CartItemProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemProductImplCopyWith<_$CartItemProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItemVariant _$CartItemVariantFromJson(Map<String, dynamic> json) {
  return _CartItemVariant.fromJson(json);
}

/// @nodoc
mixin _$CartItemVariant {
  int? get id => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  dynamic get attributes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;

  /// Serializes this CartItemVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemVariantCopyWith<CartItemVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemVariantCopyWith<$Res> {
  factory $CartItemVariantCopyWith(
          CartItemVariant value, $Res Function(CartItemVariant) then) =
      _$CartItemVariantCopyWithImpl<$Res, CartItemVariant>;
  @useResult
  $Res call(
      {int? id,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int? stock,
      dynamic attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class _$CartItemVariantCopyWithImpl<$Res, $Val extends CartItemVariant>
    implements $CartItemVariantCopyWith<$Res> {
  _$CartItemVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemVariantImplCopyWith<$Res>
    implements $CartItemVariantCopyWith<$Res> {
  factory _$$CartItemVariantImplCopyWith(_$CartItemVariantImpl value,
          $Res Function(_$CartItemVariantImpl) then) =
      __$$CartItemVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? sku,
      @JsonKey(fromJson: _parseDouble) double? price,
      int? stock,
      dynamic attributes,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class __$$CartItemVariantImplCopyWithImpl<$Res>
    extends _$CartItemVariantCopyWithImpl<$Res, _$CartItemVariantImpl>
    implements _$$CartItemVariantImplCopyWith<$Res> {
  __$$CartItemVariantImplCopyWithImpl(
      _$CartItemVariantImpl _value, $Res Function(_$CartItemVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? attributes = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$CartItemVariantImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemVariantImpl implements _CartItemVariant {
  const _$CartItemVariantImpl(
      {this.id,
      this.sku,
      @JsonKey(fromJson: _parseDouble) this.price,
      this.stock,
      this.attributes,
      @JsonKey(fromJson: _parseDouble) this.discount,
      @JsonKey(name: 'discount_type') this.discountType});

  factory _$CartItemVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemVariantImplFromJson(json);

  @override
  final int? id;
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
  String toString() {
    return 'CartItemVariant(id: $id, sku: $sku, price: $price, stock: $stock, attributes: $attributes, discount: $discount, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sku, price, stock,
      const DeepCollectionEquality().hash(attributes), discount, discountType);

  /// Create a copy of CartItemVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemVariantImplCopyWith<_$CartItemVariantImpl> get copyWith =>
      __$$CartItemVariantImplCopyWithImpl<_$CartItemVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemVariantImplToJson(
      this,
    );
  }
}

abstract class _CartItemVariant implements CartItemVariant {
  const factory _CartItemVariant(
          {final int? id,
          final String? sku,
          @JsonKey(fromJson: _parseDouble) final double? price,
          final int? stock,
          final dynamic attributes,
          @JsonKey(fromJson: _parseDouble) final double? discount,
          @JsonKey(name: 'discount_type') final String? discountType}) =
      _$CartItemVariantImpl;

  factory _CartItemVariant.fromJson(Map<String, dynamic> json) =
      _$CartItemVariantImpl.fromJson;

  @override
  int? get id;
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

  /// Create a copy of CartItemVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemVariantImplCopyWith<_$CartItemVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _boolFromInt)
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      String? type,
      String? icon,
      String? description,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
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
      @JsonKey(fromJson: _boolFromInt) bool? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
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
    return _then(_$CategoryImpl(
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
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      this.type,
      this.icon,
      this.description,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(fromJson: _boolFromInt) this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

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
  @JsonKey(fromJson: _boolFromInt)
  final bool? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Category(id: $id, parentId: $parentId, name: $name, type: $type, icon: $icon, description: $description, userId: $userId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
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

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {final int? id,
      @JsonKey(name: 'parent_id') final int? parentId,
      final String? name,
      final String? type,
      final String? icon,
      final String? description,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(fromJson: _boolFromInt) final bool? status,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

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
  @JsonKey(fromJson: _boolFromInt)
  bool? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;

  /// Serializes this Business to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call({int? id, @JsonKey(name: 'company_name') String? companyName});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessImplCopyWith<$Res>
    implements $BusinessCopyWith<$Res> {
  factory _$$BusinessImplCopyWith(
          _$BusinessImpl value, $Res Function(_$BusinessImpl) then) =
      __$$BusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, @JsonKey(name: 'company_name') String? companyName});
}

/// @nodoc
class __$$BusinessImplCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$BusinessImpl>
    implements _$$BusinessImplCopyWith<$Res> {
  __$$BusinessImplCopyWithImpl(
      _$BusinessImpl _value, $Res Function(_$BusinessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyName = freezed,
  }) {
    return _then(_$BusinessImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessImpl implements _Business {
  const _$BusinessImpl(
      {this.id, @JsonKey(name: 'company_name') this.companyName});

  factory _$BusinessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;

  @override
  String toString() {
    return 'Business(id: $id, companyName: $companyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyName);

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      __$$BusinessImplCopyWithImpl<_$BusinessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessImplToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
          {final int? id,
          @JsonKey(name: 'company_name') final String? companyName}) =
      _$BusinessImpl;

  factory _Business.fromJson(Map<String, dynamic> json) =
      _$BusinessImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return _Discount.fromJson(json);
}

/// @nodoc
mixin _$Discount {
  String? get kind => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get amount => throw _privateConstructorUsedError;
  DiscountMeta? get meta => throw _privateConstructorUsedError;

  /// Serializes this Discount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call(
      {String? kind,
      @JsonKey(fromJson: _parseDouble) double? amount,
      DiscountMeta? meta});

  $DiscountMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? amount = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DiscountMeta?,
    ) as $Val);
  }

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $DiscountMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
          _$DiscountImpl value, $Res Function(_$DiscountImpl) then) =
      __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kind,
      @JsonKey(fromJson: _parseDouble) double? amount,
      DiscountMeta? meta});

  @override
  $DiscountMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
      _$DiscountImpl _value, $Res Function(_$DiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? amount = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$DiscountImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DiscountMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountImpl implements _Discount {
  const _$DiscountImpl(
      {this.kind, @JsonKey(fromJson: _parseDouble) this.amount, this.meta});

  factory _$DiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountImplFromJson(json);

  @override
  final String? kind;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? amount;
  @override
  final DiscountMeta? meta;

  @override
  String toString() {
    return 'Discount(kind: $kind, amount: $amount, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kind, amount, meta);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountImplToJson(
      this,
    );
  }
}

abstract class _Discount implements Discount {
  const factory _Discount(
      {final String? kind,
      @JsonKey(fromJson: _parseDouble) final double? amount,
      final DiscountMeta? meta}) = _$DiscountImpl;

  factory _Discount.fromJson(Map<String, dynamic> json) =
      _$DiscountImpl.fromJson;

  @override
  String? get kind;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get amount;
  @override
  DiscountMeta? get meta;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountMeta _$DiscountMetaFromJson(Map<String, dynamic> json) {
  return _DiscountMeta.fromJson(json);
}

/// @nodoc
mixin _$DiscountMeta {
  @JsonKey(fromJson: _parseDouble)
  double? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'value_type')
  String? get valueType => throw _privateConstructorUsedError;

  /// Serializes this DiscountMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountMetaCopyWith<DiscountMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountMetaCopyWith<$Res> {
  factory $DiscountMetaCopyWith(
          DiscountMeta value, $Res Function(DiscountMeta) then) =
      _$DiscountMetaCopyWithImpl<$Res, DiscountMeta>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double? value,
      @JsonKey(name: 'value_type') String? valueType});
}

/// @nodoc
class _$DiscountMetaCopyWithImpl<$Res, $Val extends DiscountMeta>
    implements $DiscountMetaCopyWith<$Res> {
  _$DiscountMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? valueType = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountMetaImplCopyWith<$Res>
    implements $DiscountMetaCopyWith<$Res> {
  factory _$$DiscountMetaImplCopyWith(
          _$DiscountMetaImpl value, $Res Function(_$DiscountMetaImpl) then) =
      __$$DiscountMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double? value,
      @JsonKey(name: 'value_type') String? valueType});
}

/// @nodoc
class __$$DiscountMetaImplCopyWithImpl<$Res>
    extends _$DiscountMetaCopyWithImpl<$Res, _$DiscountMetaImpl>
    implements _$$DiscountMetaImplCopyWith<$Res> {
  __$$DiscountMetaImplCopyWithImpl(
      _$DiscountMetaImpl _value, $Res Function(_$DiscountMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? valueType = freezed,
  }) {
    return _then(_$DiscountMetaImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountMetaImpl implements _DiscountMeta {
  const _$DiscountMetaImpl(
      {@JsonKey(fromJson: _parseDouble) this.value,
      @JsonKey(name: 'value_type') this.valueType});

  factory _$DiscountMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountMetaImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseDouble)
  final double? value;
  @override
  @JsonKey(name: 'value_type')
  final String? valueType;

  @override
  String toString() {
    return 'DiscountMeta(value: $value, valueType: $valueType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountMetaImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, valueType);

  /// Create a copy of DiscountMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountMetaImplCopyWith<_$DiscountMetaImpl> get copyWith =>
      __$$DiscountMetaImplCopyWithImpl<_$DiscountMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountMetaImplToJson(
      this,
    );
  }
}

abstract class _DiscountMeta implements DiscountMeta {
  const factory _DiscountMeta(
          {@JsonKey(fromJson: _parseDouble) final double? value,
          @JsonKey(name: 'value_type') final String? valueType}) =
      _$DiscountMetaImpl;

  factory _DiscountMeta.fromJson(Map<String, dynamic> json) =
      _$DiscountMetaImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseDouble)
  double? get value;
  @override
  @JsonKey(name: 'value_type')
  String? get valueType;

  /// Create a copy of DiscountMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountMetaImplCopyWith<_$DiscountMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fulfillment _$FulfillmentFromJson(Map<String, dynamic> json) {
  return _Fulfillment.fromJson(json);
}

/// @nodoc
mixin _$Fulfillment {
  bool? get pickup => throw _privateConstructorUsedError;
  bool? get delivery => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this Fulfillment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fulfillment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FulfillmentCopyWith<Fulfillment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FulfillmentCopyWith<$Res> {
  factory $FulfillmentCopyWith(
          Fulfillment value, $Res Function(Fulfillment) then) =
      _$FulfillmentCopyWithImpl<$Res, Fulfillment>;
  @useResult
  $Res call({bool? pickup, bool? delivery, String? type});
}

/// @nodoc
class _$FulfillmentCopyWithImpl<$Res, $Val extends Fulfillment>
    implements $FulfillmentCopyWith<$Res> {
  _$FulfillmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fulfillment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FulfillmentImplCopyWith<$Res>
    implements $FulfillmentCopyWith<$Res> {
  factory _$$FulfillmentImplCopyWith(
          _$FulfillmentImpl value, $Res Function(_$FulfillmentImpl) then) =
      __$$FulfillmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? pickup, bool? delivery, String? type});
}

/// @nodoc
class __$$FulfillmentImplCopyWithImpl<$Res>
    extends _$FulfillmentCopyWithImpl<$Res, _$FulfillmentImpl>
    implements _$$FulfillmentImplCopyWith<$Res> {
  __$$FulfillmentImplCopyWithImpl(
      _$FulfillmentImpl _value, $Res Function(_$FulfillmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fulfillment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
    Object? type = freezed,
  }) {
    return _then(_$FulfillmentImpl(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FulfillmentImpl implements _Fulfillment {
  const _$FulfillmentImpl({this.pickup, this.delivery, this.type});

  factory _$FulfillmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FulfillmentImplFromJson(json);

  @override
  final bool? pickup;
  @override
  final bool? delivery;
  @override
  final String? type;

  @override
  String toString() {
    return 'Fulfillment(pickup: $pickup, delivery: $delivery, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FulfillmentImpl &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickup, delivery, type);

  /// Create a copy of Fulfillment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FulfillmentImplCopyWith<_$FulfillmentImpl> get copyWith =>
      __$$FulfillmentImplCopyWithImpl<_$FulfillmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FulfillmentImplToJson(
      this,
    );
  }
}

abstract class _Fulfillment implements Fulfillment {
  const factory _Fulfillment(
      {final bool? pickup,
      final bool? delivery,
      final String? type}) = _$FulfillmentImpl;

  factory _Fulfillment.fromJson(Map<String, dynamic> json) =
      _$FulfillmentImpl.fromJson;

  @override
  bool? get pickup;
  @override
  bool? get delivery;
  @override
  String? get type;

  /// Create a copy of Fulfillment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FulfillmentImplCopyWith<_$FulfillmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryAvailability _$DeliveryAvailabilityFromJson(Map<String, dynamic> json) {
  return _DeliveryAvailability.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAvailability {
  PickupDeliveryOption? get pickup => throw _privateConstructorUsedError;
  PickupDeliveryOption? get delivery => throw _privateConstructorUsedError;

  /// Serializes this DeliveryAvailability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAvailabilityCopyWith<DeliveryAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAvailabilityCopyWith<$Res> {
  factory $DeliveryAvailabilityCopyWith(DeliveryAvailability value,
          $Res Function(DeliveryAvailability) then) =
      _$DeliveryAvailabilityCopyWithImpl<$Res, DeliveryAvailability>;
  @useResult
  $Res call({PickupDeliveryOption? pickup, PickupDeliveryOption? delivery});

  $PickupDeliveryOptionCopyWith<$Res>? get pickup;
  $PickupDeliveryOptionCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$DeliveryAvailabilityCopyWithImpl<$Res,
        $Val extends DeliveryAvailability>
    implements $DeliveryAvailabilityCopyWith<$Res> {
  _$DeliveryAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_value.copyWith(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as PickupDeliveryOption?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as PickupDeliveryOption?,
    ) as $Val);
  }

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PickupDeliveryOptionCopyWith<$Res>? get pickup {
    if (_value.pickup == null) {
      return null;
    }

    return $PickupDeliveryOptionCopyWith<$Res>(_value.pickup!, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PickupDeliveryOptionCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $PickupDeliveryOptionCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryAvailabilityImplCopyWith<$Res>
    implements $DeliveryAvailabilityCopyWith<$Res> {
  factory _$$DeliveryAvailabilityImplCopyWith(_$DeliveryAvailabilityImpl value,
          $Res Function(_$DeliveryAvailabilityImpl) then) =
      __$$DeliveryAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PickupDeliveryOption? pickup, PickupDeliveryOption? delivery});

  @override
  $PickupDeliveryOptionCopyWith<$Res>? get pickup;
  @override
  $PickupDeliveryOptionCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$$DeliveryAvailabilityImplCopyWithImpl<$Res>
    extends _$DeliveryAvailabilityCopyWithImpl<$Res, _$DeliveryAvailabilityImpl>
    implements _$$DeliveryAvailabilityImplCopyWith<$Res> {
  __$$DeliveryAvailabilityImplCopyWithImpl(_$DeliveryAvailabilityImpl _value,
      $Res Function(_$DeliveryAvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_$DeliveryAvailabilityImpl(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as PickupDeliveryOption?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as PickupDeliveryOption?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryAvailabilityImpl implements _DeliveryAvailability {
  const _$DeliveryAvailabilityImpl({this.pickup, this.delivery});

  factory _$DeliveryAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryAvailabilityImplFromJson(json);

  @override
  final PickupDeliveryOption? pickup;
  @override
  final PickupDeliveryOption? delivery;

  @override
  String toString() {
    return 'DeliveryAvailability(pickup: $pickup, delivery: $delivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAvailabilityImpl &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickup, delivery);

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAvailabilityImplCopyWith<_$DeliveryAvailabilityImpl>
      get copyWith =>
          __$$DeliveryAvailabilityImplCopyWithImpl<_$DeliveryAvailabilityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryAvailabilityImplToJson(
      this,
    );
  }
}

abstract class _DeliveryAvailability implements DeliveryAvailability {
  const factory _DeliveryAvailability(
      {final PickupDeliveryOption? pickup,
      final PickupDeliveryOption? delivery}) = _$DeliveryAvailabilityImpl;

  factory _DeliveryAvailability.fromJson(Map<String, dynamic> json) =
      _$DeliveryAvailabilityImpl.fromJson;

  @override
  PickupDeliveryOption? get pickup;
  @override
  PickupDeliveryOption? get delivery;

  /// Create a copy of DeliveryAvailability
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAvailabilityImplCopyWith<_$DeliveryAvailabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PickupDeliveryOption _$PickupDeliveryOptionFromJson(Map<String, dynamic> json) {
  return _PickupDeliveryOption.fromJson(json);
}

/// @nodoc
mixin _$PickupDeliveryOption {
  bool? get available => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this PickupDeliveryOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PickupDeliveryOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PickupDeliveryOptionCopyWith<PickupDeliveryOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupDeliveryOptionCopyWith<$Res> {
  factory $PickupDeliveryOptionCopyWith(PickupDeliveryOption value,
          $Res Function(PickupDeliveryOption) then) =
      _$PickupDeliveryOptionCopyWithImpl<$Res, PickupDeliveryOption>;
  @useResult
  $Res call({bool? available, String? reason});
}

/// @nodoc
class _$PickupDeliveryOptionCopyWithImpl<$Res,
        $Val extends PickupDeliveryOption>
    implements $PickupDeliveryOptionCopyWith<$Res> {
  _$PickupDeliveryOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickupDeliveryOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickupDeliveryOptionImplCopyWith<$Res>
    implements $PickupDeliveryOptionCopyWith<$Res> {
  factory _$$PickupDeliveryOptionImplCopyWith(_$PickupDeliveryOptionImpl value,
          $Res Function(_$PickupDeliveryOptionImpl) then) =
      __$$PickupDeliveryOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? available, String? reason});
}

/// @nodoc
class __$$PickupDeliveryOptionImplCopyWithImpl<$Res>
    extends _$PickupDeliveryOptionCopyWithImpl<$Res, _$PickupDeliveryOptionImpl>
    implements _$$PickupDeliveryOptionImplCopyWith<$Res> {
  __$$PickupDeliveryOptionImplCopyWithImpl(_$PickupDeliveryOptionImpl _value,
      $Res Function(_$PickupDeliveryOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickupDeliveryOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$PickupDeliveryOptionImpl(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickupDeliveryOptionImpl implements _PickupDeliveryOption {
  const _$PickupDeliveryOptionImpl({this.available, this.reason});

  factory _$PickupDeliveryOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupDeliveryOptionImplFromJson(json);

  @override
  final bool? available;
  @override
  final String? reason;

  @override
  String toString() {
    return 'PickupDeliveryOption(available: $available, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupDeliveryOptionImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, available, reason);

  /// Create a copy of PickupDeliveryOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupDeliveryOptionImplCopyWith<_$PickupDeliveryOptionImpl>
      get copyWith =>
          __$$PickupDeliveryOptionImplCopyWithImpl<_$PickupDeliveryOptionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupDeliveryOptionImplToJson(
      this,
    );
  }
}

abstract class _PickupDeliveryOption implements PickupDeliveryOption {
  const factory _PickupDeliveryOption(
      {final bool? available,
      final String? reason}) = _$PickupDeliveryOptionImpl;

  factory _PickupDeliveryOption.fromJson(Map<String, dynamic> json) =
      _$PickupDeliveryOptionImpl.fromJson;

  @override
  bool? get available;
  @override
  String? get reason;

  /// Create a copy of PickupDeliveryOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickupDeliveryOptionImplCopyWith<_$PickupDeliveryOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CheckoutTotals _$CheckoutTotalsFromJson(Map<String, dynamic> json) {
  return _CheckoutTotals.fromJson(json);
}

/// @nodoc
mixin _$CheckoutTotals {
  GrandTotal? get pickup => throw _privateConstructorUsedError;
  GrandTotal? get delivery => throw _privateConstructorUsedError;

  /// Serializes this CheckoutTotals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutTotalsCopyWith<CheckoutTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutTotalsCopyWith<$Res> {
  factory $CheckoutTotalsCopyWith(
          CheckoutTotals value, $Res Function(CheckoutTotals) then) =
      _$CheckoutTotalsCopyWithImpl<$Res, CheckoutTotals>;
  @useResult
  $Res call({GrandTotal? pickup, GrandTotal? delivery});

  $GrandTotalCopyWith<$Res>? get pickup;
  $GrandTotalCopyWith<$Res>? get delivery;
}

/// @nodoc
class _$CheckoutTotalsCopyWithImpl<$Res, $Val extends CheckoutTotals>
    implements $CheckoutTotalsCopyWith<$Res> {
  _$CheckoutTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_value.copyWith(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
    ) as $Val);
  }

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrandTotalCopyWith<$Res>? get pickup {
    if (_value.pickup == null) {
      return null;
    }

    return $GrandTotalCopyWith<$Res>(_value.pickup!, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrandTotalCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $GrandTotalCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutTotalsImplCopyWith<$Res>
    implements $CheckoutTotalsCopyWith<$Res> {
  factory _$$CheckoutTotalsImplCopyWith(_$CheckoutTotalsImpl value,
          $Res Function(_$CheckoutTotalsImpl) then) =
      __$$CheckoutTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GrandTotal? pickup, GrandTotal? delivery});

  @override
  $GrandTotalCopyWith<$Res>? get pickup;
  @override
  $GrandTotalCopyWith<$Res>? get delivery;
}

/// @nodoc
class __$$CheckoutTotalsImplCopyWithImpl<$Res>
    extends _$CheckoutTotalsCopyWithImpl<$Res, _$CheckoutTotalsImpl>
    implements _$$CheckoutTotalsImplCopyWith<$Res> {
  __$$CheckoutTotalsImplCopyWithImpl(
      _$CheckoutTotalsImpl _value, $Res Function(_$CheckoutTotalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickup = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_$CheckoutTotalsImpl(
      pickup: freezed == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutTotalsImpl implements _CheckoutTotals {
  const _$CheckoutTotalsImpl({this.pickup, this.delivery});

  factory _$CheckoutTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutTotalsImplFromJson(json);

  @override
  final GrandTotal? pickup;
  @override
  final GrandTotal? delivery;

  @override
  String toString() {
    return 'CheckoutTotals(pickup: $pickup, delivery: $delivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutTotalsImpl &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickup, delivery);

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutTotalsImplCopyWith<_$CheckoutTotalsImpl> get copyWith =>
      __$$CheckoutTotalsImplCopyWithImpl<_$CheckoutTotalsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutTotalsImplToJson(
      this,
    );
  }
}

abstract class _CheckoutTotals implements CheckoutTotals {
  const factory _CheckoutTotals(
      {final GrandTotal? pickup,
      final GrandTotal? delivery}) = _$CheckoutTotalsImpl;

  factory _CheckoutTotals.fromJson(Map<String, dynamic> json) =
      _$CheckoutTotalsImpl.fromJson;

  @override
  GrandTotal? get pickup;
  @override
  GrandTotal? get delivery;

  /// Create a copy of CheckoutTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutTotalsImplCopyWith<_$CheckoutTotalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrandTotal _$GrandTotalFromJson(Map<String, dynamic> json) {
  return _GrandTotal.fromJson(json);
}

/// @nodoc
mixin _$GrandTotal {
  GrandTotalDetails? get grand => throw _privateConstructorUsedError;

  /// Serializes this GrandTotal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrandTotalCopyWith<GrandTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrandTotalCopyWith<$Res> {
  factory $GrandTotalCopyWith(
          GrandTotal value, $Res Function(GrandTotal) then) =
      _$GrandTotalCopyWithImpl<$Res, GrandTotal>;
  @useResult
  $Res call({GrandTotalDetails? grand});

  $GrandTotalDetailsCopyWith<$Res>? get grand;
}

/// @nodoc
class _$GrandTotalCopyWithImpl<$Res, $Val extends GrandTotal>
    implements $GrandTotalCopyWith<$Res> {
  _$GrandTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grand = freezed,
  }) {
    return _then(_value.copyWith(
      grand: freezed == grand
          ? _value.grand
          : grand // ignore: cast_nullable_to_non_nullable
              as GrandTotalDetails?,
    ) as $Val);
  }

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GrandTotalDetailsCopyWith<$Res>? get grand {
    if (_value.grand == null) {
      return null;
    }

    return $GrandTotalDetailsCopyWith<$Res>(_value.grand!, (value) {
      return _then(_value.copyWith(grand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GrandTotalImplCopyWith<$Res>
    implements $GrandTotalCopyWith<$Res> {
  factory _$$GrandTotalImplCopyWith(
          _$GrandTotalImpl value, $Res Function(_$GrandTotalImpl) then) =
      __$$GrandTotalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GrandTotalDetails? grand});

  @override
  $GrandTotalDetailsCopyWith<$Res>? get grand;
}

/// @nodoc
class __$$GrandTotalImplCopyWithImpl<$Res>
    extends _$GrandTotalCopyWithImpl<$Res, _$GrandTotalImpl>
    implements _$$GrandTotalImplCopyWith<$Res> {
  __$$GrandTotalImplCopyWithImpl(
      _$GrandTotalImpl _value, $Res Function(_$GrandTotalImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grand = freezed,
  }) {
    return _then(_$GrandTotalImpl(
      grand: freezed == grand
          ? _value.grand
          : grand // ignore: cast_nullable_to_non_nullable
              as GrandTotalDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrandTotalImpl implements _GrandTotal {
  const _$GrandTotalImpl({this.grand});

  factory _$GrandTotalImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrandTotalImplFromJson(json);

  @override
  final GrandTotalDetails? grand;

  @override
  String toString() {
    return 'GrandTotal(grand: $grand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrandTotalImpl &&
            (identical(other.grand, grand) || other.grand == grand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grand);

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrandTotalImplCopyWith<_$GrandTotalImpl> get copyWith =>
      __$$GrandTotalImplCopyWithImpl<_$GrandTotalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrandTotalImplToJson(
      this,
    );
  }
}

abstract class _GrandTotal implements GrandTotal {
  const factory _GrandTotal({final GrandTotalDetails? grand}) =
      _$GrandTotalImpl;

  factory _GrandTotal.fromJson(Map<String, dynamic> json) =
      _$GrandTotalImpl.fromJson;

  @override
  GrandTotalDetails? get grand;

  /// Create a copy of GrandTotal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrandTotalImplCopyWith<_$GrandTotalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GrandTotalDetails _$GrandTotalDetailsFromJson(Map<String, dynamic> json) {
  return _GrandTotalDetails.fromJson(json);
}

/// @nodoc
mixin _$GrandTotalDetails {
  @JsonKey(name: 'final', fromJson: _parseDouble)
  double? get finalValue => throw _privateConstructorUsedError;

  /// Serializes this GrandTotalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GrandTotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GrandTotalDetailsCopyWith<GrandTotalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrandTotalDetailsCopyWith<$Res> {
  factory $GrandTotalDetailsCopyWith(
          GrandTotalDetails value, $Res Function(GrandTotalDetails) then) =
      _$GrandTotalDetailsCopyWithImpl<$Res, GrandTotalDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue});
}

/// @nodoc
class _$GrandTotalDetailsCopyWithImpl<$Res, $Val extends GrandTotalDetails>
    implements $GrandTotalDetailsCopyWith<$Res> {
  _$GrandTotalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GrandTotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalValue = freezed,
  }) {
    return _then(_value.copyWith(
      finalValue: freezed == finalValue
          ? _value.finalValue
          : finalValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrandTotalDetailsImplCopyWith<$Res>
    implements $GrandTotalDetailsCopyWith<$Res> {
  factory _$$GrandTotalDetailsImplCopyWith(_$GrandTotalDetailsImpl value,
          $Res Function(_$GrandTotalDetailsImpl) then) =
      __$$GrandTotalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue});
}

/// @nodoc
class __$$GrandTotalDetailsImplCopyWithImpl<$Res>
    extends _$GrandTotalDetailsCopyWithImpl<$Res, _$GrandTotalDetailsImpl>
    implements _$$GrandTotalDetailsImplCopyWith<$Res> {
  __$$GrandTotalDetailsImplCopyWithImpl(_$GrandTotalDetailsImpl _value,
      $Res Function(_$GrandTotalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GrandTotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finalValue = freezed,
  }) {
    return _then(_$GrandTotalDetailsImpl(
      finalValue: freezed == finalValue
          ? _value.finalValue
          : finalValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrandTotalDetailsImpl implements _GrandTotalDetails {
  const _$GrandTotalDetailsImpl(
      {@JsonKey(name: 'final', fromJson: _parseDouble) this.finalValue});

  factory _$GrandTotalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrandTotalDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'final', fromJson: _parseDouble)
  final double? finalValue;

  @override
  String toString() {
    return 'GrandTotalDetails(finalValue: $finalValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrandTotalDetailsImpl &&
            (identical(other.finalValue, finalValue) ||
                other.finalValue == finalValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finalValue);

  /// Create a copy of GrandTotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GrandTotalDetailsImplCopyWith<_$GrandTotalDetailsImpl> get copyWith =>
      __$$GrandTotalDetailsImplCopyWithImpl<_$GrandTotalDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrandTotalDetailsImplToJson(
      this,
    );
  }
}

abstract class _GrandTotalDetails implements GrandTotalDetails {
  const factory _GrandTotalDetails(
      {@JsonKey(name: 'final', fromJson: _parseDouble)
      final double? finalValue}) = _$GrandTotalDetailsImpl;

  factory _GrandTotalDetails.fromJson(Map<String, dynamic> json) =
      _$GrandTotalDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'final', fromJson: _parseDouble)
  double? get finalValue;

  /// Create a copy of GrandTotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GrandTotalDetailsImplCopyWith<_$GrandTotalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Totals _$TotalsFromJson(Map<String, dynamic> json) {
  return _Totals.fromJson(json);
}

/// @nodoc
mixin _$Totals {
  TotalDetails? get items => throw _privateConstructorUsedError;
  TotalDetails? get delivery => throw _privateConstructorUsedError;
  TotalDetails? get grand => throw _privateConstructorUsedError;

  /// Serializes this Totals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalsCopyWith<Totals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalsCopyWith<$Res> {
  factory $TotalsCopyWith(Totals value, $Res Function(Totals) then) =
      _$TotalsCopyWithImpl<$Res, Totals>;
  @useResult
  $Res call({TotalDetails? items, TotalDetails? delivery, TotalDetails? grand});

  $TotalDetailsCopyWith<$Res>? get items;
  $TotalDetailsCopyWith<$Res>? get delivery;
  $TotalDetailsCopyWith<$Res>? get grand;
}

/// @nodoc
class _$TotalsCopyWithImpl<$Res, $Val extends Totals>
    implements $TotalsCopyWith<$Res> {
  _$TotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? delivery = freezed,
    Object? grand = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
      grand: freezed == grand
          ? _value.grand
          : grand // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
    ) as $Val);
  }

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalDetailsCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $TotalDetailsCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalDetailsCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $TotalDetailsCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalDetailsCopyWith<$Res>? get grand {
    if (_value.grand == null) {
      return null;
    }

    return $TotalDetailsCopyWith<$Res>(_value.grand!, (value) {
      return _then(_value.copyWith(grand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TotalsImplCopyWith<$Res> implements $TotalsCopyWith<$Res> {
  factory _$$TotalsImplCopyWith(
          _$TotalsImpl value, $Res Function(_$TotalsImpl) then) =
      __$$TotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TotalDetails? items, TotalDetails? delivery, TotalDetails? grand});

  @override
  $TotalDetailsCopyWith<$Res>? get items;
  @override
  $TotalDetailsCopyWith<$Res>? get delivery;
  @override
  $TotalDetailsCopyWith<$Res>? get grand;
}

/// @nodoc
class __$$TotalsImplCopyWithImpl<$Res>
    extends _$TotalsCopyWithImpl<$Res, _$TotalsImpl>
    implements _$$TotalsImplCopyWith<$Res> {
  __$$TotalsImplCopyWithImpl(
      _$TotalsImpl _value, $Res Function(_$TotalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? delivery = freezed,
    Object? grand = freezed,
  }) {
    return _then(_$TotalsImpl(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
      grand: freezed == grand
          ? _value.grand
          : grand // ignore: cast_nullable_to_non_nullable
              as TotalDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalsImpl implements _Totals {
  const _$TotalsImpl({this.items, this.delivery, this.grand});

  factory _$TotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalsImplFromJson(json);

  @override
  final TotalDetails? items;
  @override
  final TotalDetails? delivery;
  @override
  final TotalDetails? grand;

  @override
  String toString() {
    return 'Totals(items: $items, delivery: $delivery, grand: $grand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalsImpl &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.grand, grand) || other.grand == grand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, items, delivery, grand);

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalsImplCopyWith<_$TotalsImpl> get copyWith =>
      __$$TotalsImplCopyWithImpl<_$TotalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalsImplToJson(
      this,
    );
  }
}

abstract class _Totals implements Totals {
  const factory _Totals(
      {final TotalDetails? items,
      final TotalDetails? delivery,
      final TotalDetails? grand}) = _$TotalsImpl;

  factory _Totals.fromJson(Map<String, dynamic> json) = _$TotalsImpl.fromJson;

  @override
  TotalDetails? get items;
  @override
  TotalDetails? get delivery;
  @override
  TotalDetails? get grand;

  /// Create a copy of Totals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalsImplCopyWith<_$TotalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalDetails _$TotalDetailsFromJson(Map<String, dynamic> json) {
  return _TotalDetails.fromJson(json);
}

/// @nodoc
mixin _$TotalDetails {
  @JsonKey(fromJson: _parseDouble)
  double? get original => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseDouble)
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'final', fromJson: _parseDouble)
  double? get finalValue => throw _privateConstructorUsedError;

  /// Serializes this TotalDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalDetailsCopyWith<TotalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalDetailsCopyWith<$Res> {
  factory $TotalDetailsCopyWith(
          TotalDetails value, $Res Function(TotalDetails) then) =
      _$TotalDetailsCopyWithImpl<$Res, TotalDetails>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double? original,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue});
}

/// @nodoc
class _$TotalDetailsCopyWithImpl<$Res, $Val extends TotalDetails>
    implements $TotalDetailsCopyWith<$Res> {
  _$TotalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? discount = freezed,
    Object? finalValue = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      finalValue: freezed == finalValue
          ? _value.finalValue
          : finalValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalDetailsImplCopyWith<$Res>
    implements $TotalDetailsCopyWith<$Res> {
  factory _$$TotalDetailsImplCopyWith(
          _$TotalDetailsImpl value, $Res Function(_$TotalDetailsImpl) then) =
      __$$TotalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseDouble) double? original,
      @JsonKey(fromJson: _parseDouble) double? discount,
      @JsonKey(name: 'final', fromJson: _parseDouble) double? finalValue});
}

/// @nodoc
class __$$TotalDetailsImplCopyWithImpl<$Res>
    extends _$TotalDetailsCopyWithImpl<$Res, _$TotalDetailsImpl>
    implements _$$TotalDetailsImplCopyWith<$Res> {
  __$$TotalDetailsImplCopyWithImpl(
      _$TotalDetailsImpl _value, $Res Function(_$TotalDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? discount = freezed,
    Object? finalValue = freezed,
  }) {
    return _then(_$TotalDetailsImpl(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      finalValue: freezed == finalValue
          ? _value.finalValue
          : finalValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalDetailsImpl implements _TotalDetails {
  const _$TotalDetailsImpl(
      {@JsonKey(fromJson: _parseDouble) this.original,
      @JsonKey(fromJson: _parseDouble) this.discount,
      @JsonKey(name: 'final', fromJson: _parseDouble) this.finalValue});

  factory _$TotalDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalDetailsImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseDouble)
  final double? original;
  @override
  @JsonKey(fromJson: _parseDouble)
  final double? discount;
  @override
  @JsonKey(name: 'final', fromJson: _parseDouble)
  final double? finalValue;

  @override
  String toString() {
    return 'TotalDetails(original: $original, discount: $discount, finalValue: $finalValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalDetailsImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalValue, finalValue) ||
                other.finalValue == finalValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, discount, finalValue);

  /// Create a copy of TotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalDetailsImplCopyWith<_$TotalDetailsImpl> get copyWith =>
      __$$TotalDetailsImplCopyWithImpl<_$TotalDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalDetailsImplToJson(
      this,
    );
  }
}

abstract class _TotalDetails implements TotalDetails {
  const factory _TotalDetails(
      {@JsonKey(fromJson: _parseDouble) final double? original,
      @JsonKey(fromJson: _parseDouble) final double? discount,
      @JsonKey(name: 'final', fromJson: _parseDouble)
      final double? finalValue}) = _$TotalDetailsImpl;

  factory _TotalDetails.fromJson(Map<String, dynamic> json) =
      _$TotalDetailsImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseDouble)
  double? get original;
  @override
  @JsonKey(fromJson: _parseDouble)
  double? get discount;
  @override
  @JsonKey(name: 'final', fromJson: _parseDouble)
  double? get finalValue;

  /// Create a copy of TotalDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalDetailsImplCopyWith<_$TotalDetailsImpl> get copyWith =>
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
