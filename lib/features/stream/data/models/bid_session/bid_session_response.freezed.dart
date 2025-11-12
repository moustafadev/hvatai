// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidSessionResponse _$BidSessionResponseFromJson(Map<String, dynamic> json) {
  return _BidSessionResponse.fromJson(json);
}

/// @nodoc
mixin _$BidSessionResponse {
  bool? get success => throw _privateConstructorUsedError;
  BidSessionData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BidSessionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionResponseCopyWith<BidSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionResponseCopyWith<$Res> {
  factory $BidSessionResponseCopyWith(
          BidSessionResponse value, $Res Function(BidSessionResponse) then) =
      _$BidSessionResponseCopyWithImpl<$Res, BidSessionResponse>;
  @useResult
  $Res call({bool? success, BidSessionData? data, String? message});

  $BidSessionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BidSessionResponseCopyWithImpl<$Res, $Val extends BidSessionResponse>
    implements $BidSessionResponseCopyWith<$Res> {
  _$BidSessionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BidSessionData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidSessionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BidSessionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidSessionResponseImplCopyWith<$Res>
    implements $BidSessionResponseCopyWith<$Res> {
  factory _$$BidSessionResponseImplCopyWith(_$BidSessionResponseImpl value,
          $Res Function(_$BidSessionResponseImpl) then) =
      __$$BidSessionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, BidSessionData? data, String? message});

  @override
  $BidSessionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BidSessionResponseImplCopyWithImpl<$Res>
    extends _$BidSessionResponseCopyWithImpl<$Res, _$BidSessionResponseImpl>
    implements _$$BidSessionResponseImplCopyWith<$Res> {
  __$$BidSessionResponseImplCopyWithImpl(_$BidSessionResponseImpl _value,
      $Res Function(_$BidSessionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BidSessionResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BidSessionData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionResponseImpl implements _BidSessionResponse {
  const _$BidSessionResponseImpl({this.success, this.data, this.message});

  factory _$BidSessionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final BidSessionData? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'BidSessionResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionResponseImplCopyWith<_$BidSessionResponseImpl> get copyWith =>
      __$$BidSessionResponseImplCopyWithImpl<_$BidSessionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionResponseImplToJson(
      this,
    );
  }
}

abstract class _BidSessionResponse implements BidSessionResponse {
  const factory _BidSessionResponse(
      {final bool? success,
      final BidSessionData? data,
      final String? message}) = _$BidSessionResponseImpl;

  factory _BidSessionResponse.fromJson(Map<String, dynamic> json) =
      _$BidSessionResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  BidSessionData? get data;
  @override
  String? get message;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionResponseImplCopyWith<_$BidSessionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidSessionData _$BidSessionDataFromJson(Map<String, dynamic> json) {
  return _BidSessionData.fromJson(json);
}

/// @nodoc
mixin _$BidSessionData {
  @JsonKey(name: 'has_session')
  bool? get hasSession => throw _privateConstructorUsedError;
  BidSessionStreamModel? get stream => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  double? get startingBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_bid')
  bool? get canBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidding_enabled')
  bool? get biddingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_session')
  BidSessionDetailsModel? get bidSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active_session')
  bool? get isActiveSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool? get hasEnded => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BidSessionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionDataCopyWith<BidSessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionDataCopyWith<$Res> {
  factory $BidSessionDataCopyWith(
          BidSessionData value, $Res Function(BidSessionData) then) =
      _$BidSessionDataCopyWithImpl<$Res, BidSessionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'has_session') bool? hasSession,
      BidSessionStreamModel? stream,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'can_bid') bool? canBid,
      @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'bid_session') BidSessionDetailsModel? bidSession,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'is_active_session') bool? isActiveSession,
      @JsonKey(name: 'has_ended') bool? hasEnded,
      String? message});

  $BidSessionStreamModelCopyWith<$Res>? get stream;
  $ProductModelCopyWith<$Res>? get product;
  $BidSessionDetailsModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class _$BidSessionDataCopyWithImpl<$Res, $Val extends BidSessionData>
    implements $BidSessionDataCopyWith<$Res> {
  _$BidSessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSession = freezed,
    Object? stream = freezed,
    Object? streamProductId = freezed,
    Object? product = freezed,
    Object? startingBid = freezed,
    Object? canBid = freezed,
    Object? biddingEnabled = freezed,
    Object? isActive = freezed,
    Object? bidSession = freezed,
    Object? remainingSeconds = freezed,
    Object? isActiveSession = freezed,
    Object? hasEnded = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      hasSession: freezed == hasSession
          ? _value.hasSession
          : hasSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as BidSessionStreamModel?,
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
      canBid: freezed == canBid
          ? _value.canBid
          : canBid // ignore: cast_nullable_to_non_nullable
              as bool?,
      biddingEnabled: freezed == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidSessionDetailsModel?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isActiveSession: freezed == isActiveSession
          ? _value.isActiveSession
          : isActiveSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEnded: freezed == hasEnded
          ? _value.hasEnded
          : hasEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidSessionStreamModelCopyWith<$Res>? get stream {
    if (_value.stream == null) {
      return null;
    }

    return $BidSessionStreamModelCopyWith<$Res>(_value.stream!, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }

  /// Create a copy of BidSessionData
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

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidSessionDetailsModelCopyWith<$Res>? get bidSession {
    if (_value.bidSession == null) {
      return null;
    }

    return $BidSessionDetailsModelCopyWith<$Res>(_value.bidSession!, (value) {
      return _then(_value.copyWith(bidSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidSessionDataImplCopyWith<$Res>
    implements $BidSessionDataCopyWith<$Res> {
  factory _$$BidSessionDataImplCopyWith(_$BidSessionDataImpl value,
          $Res Function(_$BidSessionDataImpl) then) =
      __$$BidSessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'has_session') bool? hasSession,
      BidSessionStreamModel? stream,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'can_bid') bool? canBid,
      @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'bid_session') BidSessionDetailsModel? bidSession,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'is_active_session') bool? isActiveSession,
      @JsonKey(name: 'has_ended') bool? hasEnded,
      String? message});

  @override
  $BidSessionStreamModelCopyWith<$Res>? get stream;
  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $BidSessionDetailsModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class __$$BidSessionDataImplCopyWithImpl<$Res>
    extends _$BidSessionDataCopyWithImpl<$Res, _$BidSessionDataImpl>
    implements _$$BidSessionDataImplCopyWith<$Res> {
  __$$BidSessionDataImplCopyWithImpl(
      _$BidSessionDataImpl _value, $Res Function(_$BidSessionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSession = freezed,
    Object? stream = freezed,
    Object? streamProductId = freezed,
    Object? product = freezed,
    Object? startingBid = freezed,
    Object? canBid = freezed,
    Object? biddingEnabled = freezed,
    Object? isActive = freezed,
    Object? bidSession = freezed,
    Object? remainingSeconds = freezed,
    Object? isActiveSession = freezed,
    Object? hasEnded = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BidSessionDataImpl(
      hasSession: freezed == hasSession
          ? _value.hasSession
          : hasSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as BidSessionStreamModel?,
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
      canBid: freezed == canBid
          ? _value.canBid
          : canBid // ignore: cast_nullable_to_non_nullable
              as bool?,
      biddingEnabled: freezed == biddingEnabled
          ? _value.biddingEnabled
          : biddingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidSessionDetailsModel?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isActiveSession: freezed == isActiveSession
          ? _value.isActiveSession
          : isActiveSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEnded: freezed == hasEnded
          ? _value.hasEnded
          : hasEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionDataImpl implements _BidSessionData {
  const _$BidSessionDataImpl(
      {@JsonKey(name: 'has_session') this.hasSession,
      this.stream,
      @JsonKey(name: 'stream_product_id') this.streamProductId,
      this.product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble) this.startingBid,
      @JsonKey(name: 'can_bid') this.canBid,
      @JsonKey(name: 'bidding_enabled') this.biddingEnabled,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'bid_session') this.bidSession,
      @JsonKey(name: 'remaining_seconds') this.remainingSeconds,
      @JsonKey(name: 'is_active_session') this.isActiveSession,
      @JsonKey(name: 'has_ended') this.hasEnded,
      this.message});

  factory _$BidSessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionDataImplFromJson(json);

  @override
  @JsonKey(name: 'has_session')
  final bool? hasSession;
  @override
  final BidSessionStreamModel? stream;
  @override
  @JsonKey(name: 'stream_product_id')
  final int? streamProductId;
  @override
  final ProductModel? product;
  @override
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  final double? startingBid;
  @override
  @JsonKey(name: 'can_bid')
  final bool? canBid;
  @override
  @JsonKey(name: 'bidding_enabled')
  final bool? biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'bid_session')
  final BidSessionDetailsModel? bidSession;
  @override
  @JsonKey(name: 'remaining_seconds')
  final int? remainingSeconds;
  @override
  @JsonKey(name: 'is_active_session')
  final bool? isActiveSession;
  @override
  @JsonKey(name: 'has_ended')
  final bool? hasEnded;
  @override
  final String? message;

  @override
  String toString() {
    return 'BidSessionData(hasSession: $hasSession, stream: $stream, streamProductId: $streamProductId, product: $product, startingBid: $startingBid, canBid: $canBid, biddingEnabled: $biddingEnabled, isActive: $isActive, bidSession: $bidSession, remainingSeconds: $remainingSeconds, isActiveSession: $isActiveSession, hasEnded: $hasEnded, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionDataImpl &&
            (identical(other.hasSession, hasSession) ||
                other.hasSession == hasSession) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.streamProductId, streamProductId) ||
                other.streamProductId == streamProductId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.startingBid, startingBid) ||
                other.startingBid == startingBid) &&
            (identical(other.canBid, canBid) || other.canBid == canBid) &&
            (identical(other.biddingEnabled, biddingEnabled) ||
                other.biddingEnabled == biddingEnabled) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.bidSession, bidSession) ||
                other.bidSession == bidSession) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.isActiveSession, isActiveSession) ||
                other.isActiveSession == isActiveSession) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasSession,
      stream,
      streamProductId,
      product,
      startingBid,
      canBid,
      biddingEnabled,
      isActive,
      bidSession,
      remainingSeconds,
      isActiveSession,
      hasEnded,
      message);

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionDataImplCopyWith<_$BidSessionDataImpl> get copyWith =>
      __$$BidSessionDataImplCopyWithImpl<_$BidSessionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionDataImplToJson(
      this,
    );
  }
}

