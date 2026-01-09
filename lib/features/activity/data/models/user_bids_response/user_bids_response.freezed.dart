// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bids_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBidsResponse _$UserBidsResponseFromJson(Map<String, dynamic> json) {
  return _UserBidsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserBidsResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserBidItem> get data => throw _privateConstructorUsedError;

  /// Serializes this UserBidsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBidsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBidsResponseCopyWith<UserBidsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidsResponseCopyWith<$Res> {
  factory $UserBidsResponseCopyWith(
          UserBidsResponse value, $Res Function(UserBidsResponse) then) =
      _$UserBidsResponseCopyWithImpl<$Res, UserBidsResponse>;
  @useResult
  $Res call({bool? success, String? message, List<UserBidItem> data});
}

/// @nodoc
class _$UserBidsResponseCopyWithImpl<$Res, $Val extends UserBidsResponse>
    implements $UserBidsResponseCopyWith<$Res> {
  _$UserBidsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBidsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBidsResponseImplCopyWith<$Res>
    implements $UserBidsResponseCopyWith<$Res> {
  factory _$$UserBidsResponseImplCopyWith(_$UserBidsResponseImpl value,
          $Res Function(_$UserBidsResponseImpl) then) =
      __$$UserBidsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, List<UserBidItem> data});
}

/// @nodoc
class __$$UserBidsResponseImplCopyWithImpl<$Res>
    extends _$UserBidsResponseCopyWithImpl<$Res, _$UserBidsResponseImpl>
    implements _$$UserBidsResponseImplCopyWith<$Res> {
  __$$UserBidsResponseImplCopyWithImpl(_$UserBidsResponseImpl _value,
      $Res Function(_$UserBidsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBidsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$UserBidsResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBidsResponseImpl implements _UserBidsResponse {
  const _$UserBidsResponseImpl(
      {this.success, this.message, final List<UserBidItem> data = const []})
      : _data = data;

  factory _$UserBidsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBidsResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<UserBidItem> _data;
  @override
  @JsonKey()
  List<UserBidItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserBidsResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBidsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of UserBidsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBidsResponseImplCopyWith<_$UserBidsResponseImpl> get copyWith =>
      __$$UserBidsResponseImplCopyWithImpl<_$UserBidsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBidsResponseImplToJson(
      this,
    );
  }
}

abstract class _UserBidsResponse implements UserBidsResponse {
  const factory _UserBidsResponse(
      {final bool? success,
      final String? message,
      final List<UserBidItem> data}) = _$UserBidsResponseImpl;

  factory _UserBidsResponse.fromJson(Map<String, dynamic> json) =
      _$UserBidsResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<UserBidItem> get data;

  /// Create a copy of UserBidsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBidsResponseImplCopyWith<_$UserBidsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBidItem _$UserBidItemFromJson(Map<String, dynamic> json) {
  return _UserBidItem.fromJson(json);
}

/// @nodoc
mixin _$UserBidItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_amount')
  double? get bidAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_ru')
  String? get statusRu => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_at')
  DateTime? get bidAt => throw _privateConstructorUsedError;
  UserBidStream? get stream => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  dynamic get order => throw _privateConstructorUsedError;

  /// Serializes this UserBidItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBidItemCopyWith<UserBidItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidItemCopyWith<$Res> {
  factory $UserBidItemCopyWith(
          UserBidItem value, $Res Function(UserBidItem) then) =
      _$UserBidItemCopyWithImpl<$Res, UserBidItem>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'bid_amount') double? bidAmount,
      String? status,
      @JsonKey(name: 'status_ru') String? statusRu,
      @JsonKey(name: 'bid_at') DateTime? bidAt,
      UserBidStream? stream,
      ProductModel? product,
      dynamic order});

  $UserBidStreamCopyWith<$Res>? get stream;
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$UserBidItemCopyWithImpl<$Res, $Val extends UserBidItem>
    implements $UserBidItemCopyWith<$Res> {
  _$UserBidItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bidAmount = freezed,
    Object? status = freezed,
    Object? statusRu = freezed,
    Object? bidAt = freezed,
    Object? stream = freezed,
    Object? product = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusRu: freezed == statusRu
          ? _value.statusRu
          : statusRu // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAt: freezed == bidAt
          ? _value.bidAt
          : bidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as UserBidStream?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserBidStreamCopyWith<$Res>? get stream {
    if (_value.stream == null) {
      return null;
    }

    return $UserBidStreamCopyWith<$Res>(_value.stream!, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }

  /// Create a copy of UserBidItem
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
abstract class _$$UserBidItemImplCopyWith<$Res>
    implements $UserBidItemCopyWith<$Res> {
  factory _$$UserBidItemImplCopyWith(
          _$UserBidItemImpl value, $Res Function(_$UserBidItemImpl) then) =
      __$$UserBidItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'bid_amount') double? bidAmount,
      String? status,
      @JsonKey(name: 'status_ru') String? statusRu,
      @JsonKey(name: 'bid_at') DateTime? bidAt,
      UserBidStream? stream,
      ProductModel? product,
      dynamic order});

  @override
  $UserBidStreamCopyWith<$Res>? get stream;
  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$UserBidItemImplCopyWithImpl<$Res>
    extends _$UserBidItemCopyWithImpl<$Res, _$UserBidItemImpl>
    implements _$$UserBidItemImplCopyWith<$Res> {
  __$$UserBidItemImplCopyWithImpl(
      _$UserBidItemImpl _value, $Res Function(_$UserBidItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bidAmount = freezed,
    Object? status = freezed,
    Object? statusRu = freezed,
    Object? bidAt = freezed,
    Object? stream = freezed,
    Object? product = freezed,
    Object? order = freezed,
  }) {
    return _then(_$UserBidItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusRu: freezed == statusRu
          ? _value.statusRu
          : statusRu // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAt: freezed == bidAt
          ? _value.bidAt
          : bidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as UserBidStream?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBidItemImpl implements _UserBidItem {
  const _$UserBidItemImpl(
      {this.id,
      @JsonKey(name: 'bid_amount') this.bidAmount,
      this.status,
      @JsonKey(name: 'status_ru') this.statusRu,
      @JsonKey(name: 'bid_at') this.bidAt,
      this.stream,
      this.product,
      this.order});

  factory _$UserBidItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBidItemImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'bid_amount')
  final double? bidAmount;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_ru')
  final String? statusRu;
  @override
  @JsonKey(name: 'bid_at')
  final DateTime? bidAt;
  @override
  final UserBidStream? stream;
  @override
  final ProductModel? product;
  @override
  final dynamic order;

  @override
  String toString() {
    return 'UserBidItem(id: $id, bidAmount: $bidAmount, status: $status, statusRu: $statusRu, bidAt: $bidAt, stream: $stream, product: $product, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBidItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusRu, statusRu) ||
                other.statusRu == statusRu) &&
            (identical(other.bidAt, bidAt) || other.bidAt == bidAt) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, bidAmount, status, statusRu,
      bidAt, stream, product, const DeepCollectionEquality().hash(order));

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBidItemImplCopyWith<_$UserBidItemImpl> get copyWith =>
      __$$UserBidItemImplCopyWithImpl<_$UserBidItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBidItemImplToJson(
      this,
    );
  }
}

