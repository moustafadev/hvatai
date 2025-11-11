// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreamProductsResponseModel _$StreamProductsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _StreamProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StreamProductsResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  StreamProductsDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this StreamProductsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamProductsResponseModelCopyWith<StreamProductsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamProductsResponseModelCopyWith<$Res> {
  factory $StreamProductsResponseModelCopyWith(
          StreamProductsResponseModel value,
          $Res Function(StreamProductsResponseModel) then) =
      _$StreamProductsResponseModelCopyWithImpl<$Res,
          StreamProductsResponseModel>;
  @useResult
  $Res call({bool? success, String? message, StreamProductsDataModel? data});

  $StreamProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$StreamProductsResponseModelCopyWithImpl<$Res,
        $Val extends StreamProductsResponseModel>
    implements $StreamProductsResponseModelCopyWith<$Res> {
  _$StreamProductsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamProductsDataModel?,
    ) as $Val);
  }

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamProductsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StreamProductsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamProductsResponseModelImplCopyWith<$Res>
    implements $StreamProductsResponseModelCopyWith<$Res> {
  factory _$$StreamProductsResponseModelImplCopyWith(
          _$StreamProductsResponseModelImpl value,
          $Res Function(_$StreamProductsResponseModelImpl) then) =
      __$$StreamProductsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, StreamProductsDataModel? data});

  @override
  $StreamProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StreamProductsResponseModelImplCopyWithImpl<$Res>
    extends _$StreamProductsResponseModelCopyWithImpl<$Res,
        _$StreamProductsResponseModelImpl>
    implements _$$StreamProductsResponseModelImplCopyWith<$Res> {
  __$$StreamProductsResponseModelImplCopyWithImpl(
      _$StreamProductsResponseModelImpl _value,
      $Res Function(_$StreamProductsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$StreamProductsResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamProductsDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamProductsResponseModelImpl
    implements _StreamProductsResponseModel {
  const _$StreamProductsResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$StreamProductsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StreamProductsResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final StreamProductsDataModel? data;

  @override
  String toString() {
    return 'StreamProductsResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamProductsResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamProductsResponseModelImplCopyWith<_$StreamProductsResponseModelImpl>
      get copyWith => __$$StreamProductsResponseModelImplCopyWithImpl<
          _$StreamProductsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamProductsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _StreamProductsResponseModel
    implements StreamProductsResponseModel {
  const factory _StreamProductsResponseModel(
      {final bool? success,
      final String? message,
      final StreamProductsDataModel? data}) = _$StreamProductsResponseModelImpl;

  factory _StreamProductsResponseModel.fromJson(Map<String, dynamic> json) =
      _$StreamProductsResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  StreamProductsDataModel? get data;

  /// Create a copy of StreamProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamProductsResponseModelImplCopyWith<_$StreamProductsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamProductsDataModel _$StreamProductsDataModelFromJson(
    Map<String, dynamic> json) {
  return _StreamProductsDataModel.fromJson(json);
}

/// @nodoc
mixin _$StreamProductsDataModel {
  StreamDataModel? get stream => throw _privateConstructorUsedError;
  List<StreamProductItemModel> get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_products')
  int get totalProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_products')
  int get activeProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'biddable_products')
  int get biddableProducts => throw _privateConstructorUsedError;

  /// Serializes this StreamProductsDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamProductsDataModelCopyWith<StreamProductsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamProductsDataModelCopyWith<$Res> {
  factory $StreamProductsDataModelCopyWith(StreamProductsDataModel value,
          $Res Function(StreamProductsDataModel) then) =
      _$StreamProductsDataModelCopyWithImpl<$Res, StreamProductsDataModel>;
  @useResult
  $Res call(
      {StreamDataModel? stream,
      List<StreamProductItemModel> products,
      @JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'biddable_products') int biddableProducts});

  $StreamDataModelCopyWith<$Res>? get stream;
}

/// @nodoc
class _$StreamProductsDataModelCopyWithImpl<$Res,
        $Val extends StreamProductsDataModel>
    implements $StreamProductsDataModelCopyWith<$Res> {
  _$StreamProductsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = freezed,
    Object? products = null,
    Object? totalProducts = null,
    Object? activeProducts = null,
    Object? biddableProducts = null,
  }) {
    return _then(_value.copyWith(
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StreamProductItemModel>,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      activeProducts: null == activeProducts
          ? _value.activeProducts
          : activeProducts // ignore: cast_nullable_to_non_nullable
              as int,
      biddableProducts: null == biddableProducts
          ? _value.biddableProducts
          : biddableProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamDataModelCopyWith<$Res>? get stream {
    if (_value.stream == null) {
      return null;
    }

    return $StreamDataModelCopyWith<$Res>(_value.stream!, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamProductsDataModelImplCopyWith<$Res>
    implements $StreamProductsDataModelCopyWith<$Res> {
  factory _$$StreamProductsDataModelImplCopyWith(
          _$StreamProductsDataModelImpl value,
          $Res Function(_$StreamProductsDataModelImpl) then) =
      __$$StreamProductsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StreamDataModel? stream,
      List<StreamProductItemModel> products,
      @JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'biddable_products') int biddableProducts});

  @override
  $StreamDataModelCopyWith<$Res>? get stream;
}

/// @nodoc
class __$$StreamProductsDataModelImplCopyWithImpl<$Res>
    extends _$StreamProductsDataModelCopyWithImpl<$Res,
        _$StreamProductsDataModelImpl>
    implements _$$StreamProductsDataModelImplCopyWith<$Res> {
  __$$StreamProductsDataModelImplCopyWithImpl(
      _$StreamProductsDataModelImpl _value,
      $Res Function(_$StreamProductsDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = freezed,
    Object? products = null,
    Object? totalProducts = null,
    Object? activeProducts = null,
    Object? biddableProducts = null,
  }) {
    return _then(_$StreamProductsDataModelImpl(
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<StreamProductItemModel>,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      activeProducts: null == activeProducts
          ? _value.activeProducts
          : activeProducts // ignore: cast_nullable_to_non_nullable
              as int,
      biddableProducts: null == biddableProducts
          ? _value.biddableProducts
          : biddableProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamProductsDataModelImpl implements _StreamProductsDataModel {
  const _$StreamProductsDataModelImpl(
      {this.stream,
      final List<StreamProductItemModel> products = const [],
      @JsonKey(name: 'total_products') this.totalProducts = 0,
      @JsonKey(name: 'active_products') this.activeProducts = 0,
      @JsonKey(name: 'biddable_products') this.biddableProducts = 0})
      : _products = products;

  factory _$StreamProductsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamProductsDataModelImplFromJson(json);

  @override
  final StreamDataModel? stream;
  final List<StreamProductItemModel> _products;
  @override
  @JsonKey()
  List<StreamProductItemModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'total_products')
  final int totalProducts;
  @override
  @JsonKey(name: 'active_products')
  final int activeProducts;
  @override
  @JsonKey(name: 'biddable_products')
  final int biddableProducts;

  @override
  String toString() {
    return 'StreamProductsDataModel(stream: $stream, products: $products, totalProducts: $totalProducts, activeProducts: $activeProducts, biddableProducts: $biddableProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamProductsDataModelImpl &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.activeProducts, activeProducts) ||
                other.activeProducts == activeProducts) &&
            (identical(other.biddableProducts, biddableProducts) ||
                other.biddableProducts == biddableProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stream,
      const DeepCollectionEquality().hash(_products),
      totalProducts,
      activeProducts,
      biddableProducts);

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamProductsDataModelImplCopyWith<_$StreamProductsDataModelImpl>
      get copyWith => __$$StreamProductsDataModelImplCopyWithImpl<
          _$StreamProductsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamProductsDataModelImplToJson(
      this,
    );
  }
}

abstract class _StreamProductsDataModel implements StreamProductsDataModel {
  const factory _StreamProductsDataModel(
          {final StreamDataModel? stream,
          final List<StreamProductItemModel> products,
          @JsonKey(name: 'total_products') final int totalProducts,
          @JsonKey(name: 'active_products') final int activeProducts,
          @JsonKey(name: 'biddable_products') final int biddableProducts}) =
      _$StreamProductsDataModelImpl;

  factory _StreamProductsDataModel.fromJson(Map<String, dynamic> json) =
      _$StreamProductsDataModelImpl.fromJson;

  @override
  StreamDataModel? get stream;
  @override
  List<StreamProductItemModel> get products;
  @override
  @JsonKey(name: 'total_products')
  int get totalProducts;
  @override
  @JsonKey(name: 'active_products')
  int get activeProducts;
  @override
  @JsonKey(name: 'biddable_products')
  int get biddableProducts;

  /// Create a copy of StreamProductsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamProductsDataModelImplCopyWith<_$StreamProductsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamProductItemModel _$StreamProductItemModelFromJson(
    Map<String, dynamic> json) {
  return _StreamProductItemModel.fromJson(json);
}

/// @nodoc
mixin _$StreamProductItemModel {
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _productFromJson)
  ProductModel? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  double? get startingBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  double? get currentHighestBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_highest_bidder')
  Map<String, dynamic>? get currentHighestBidder =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bids')
  int get totalBids => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_bid')
  bool get canBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidding_enabled')
  bool get biddingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_at')
  DateTime? get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_session')
  Map<String, dynamic>? get bidSession => throw _privateConstructorUsedError;

  /// Serializes this StreamProductItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamProductItemModelCopyWith<StreamProductItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamProductItemModelCopyWith<$Res> {
  factory $StreamProductItemModelCopyWith(StreamProductItemModel value,
          $Res Function(StreamProductItemModel) then) =
      _$StreamProductItemModelCopyWithImpl<$Res, StreamProductItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(fromJson: _productFromJson) ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      double? currentHighestBid,
      @JsonKey(name: 'current_highest_bidder')
      Map<String, dynamic>? currentHighestBidder,
      @JsonKey(name: 'total_bids') int totalBids,
      @JsonKey(name: 'can_bid') bool canBid,
      @JsonKey(name: 'bidding_enabled') bool biddingEnabled,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'display_order') int displayOrder,
      @JsonKey(name: 'added_at') DateTime? addedAt,
      @JsonKey(name: 'bid_session') Map<String, dynamic>? bidSession});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$StreamProductItemModelCopyWithImpl<$Res,
        $Val extends StreamProductItemModel>
    implements $StreamProductItemModelCopyWith<$Res> {
  _$StreamProductItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamProductId = freezed,
    Object? product = freezed,
    Object? startingBid = freezed,
    Object? currentHighestBid = freezed,
    Object? currentHighestBidder = freezed,
    Object? totalBids = null,
    Object? canBid = null,
    Object? biddingEnabled = null,
    Object? isActive = null,
    Object? displayOrder = null,
    Object? addedAt = freezed,
    Object? bidSession = freezed,
  }) {
    return _then(_value.copyWith(
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      startingBid: freezed == startingBid
          ? _value.startingBid
          : startingBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBid: freezed == currentHighestBid
          ? _value.currentHighestBid
          : currentHighestBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBidder: freezed == currentHighestBidder
          ? _value.currentHighestBidder
          : currentHighestBidder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      totalBids: null == totalBids
          ? _value.totalBids
          : totalBids // ignore: cast_nullable_to_non_nullable
              as int,
      canBid: null == canBid
          ? _value.canBid
          : canBid // ignore: cast_nullable_to_non_nullable
              as bool,
      biddingEnabled: null == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamProductItemModelImplCopyWith<$Res>
    implements $StreamProductItemModelCopyWith<$Res> {
  factory _$$StreamProductItemModelImplCopyWith(
          _$StreamProductItemModelImpl value,
          $Res Function(_$StreamProductItemModelImpl) then) =
      __$$StreamProductItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(fromJson: _productFromJson) ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      double? currentHighestBid,
      @JsonKey(name: 'current_highest_bidder')
      Map<String, dynamic>? currentHighestBidder,
      @JsonKey(name: 'total_bids') int totalBids,
      @JsonKey(name: 'can_bid') bool canBid,
      @JsonKey(name: 'bidding_enabled') bool biddingEnabled,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'display_order') int displayOrder,
      @JsonKey(name: 'added_at') DateTime? addedAt,
      @JsonKey(name: 'bid_session') Map<String, dynamic>? bidSession});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$StreamProductItemModelImplCopyWithImpl<$Res>
    extends _$StreamProductItemModelCopyWithImpl<$Res,
        _$StreamProductItemModelImpl>
    implements _$$StreamProductItemModelImplCopyWith<$Res> {
  __$$StreamProductItemModelImplCopyWithImpl(
      _$StreamProductItemModelImpl _value,
      $Res Function(_$StreamProductItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamProductId = freezed,
    Object? product = freezed,
    Object? startingBid = freezed,
    Object? currentHighestBid = freezed,
    Object? currentHighestBidder = freezed,
    Object? totalBids = null,
    Object? canBid = null,
    Object? biddingEnabled = null,
    Object? isActive = null,
    Object? displayOrder = null,
    Object? addedAt = freezed,
    Object? bidSession = freezed,
  }) {
    return _then(_$StreamProductItemModelImpl(
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      startingBid: freezed == startingBid
          ? _value.startingBid
          : startingBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBid: freezed == currentHighestBid
          ? _value.currentHighestBid
          : currentHighestBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBidder: freezed == currentHighestBidder
          ? _value._currentHighestBidder
          : currentHighestBidder // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      totalBids: null == totalBids
          ? _value.totalBids
          : totalBids // ignore: cast_nullable_to_non_nullable
              as int,
      canBid: null == canBid
          ? _value.canBid
          : canBid // ignore: cast_nullable_to_non_nullable
              as bool,
      biddingEnabled: null == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidSession: freezed == bidSession
          ? _value._bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamProductItemModelImpl implements _StreamProductItemModel {
  const _$StreamProductItemModelImpl(
      {@JsonKey(name: 'stream_product_id') this.streamProductId,
      @JsonKey(fromJson: _productFromJson) this.product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble) this.startingBid,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      this.currentHighestBid,
      @JsonKey(name: 'current_highest_bidder')
      final Map<String, dynamic>? currentHighestBidder,
      @JsonKey(name: 'total_bids') this.totalBids = 0,
      @JsonKey(name: 'can_bid') this.canBid = false,
      @JsonKey(name: 'bidding_enabled') this.biddingEnabled = false,
      @JsonKey(name: 'is_active') this.isActive = false,
      @JsonKey(name: 'display_order') this.displayOrder = 0,
      @JsonKey(name: 'added_at') this.addedAt,
      @JsonKey(name: 'bid_session') final Map<String, dynamic>? bidSession})
      : _currentHighestBidder = currentHighestBidder,
        _bidSession = bidSession;

  factory _$StreamProductItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamProductItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'stream_product_id')
  final int? streamProductId;
  @override
  @JsonKey(fromJson: _productFromJson)
  final ProductModel? product;
  @override
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  final double? startingBid;
  @override
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  final double? currentHighestBid;
  final Map<String, dynamic>? _currentHighestBidder;
  @override
  @JsonKey(name: 'current_highest_bidder')
  Map<String, dynamic>? get currentHighestBidder {
    final value = _currentHighestBidder;
    if (value == null) return null;
    if (_currentHighestBidder is EqualUnmodifiableMapView)
      return _currentHighestBidder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'total_bids')
  final int totalBids;
  @override
  @JsonKey(name: 'can_bid')
  final bool canBid;
  @override
  @JsonKey(name: 'bidding_enabled')
  final bool biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'display_order')
  final int displayOrder;
  @override
  @JsonKey(name: 'added_at')
  final DateTime? addedAt;
  final Map<String, dynamic>? _bidSession;
  @override
  @JsonKey(name: 'bid_session')
  Map<String, dynamic>? get bidSession {
    final value = _bidSession;
    if (value == null) return null;
    if (_bidSession is EqualUnmodifiableMapView) return _bidSession;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StreamProductItemModel(streamProductId: $streamProductId, product: $product, startingBid: $startingBid, currentHighestBid: $currentHighestBid, currentHighestBidder: $currentHighestBidder, totalBids: $totalBids, canBid: $canBid, biddingEnabled: $biddingEnabled, isActive: $isActive, displayOrder: $displayOrder, addedAt: $addedAt, bidSession: $bidSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamProductItemModelImpl &&
            (identical(other.streamProductId, streamProductId) ||
                other.streamProductId == streamProductId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.startingBid, startingBid) ||
                other.startingBid == startingBid) &&
            (identical(other.currentHighestBid, currentHighestBid) ||
                other.currentHighestBid == currentHighestBid) &&
            const DeepCollectionEquality()
                .equals(other._currentHighestBidder, _currentHighestBidder) &&
            (identical(other.totalBids, totalBids) ||
                other.totalBids == totalBids) &&
            (identical(other.canBid, canBid) || other.canBid == canBid) &&
            (identical(other.biddingEnabled, biddingEnabled) ||
                other.biddingEnabled == biddingEnabled) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            const DeepCollectionEquality()
                .equals(other._bidSession, _bidSession));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      streamProductId,
      product,
      startingBid,
      currentHighestBid,
      const DeepCollectionEquality().hash(_currentHighestBidder),
      totalBids,
      canBid,
      biddingEnabled,
      isActive,
      displayOrder,
      addedAt,
      const DeepCollectionEquality().hash(_bidSession));

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamProductItemModelImplCopyWith<_$StreamProductItemModelImpl>
      get copyWith => __$$StreamProductItemModelImplCopyWithImpl<
          _$StreamProductItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamProductItemModelImplToJson(
      this,
    );
  }
}

abstract class _StreamProductItemModel implements StreamProductItemModel {
  const factory _StreamProductItemModel(
      {@JsonKey(name: 'stream_product_id') final int? streamProductId,
      @JsonKey(fromJson: _productFromJson) final ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      final double? startingBid,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      final double? currentHighestBid,
      @JsonKey(name: 'current_highest_bidder')
      final Map<String, dynamic>? currentHighestBidder,
      @JsonKey(name: 'total_bids') final int totalBids,
      @JsonKey(name: 'can_bid') final bool canBid,
      @JsonKey(name: 'bidding_enabled') final bool biddingEnabled,
      @JsonKey(name: 'is_active') final bool isActive,
      @JsonKey(name: 'display_order') final int displayOrder,
      @JsonKey(name: 'added_at') final DateTime? addedAt,
      @JsonKey(name: 'bid_session')
      final Map<String, dynamic>? bidSession}) = _$StreamProductItemModelImpl;

  factory _StreamProductItemModel.fromJson(Map<String, dynamic> json) =
      _$StreamProductItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId;
  @override
  @JsonKey(fromJson: _productFromJson)
  ProductModel? get product;
  @override
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  double? get startingBid;
  @override
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  double? get currentHighestBid;
  @override
  @JsonKey(name: 'current_highest_bidder')
  Map<String, dynamic>? get currentHighestBidder;
  @override
  @JsonKey(name: 'total_bids')
  int get totalBids;
  @override
  @JsonKey(name: 'can_bid')
  bool get canBid;
  @override
  @JsonKey(name: 'bidding_enabled')
  bool get biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'display_order')
  int get displayOrder;
  @override
  @JsonKey(name: 'added_at')
  DateTime? get addedAt;
  @override
  @JsonKey(name: 'bid_session')
  Map<String, dynamic>? get bidSession;

  /// Create a copy of StreamProductItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamProductItemModelImplCopyWith<_$StreamProductItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