abstract class _BidSessionData implements BidSessionData {
  const factory _BidSessionData(
      {@JsonKey(name: 'has_session') final bool? hasSession,
      final BidSessionStreamModel? stream,
      @JsonKey(name: 'stream_product_id') final int? streamProductId,
      final ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      final double? startingBid,
      @JsonKey(name: 'can_bid') final bool? canBid,
      @JsonKey(name: 'bidding_enabled') final bool? biddingEnabled,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'bid_session') final BidSessionDetailsModel? bidSession,
      @JsonKey(name: 'remaining_seconds') final int? remainingSeconds,
      @JsonKey(name: 'is_active_session') final bool? isActiveSession,
      @JsonKey(name: 'has_ended') final bool? hasEnded,
      final String? message}) = _$BidSessionDataImpl;

  factory _BidSessionData.fromJson(Map<String, dynamic> json) =
      _$BidSessionDataImpl.fromJson;

  @override
  @JsonKey(name: 'has_session')
  bool? get hasSession;
  @override
  BidSessionStreamModel? get stream;
  @override
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId;
  @override
  ProductModel? get product;
  @override
  @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
  double? get startingBid;
  @override
  @JsonKey(name: 'can_bid')
  bool? get canBid;
  @override
  @JsonKey(name: 'bidding_enabled')
  bool? get biddingEnabled;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'bid_session')
  BidSessionDetailsModel? get bidSession;
  @override
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds;
  @override
  @JsonKey(name: 'is_active_session')
  bool? get isActiveSession;
  @override
  @JsonKey(name: 'has_ended')
  bool? get hasEnded;
  @override
  String? get message;

  /// Create a copy of BidSessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionDataImplCopyWith<_$BidSessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidSessionStreamModel _$BidSessionStreamModelFromJson(
    Map<String, dynamic> json) {
  return _BidSessionStreamModel.fromJson(json);
}