abstract class _UserBidItem implements UserBidItem {
  const factory _UserBidItem(
      {final int? id,
      @JsonKey(name: 'bid_amount') final double? bidAmount,
      final String? status,
      @JsonKey(name: 'status_ru') final String? statusRu,
      @JsonKey(name: 'bid_at') final DateTime? bidAt,
      final UserBidStream? stream,
      final ProductModel? product,
      final dynamic order}) = _$UserBidItemImpl;

  factory _UserBidItem.fromJson(Map<String, dynamic> json) =
      _$UserBidItemImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'bid_amount')
  double? get bidAmount;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_ru')
  String? get statusRu;
  @override
  @JsonKey(name: 'bid_at')
  DateTime? get bidAt;
  @override
  UserBidStream? get stream;
  @override
  ProductModel? get product;
  @override
  dynamic get order;

  /// Create a copy of UserBidItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBidItemImplCopyWith<_$UserBidItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBidStream _$UserBidStreamFromJson(Map<String, dynamic> json) {
  return _UserBidStream.fromJson(json);
}

/// @nodoc
mixin _$UserBidStream {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;

  /// Serializes this UserBidStream to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBidStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBidStreamCopyWith<UserBidStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidStreamCopyWith<$Res> {
  factory $UserBidStreamCopyWith(
          UserBidStream value, $Res Function(UserBidStream) then) =
      _$UserBidStreamCopyWithImpl<$Res, UserBidStream>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? status,
      @JsonKey(name: 'is_public') bool? isPublic});
}

/// @nodoc
class _$UserBidStreamCopyWithImpl<$Res, $Val extends UserBidStream>
    implements $UserBidStreamCopyWith<$Res> {
  _$UserBidStreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBidStream
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBidStreamImplCopyWith<$Res>
    implements $UserBidStreamCopyWith<$Res> {
  factory _$$UserBidStreamImplCopyWith(
          _$UserBidStreamImpl value, $Res Function(_$UserBidStreamImpl) then) =
      __$$UserBidStreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? status,
      @JsonKey(name: 'is_public') bool? isPublic});
}

/// @nodoc
class __$$UserBidStreamImplCopyWithImpl<$Res>
    extends _$UserBidStreamCopyWithImpl<$Res, _$UserBidStreamImpl>
    implements _$$UserBidStreamImplCopyWith<$Res> {
  __$$UserBidStreamImplCopyWithImpl(
      _$UserBidStreamImpl _value, $Res Function(_$UserBidStreamImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBidStream
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(_$UserBidStreamImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBidStreamImpl implements _UserBidStream {
  const _$UserBidStreamImpl(
      {this.id,
      this.title,
      this.status,
      @JsonKey(name: 'is_public') this.isPublic});

  factory _$UserBidStreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBidStreamImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? status;
  @override
  @JsonKey(name: 'is_public')
  final bool? isPublic;

  @override
  String toString() {
    return 'UserBidStream(id: $id, title: $title, status: $status, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBidStreamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, status, isPublic);

  /// Create a copy of UserBidStream
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBidStreamImplCopyWith<_$UserBidStreamImpl> get copyWith =>
      __$$UserBidStreamImplCopyWithImpl<_$UserBidStreamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBidStreamImplToJson(
      this,
    );
  }
}

abstract class _UserBidStream implements UserBidStream {
  const factory _UserBidStream(
      {final int? id,
      final String? title,
      final String? status,
      @JsonKey(name: 'is_public') final bool? isPublic}) = _$UserBidStreamImpl;

  factory _UserBidStream.fromJson(Map<String, dynamic> json) =
      _$UserBidStreamImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get status;
  @override
  @JsonKey(name: 'is_public')
  bool? get isPublic;

  /// Create a copy of UserBidStream
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBidStreamImplCopyWith<_$UserBidStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