/// @nodoc
mixin _$BidSessionStreamModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_live')
  bool? get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool? get isPublic => throw _privateConstructorUsedError;
  BidSessionStreamUserModel? get user => throw _privateConstructorUsedError;

  /// Serializes this BidSessionStreamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionStreamModelCopyWith<BidSessionStreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionStreamModelCopyWith<$Res> {
  factory $BidSessionStreamModelCopyWith(BidSessionStreamModel value,
          $Res Function(BidSessionStreamModel) then) =
      _$BidSessionStreamModelCopyWithImpl<$Res, BidSessionStreamModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? status,
      @JsonKey(name: 'is_live') bool? isLive,
      @JsonKey(name: 'is_public') bool? isPublic,
      BidSessionStreamUserModel? user});

  $BidSessionStreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$BidSessionStreamModelCopyWithImpl<$Res,
        $Val extends BidSessionStreamModel>
    implements $BidSessionStreamModelCopyWith<$Res> {
  _$BidSessionStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? isLive = freezed,
    Object? isPublic = freezed,
    Object? user = freezed,
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
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BidSessionStreamUserModel?,
    ) as $Val);
  }

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidSessionStreamUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $BidSessionStreamUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidSessionStreamModelImplCopyWith<$Res>
    implements $BidSessionStreamModelCopyWith<$Res> {
  factory _$$BidSessionStreamModelImplCopyWith(
          _$BidSessionStreamModelImpl value,
          $Res Function(_$BidSessionStreamModelImpl) then) =
      __$$BidSessionStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? status,
      @JsonKey(name: 'is_live') bool? isLive,
      @JsonKey(name: 'is_public') bool? isPublic,
      BidSessionStreamUserModel? user});

  @override
  $BidSessionStreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$BidSessionStreamModelImplCopyWithImpl<$Res>
    extends _$BidSessionStreamModelCopyWithImpl<$Res,
        _$BidSessionStreamModelImpl>
    implements _$$BidSessionStreamModelImplCopyWith<$Res> {
  __$$BidSessionStreamModelImplCopyWithImpl(_$BidSessionStreamModelImpl _value,
      $Res Function(_$BidSessionStreamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? isLive = freezed,
    Object? isPublic = freezed,
    Object? user = freezed,
  }) {
    return _then(_$BidSessionStreamModelImpl(
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
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublic: freezed == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as BidSessionStreamUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionStreamModelImpl implements _BidSessionStreamModel {
  const _$BidSessionStreamModelImpl(
      {this.id,
      this.title,
      this.status,
      @JsonKey(name: 'is_live') this.isLive,
      @JsonKey(name: 'is_public') this.isPublic,
      this.user});

  factory _$BidSessionStreamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionStreamModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? status;
  @override
  @JsonKey(name: 'is_live')
  final bool? isLive;
  @override
  @JsonKey(name: 'is_public')
  final bool? isPublic;
  @override
  final BidSessionStreamUserModel? user;

  @override
  String toString() {
    return 'BidSessionStreamModel(id: $id, title: $title, status: $status, isLive: $isLive, isPublic: $isPublic, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionStreamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, status, isLive, isPublic, user);

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionStreamModelImplCopyWith<_$BidSessionStreamModelImpl>
      get copyWith => __$$BidSessionStreamModelImplCopyWithImpl<
          _$BidSessionStreamModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionStreamModelImplToJson(
      this,
    );
  }
}

abstract class _BidSessionStreamModel implements BidSessionStreamModel {
  const factory _BidSessionStreamModel(
      {final int? id,
      final String? title,
      final String? status,
      @JsonKey(name: 'is_live') final bool? isLive,
      @JsonKey(name: 'is_public') final bool? isPublic,
      final BidSessionStreamUserModel? user}) = _$BidSessionStreamModelImpl;

  factory _BidSessionStreamModel.fromJson(Map<String, dynamic> json) =
      _$BidSessionStreamModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get status;
  @override
  @JsonKey(name: 'is_live')
  bool? get isLive;
  @override
  @JsonKey(name: 'is_public')
  bool? get isPublic;
  @override
  BidSessionStreamUserModel? get user;

  /// Create a copy of BidSessionStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionStreamModelImplCopyWith<_$BidSessionStreamModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BidSessionStreamUserModel _$BidSessionStreamUserModelFromJson(
    Map<String, dynamic> json) {
  return _BidSessionStreamUserModel.fromJson(json);
}

/// @nodoc
mixin _$BidSessionStreamUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this BidSessionStreamUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionStreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionStreamUserModelCopyWith<BidSessionStreamUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionStreamUserModelCopyWith<$Res> {
  factory $BidSessionStreamUserModelCopyWith(BidSessionStreamUserModel value,
          $Res Function(BidSessionStreamUserModel) then) =
      _$BidSessionStreamUserModelCopyWithImpl<$Res, BidSessionStreamUserModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$BidSessionStreamUserModelCopyWithImpl<$Res,
        $Val extends BidSessionStreamUserModel>
    implements $BidSessionStreamUserModelCopyWith<$Res> {
  _$BidSessionStreamUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionStreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidSessionStreamUserModelImplCopyWith<$Res>
    implements $BidSessionStreamUserModelCopyWith<$Res> {
  factory _$$BidSessionStreamUserModelImplCopyWith(
          _$BidSessionStreamUserModelImpl value,
          $Res Function(_$BidSessionStreamUserModelImpl) then) =
      __$$BidSessionStreamUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$BidSessionStreamUserModelImplCopyWithImpl<$Res>
    extends _$BidSessionStreamUserModelCopyWithImpl<$Res,
        _$BidSessionStreamUserModelImpl>
    implements _$$BidSessionStreamUserModelImplCopyWith<$Res> {
  __$$BidSessionStreamUserModelImplCopyWithImpl(
      _$BidSessionStreamUserModelImpl _value,
      $Res Function(_$BidSessionStreamUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionStreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BidSessionStreamUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionStreamUserModelImpl implements _BidSessionStreamUserModel {
  const _$BidSessionStreamUserModelImpl({this.id, this.name});

  factory _$BidSessionStreamUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionStreamUserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'BidSessionStreamUserModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionStreamUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BidSessionStreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionStreamUserModelImplCopyWith<_$BidSessionStreamUserModelImpl>
      get copyWith => __$$BidSessionStreamUserModelImplCopyWithImpl<
          _$BidSessionStreamUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionStreamUserModelImplToJson(
      this,
    );
  }
}

abstract class _BidSessionStreamUserModel implements BidSessionStreamUserModel {
  const factory _BidSessionStreamUserModel(
      {final int? id, final String? name}) = _$BidSessionStreamUserModelImpl;

  factory _BidSessionStreamUserModel.fromJson(Map<String, dynamic> json) =
      _$BidSessionStreamUserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of BidSessionStreamUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionStreamUserModelImplCopyWith<_$BidSessionStreamUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BidSessionDetailsModel _$BidSessionDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _BidSessionDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BidSessionDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_duration_seconds')
  int? get sessionDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  double? get currentHighestBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_highest_bidder')
  dynamic get currentHighestBidder => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bids')
  int? get totalBids => throw _privateConstructorUsedError;

  /// Serializes this BidSessionDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionDetailsModelCopyWith<BidSessionDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionDetailsModelCopyWith<$Res> {
  factory $BidSessionDetailsModelCopyWith(BidSessionDetailsModel value,
          $Res Function(BidSessionDetailsModel) then) =
      _$BidSessionDetailsModelCopyWithImpl<$Res, BidSessionDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ends_at') DateTime? endsAt,
      String? status,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      double? currentHighestBid,
      @JsonKey(name: 'current_highest_bidder') dynamic currentHighestBidder,
      @JsonKey(name: 'total_bids') int? totalBids});
}

/// @nodoc
class _$BidSessionDetailsModelCopyWithImpl<$Res,
        $Val extends BidSessionDetailsModel>
    implements $BidSessionDetailsModelCopyWith<$Res> {
  _$BidSessionDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionDurationSeconds = freezed,
    Object? startedAt = freezed,
    Object? endsAt = freezed,
    Object? status = freezed,
    Object? currentHighestBid = freezed,
    Object? currentHighestBidder = freezed,
    Object? totalBids = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationSeconds: freezed == sessionDurationSeconds
          ? _value.sessionDurationSeconds
          : sessionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentHighestBid: freezed == currentHighestBid
          ? _value.currentHighestBid
          : currentHighestBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBidder: freezed == currentHighestBidder
          ? _value.currentHighestBidder
          : currentHighestBidder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalBids: freezed == totalBids
          ? _value.totalBids
          : totalBids // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidSessionDetailsModelImplCopyWith<$Res>
    implements $BidSessionDetailsModelCopyWith<$Res> {
  factory _$$BidSessionDetailsModelImplCopyWith(
          _$BidSessionDetailsModelImpl value,
          $Res Function(_$BidSessionDetailsModelImpl) then) =
      __$$BidSessionDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'started_at') DateTime? startedAt,
      @JsonKey(name: 'ends_at') DateTime? endsAt,
      String? status,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      double? currentHighestBid,
      @JsonKey(name: 'current_highest_bidder') dynamic currentHighestBidder,
      @JsonKey(name: 'total_bids') int? totalBids});
}

/// @nodoc
class __$$BidSessionDetailsModelImplCopyWithImpl<$Res>
    extends _$BidSessionDetailsModelCopyWithImpl<$Res,
        _$BidSessionDetailsModelImpl>
    implements _$$BidSessionDetailsModelImplCopyWith<$Res> {
  __$$BidSessionDetailsModelImplCopyWithImpl(
      _$BidSessionDetailsModelImpl _value,
      $Res Function(_$BidSessionDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionDurationSeconds = freezed,
    Object? startedAt = freezed,
    Object? endsAt = freezed,
    Object? status = freezed,
    Object? currentHighestBid = freezed,
    Object? currentHighestBidder = freezed,
    Object? totalBids = freezed,
  }) {
    return _then(_$BidSessionDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationSeconds: freezed == sessionDurationSeconds
          ? _value.sessionDurationSeconds
          : sessionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentHighestBid: freezed == currentHighestBid
          ? _value.currentHighestBid
          : currentHighestBid // ignore: cast_nullable_to_non_nullable
              as double?,
      currentHighestBidder: freezed == currentHighestBidder
          ? _value.currentHighestBidder
          : currentHighestBidder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalBids: freezed == totalBids
          ? _value.totalBids
          : totalBids // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionDetailsModelImpl implements _BidSessionDetailsModel {
  const _$BidSessionDetailsModelImpl(
      {this.id,
      @JsonKey(name: 'session_duration_seconds') this.sessionDurationSeconds,
      @JsonKey(name: 'started_at') this.startedAt,
      @JsonKey(name: 'ends_at') this.endsAt,
      this.status,
      @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
      this.currentHighestBid,
      @JsonKey(name: 'current_highest_bidder') this.currentHighestBidder,
      @JsonKey(name: 'total_bids') this.totalBids});

  factory _$BidSessionDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionDetailsModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'session_duration_seconds')
  final int? sessionDurationSeconds;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ends_at')
  final DateTime? endsAt;
  @override
  final String? status;
  @override
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  final double? currentHighestBid;
  @override
  @JsonKey(name: 'current_highest_bidder')
  final dynamic currentHighestBidder;
  @override
  @JsonKey(name: 'total_bids')
  final int? totalBids;

  @override
  String toString() {
    return 'BidSessionDetailsModel(id: $id, sessionDurationSeconds: $sessionDurationSeconds, startedAt: $startedAt, endsAt: $endsAt, status: $status, currentHighestBid: $currentHighestBid, currentHighestBidder: $currentHighestBidder, totalBids: $totalBids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionDurationSeconds, sessionDurationSeconds) ||
                other.sessionDurationSeconds == sessionDurationSeconds) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentHighestBid, currentHighestBid) ||
                other.currentHighestBid == currentHighestBid) &&
            const DeepCollectionEquality()
                .equals(other.currentHighestBidder, currentHighestBidder) &&
            (identical(other.totalBids, totalBids) ||
                other.totalBids == totalBids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sessionDurationSeconds,
      startedAt,
      endsAt,
      status,
      currentHighestBid,
      const DeepCollectionEquality().hash(currentHighestBidder),
      totalBids);

  /// Create a copy of BidSessionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionDetailsModelImplCopyWith<_$BidSessionDetailsModelImpl>
      get copyWith => __$$BidSessionDetailsModelImplCopyWithImpl<
          _$BidSessionDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BidSessionDetailsModel implements BidSessionDetailsModel {
  const factory _BidSessionDetailsModel(
          {final int? id,
          @JsonKey(name: 'session_duration_seconds')
          final int? sessionDurationSeconds,
          @JsonKey(name: 'started_at') final DateTime? startedAt,
          @JsonKey(name: 'ends_at') final DateTime? endsAt,
          final String? status,
          @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
          final double? currentHighestBid,
          @JsonKey(name: 'current_highest_bidder')
          final dynamic currentHighestBidder,
          @JsonKey(name: 'total_bids') final int? totalBids}) =
      _$BidSessionDetailsModelImpl;

  factory _BidSessionDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BidSessionDetailsModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'session_duration_seconds')
  int? get sessionDurationSeconds;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt;
  @override
  String? get status;
  @override
  @JsonKey(name: 'current_highest_bid', fromJson: _parseDouble)
  double? get currentHighestBid;
  @override
  @JsonKey(name: 'current_highest_bidder')
  dynamic get currentHighestBidder;
  @override
  @JsonKey(name: 'total_bids')
  int? get totalBids;

  /// Create a copy of BidSessionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionDetailsModelImplCopyWith<_$BidSessionDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
