// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_bidding_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToggleBiddingResponseModel _$ToggleBiddingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ToggleBiddingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ToggleBiddingResponseModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ToggleBiddingDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this ToggleBiddingResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToggleBiddingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToggleBiddingResponseModelCopyWith<ToggleBiddingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleBiddingResponseModelCopyWith<$Res> {
  factory $ToggleBiddingResponseModelCopyWith(ToggleBiddingResponseModel value,
          $Res Function(ToggleBiddingResponseModel) then) =
      _$ToggleBiddingResponseModelCopyWithImpl<$Res,
          ToggleBiddingResponseModel>;
  @useResult
  $Res call({bool? success, String? message, ToggleBiddingDataModel? data});

  $ToggleBiddingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ToggleBiddingResponseModelCopyWithImpl<$Res,
        $Val extends ToggleBiddingResponseModel>
    implements $ToggleBiddingResponseModelCopyWith<$Res> {
  _$ToggleBiddingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToggleBiddingResponseModel
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
              as ToggleBiddingDataModel?,
    ) as $Val);
  }

  /// Create a copy of ToggleBiddingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToggleBiddingDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ToggleBiddingDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToggleBiddingResponseModelImplCopyWith<$Res>
    implements $ToggleBiddingResponseModelCopyWith<$Res> {
  factory _$$ToggleBiddingResponseModelImplCopyWith(
          _$ToggleBiddingResponseModelImpl value,
          $Res Function(_$ToggleBiddingResponseModelImpl) then) =
      __$$ToggleBiddingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, ToggleBiddingDataModel? data});

  @override
  $ToggleBiddingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ToggleBiddingResponseModelImplCopyWithImpl<$Res>
    extends _$ToggleBiddingResponseModelCopyWithImpl<$Res,
        _$ToggleBiddingResponseModelImpl>
    implements _$$ToggleBiddingResponseModelImplCopyWith<$Res> {
  __$$ToggleBiddingResponseModelImplCopyWithImpl(
      _$ToggleBiddingResponseModelImpl _value,
      $Res Function(_$ToggleBiddingResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToggleBiddingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ToggleBiddingResponseModelImpl(
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
              as ToggleBiddingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToggleBiddingResponseModelImpl implements _ToggleBiddingResponseModel {
  const _$ToggleBiddingResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$ToggleBiddingResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ToggleBiddingResponseModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final ToggleBiddingDataModel? data;

  @override
  String toString() {
    return 'ToggleBiddingResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBiddingResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of ToggleBiddingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleBiddingResponseModelImplCopyWith<_$ToggleBiddingResponseModelImpl>
      get copyWith => __$$ToggleBiddingResponseModelImplCopyWithImpl<
          _$ToggleBiddingResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleBiddingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ToggleBiddingResponseModel
    implements ToggleBiddingResponseModel {
  const factory _ToggleBiddingResponseModel(
      {final bool? success,
      final String? message,
      final ToggleBiddingDataModel? data}) = _$ToggleBiddingResponseModelImpl;

  factory _ToggleBiddingResponseModel.fromJson(Map<String, dynamic> json) =
      _$ToggleBiddingResponseModelImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  ToggleBiddingDataModel? get data;

  /// Create a copy of ToggleBiddingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleBiddingResponseModelImplCopyWith<_$ToggleBiddingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ToggleBiddingDataModel _$ToggleBiddingDataModelFromJson(
    Map<String, dynamic> json) {
  return _ToggleBiddingDataModel.fromJson(json);
}

/// @nodoc
mixin _$ToggleBiddingDataModel {
  @JsonKey(name: 'has_session')
  bool? get hasSession => throw _privateConstructorUsedError;
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
  ToggleBiddingSessionModel? get bidSession =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active_session')
  bool? get isActiveSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool? get hasEnded => throw _privateConstructorUsedError;

  /// Serializes this ToggleBiddingDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToggleBiddingDataModelCopyWith<ToggleBiddingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleBiddingDataModelCopyWith<$Res> {
  factory $ToggleBiddingDataModelCopyWith(ToggleBiddingDataModel value,
          $Res Function(ToggleBiddingDataModel) then) =
      _$ToggleBiddingDataModelCopyWithImpl<$Res, ToggleBiddingDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'has_session') bool? hasSession,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'can_bid') bool? canBid,
      @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'bid_session') ToggleBiddingSessionModel? bidSession,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'is_active_session') bool? isActiveSession,
      @JsonKey(name: 'has_ended') bool? hasEnded});

  $ProductModelCopyWith<$Res>? get product;
  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class _$ToggleBiddingDataModelCopyWithImpl<$Res,
        $Val extends ToggleBiddingDataModel>
    implements $ToggleBiddingDataModelCopyWith<$Res> {
  _$ToggleBiddingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSession = freezed,
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
  }) {
    return _then(_value.copyWith(
      hasSession: freezed == hasSession
          ? _value.hasSession
          : hasSession // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as ToggleBiddingSessionModel?,
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
    ) as $Val);
  }

  /// Create a copy of ToggleBiddingDataModel
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

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession {
    if (_value.bidSession == null) {
      return null;
    }

    return $ToggleBiddingSessionModelCopyWith<$Res>(_value.bidSession!,
        (value) {
      return _then(_value.copyWith(bidSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToggleBiddingDataModelImplCopyWith<$Res>
    implements $ToggleBiddingDataModelCopyWith<$Res> {
  factory _$$ToggleBiddingDataModelImplCopyWith(
          _$ToggleBiddingDataModelImpl value,
          $Res Function(_$ToggleBiddingDataModelImpl) then) =
      __$$ToggleBiddingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'has_session') bool? hasSession,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      double? startingBid,
      @JsonKey(name: 'can_bid') bool? canBid,
      @JsonKey(name: 'bidding_enabled') bool? biddingEnabled,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'bid_session') ToggleBiddingSessionModel? bidSession,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'is_active_session') bool? isActiveSession,
      @JsonKey(name: 'has_ended') bool? hasEnded});

  @override
  $ProductModelCopyWith<$Res>? get product;
  @override
  $ToggleBiddingSessionModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class __$$ToggleBiddingDataModelImplCopyWithImpl<$Res>
    extends _$ToggleBiddingDataModelCopyWithImpl<$Res,
        _$ToggleBiddingDataModelImpl>
    implements _$$ToggleBiddingDataModelImplCopyWith<$Res> {
  __$$ToggleBiddingDataModelImplCopyWithImpl(
      _$ToggleBiddingDataModelImpl _value,
      $Res Function(_$ToggleBiddingDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSession = freezed,
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
  }) {
    return _then(_$ToggleBiddingDataModelImpl(
      hasSession: freezed == hasSession
          ? _value.hasSession
          : hasSession // ignore: cast_nullable_to_non_nullable
              as bool?,
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
              as ToggleBiddingSessionModel?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToggleBiddingDataModelImpl implements _ToggleBiddingDataModel {
  const _$ToggleBiddingDataModelImpl(
      {@JsonKey(name: 'has_session') this.hasSession,
      @JsonKey(name: 'stream_product_id') this.streamProductId,
      this.product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble) this.startingBid,
      @JsonKey(name: 'can_bid') this.canBid,
      @JsonKey(name: 'bidding_enabled') this.biddingEnabled,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'bid_session') this.bidSession,
      @JsonKey(name: 'remaining_seconds') this.remainingSeconds,
      @JsonKey(name: 'is_active_session') this.isActiveSession,
      @JsonKey(name: 'has_ended') this.hasEnded});

  factory _$ToggleBiddingDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToggleBiddingDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'has_session')
  final bool? hasSession;
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
  final ToggleBiddingSessionModel? bidSession;
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
  String toString() {
    return 'ToggleBiddingDataModel(hasSession: $hasSession, streamProductId: $streamProductId, product: $product, startingBid: $startingBid, canBid: $canBid, biddingEnabled: $biddingEnabled, isActive: $isActive, bidSession: $bidSession, remainingSeconds: $remainingSeconds, isActiveSession: $isActiveSession, hasEnded: $hasEnded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBiddingDataModelImpl &&
            (identical(other.hasSession, hasSession) ||
                other.hasSession == hasSession) &&
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
                other.hasEnded == hasEnded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasSession,
      streamProductId,
      product,
      startingBid,
      canBid,
      biddingEnabled,
      isActive,
      bidSession,
      remainingSeconds,
      isActiveSession,
      hasEnded);

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleBiddingDataModelImplCopyWith<_$ToggleBiddingDataModelImpl>
      get copyWith => __$$ToggleBiddingDataModelImplCopyWithImpl<
          _$ToggleBiddingDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleBiddingDataModelImplToJson(
      this,
    );
  }
}

abstract class _ToggleBiddingDataModel implements ToggleBiddingDataModel {
  const factory _ToggleBiddingDataModel(
      {@JsonKey(name: 'has_session') final bool? hasSession,
      @JsonKey(name: 'stream_product_id') final int? streamProductId,
      final ProductModel? product,
      @JsonKey(name: 'starting_bid', fromJson: _parseDouble)
      final double? startingBid,
      @JsonKey(name: 'can_bid') final bool? canBid,
      @JsonKey(name: 'bidding_enabled') final bool? biddingEnabled,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'bid_session') final ToggleBiddingSessionModel? bidSession,
      @JsonKey(name: 'remaining_seconds') final int? remainingSeconds,
      @JsonKey(name: 'is_active_session') final bool? isActiveSession,
      @JsonKey(name: 'has_ended')
      final bool? hasEnded}) = _$ToggleBiddingDataModelImpl;

  factory _ToggleBiddingDataModel.fromJson(Map<String, dynamic> json) =
      _$ToggleBiddingDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'has_session')
  bool? get hasSession;
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
  ToggleBiddingSessionModel? get bidSession;
  @override
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds;
  @override
  @JsonKey(name: 'is_active_session')
  bool? get isActiveSession;
  @override
  @JsonKey(name: 'has_ended')
  bool? get hasEnded;

  /// Create a copy of ToggleBiddingDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleBiddingDataModelImplCopyWith<_$ToggleBiddingDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ToggleBiddingSessionModel _$ToggleBiddingSessionModelFromJson(
    Map<String, dynamic> json) {
  return _ToggleBiddingSessionModel.fromJson(json);
}

/// @nodoc
mixin _$ToggleBiddingSessionModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'highest_bid_id')
  int? get highestBidId => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_duration_seconds')
  int? get sessionDurationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_end_time')
  DateTime? get sessionEndTime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'winner_determined_at')
  DateTime? get winnerDeterminedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ToggleBiddingSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToggleBiddingSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToggleBiddingSessionModelCopyWith<ToggleBiddingSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleBiddingSessionModelCopyWith<$Res> {
  factory $ToggleBiddingSessionModelCopyWith(ToggleBiddingSessionModel value,
          $Res Function(ToggleBiddingSessionModel) then) =
      _$ToggleBiddingSessionModelCopyWithImpl<$Res, ToggleBiddingSessionModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'highest_bid_id') int? highestBidId,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') DateTime? sessionEndTime,
      String? status,
      @JsonKey(name: 'winner_determined_at') DateTime? winnerDeterminedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ToggleBiddingSessionModelCopyWithImpl<$Res,
        $Val extends ToggleBiddingSessionModel>
    implements $ToggleBiddingSessionModelCopyWith<$Res> {
  _$ToggleBiddingSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToggleBiddingSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? userId = freezed,
    Object? highestBidId = freezed,
    Object? sessionDurationSeconds = freezed,
    Object? sessionEndTime = freezed,
    Object? status = freezed,
    Object? winnerDeterminedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      highestBidId: freezed == highestBidId
          ? _value.highestBidId
          : highestBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationSeconds: freezed == sessionDurationSeconds
          ? _value.sessionDurationSeconds
          : sessionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionEndTime: freezed == sessionEndTime
          ? _value.sessionEndTime
          : sessionEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerDeterminedAt: freezed == winnerDeterminedAt
          ? _value.winnerDeterminedAt
          : winnerDeterminedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$ToggleBiddingSessionModelImplCopyWith<$Res>
    implements $ToggleBiddingSessionModelCopyWith<$Res> {
  factory _$$ToggleBiddingSessionModelImplCopyWith(
          _$ToggleBiddingSessionModelImpl value,
          $Res Function(_$ToggleBiddingSessionModelImpl) then) =
      __$$ToggleBiddingSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'highest_bid_id') int? highestBidId,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') DateTime? sessionEndTime,
      String? status,
      @JsonKey(name: 'winner_determined_at') DateTime? winnerDeterminedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ToggleBiddingSessionModelImplCopyWithImpl<$Res>
    extends _$ToggleBiddingSessionModelCopyWithImpl<$Res,
        _$ToggleBiddingSessionModelImpl>
    implements _$$ToggleBiddingSessionModelImplCopyWith<$Res> {
  __$$ToggleBiddingSessionModelImplCopyWithImpl(
      _$ToggleBiddingSessionModelImpl _value,
      $Res Function(_$ToggleBiddingSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToggleBiddingSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? userId = freezed,
    Object? highestBidId = freezed,
    Object? sessionDurationSeconds = freezed,
    Object? sessionEndTime = freezed,
    Object? status = freezed,
    Object? winnerDeterminedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ToggleBiddingSessionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      highestBidId: freezed == highestBidId
          ? _value.highestBidId
          : highestBidId // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionDurationSeconds: freezed == sessionDurationSeconds
          ? _value.sessionDurationSeconds
          : sessionDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionEndTime: freezed == sessionEndTime
          ? _value.sessionEndTime
          : sessionEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerDeterminedAt: freezed == winnerDeterminedAt
          ? _value.winnerDeterminedAt
          : winnerDeterminedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$ToggleBiddingSessionModelImpl implements _ToggleBiddingSessionModel {
  const _$ToggleBiddingSessionModelImpl(
      {this.id,
      @JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'stream_product_id') this.streamProductId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'highest_bid_id') this.highestBidId,
      @JsonKey(name: 'session_duration_seconds') this.sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') this.sessionEndTime,
      this.status,
      @JsonKey(name: 'winner_determined_at') this.winnerDeterminedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ToggleBiddingSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToggleBiddingSessionModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'stream_product_id')
  final int? streamProductId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'highest_bid_id')
  final int? highestBidId;
  @override
  @JsonKey(name: 'session_duration_seconds')
  final int? sessionDurationSeconds;
  @override
  @JsonKey(name: 'session_end_time')
  final DateTime? sessionEndTime;
  @override
  final String? status;
  @override
  @JsonKey(name: 'winner_determined_at')
  final DateTime? winnerDeterminedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ToggleBiddingSessionModel(id: $id, streamId: $streamId, streamProductId: $streamProductId, userId: $userId, highestBidId: $highestBidId, sessionDurationSeconds: $sessionDurationSeconds, sessionEndTime: $sessionEndTime, status: $status, winnerDeterminedAt: $winnerDeterminedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBiddingSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.streamProductId, streamProductId) ||
                other.streamProductId == streamProductId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.highestBidId, highestBidId) ||
                other.highestBidId == highestBidId) &&
            (identical(other.sessionDurationSeconds, sessionDurationSeconds) ||
                other.sessionDurationSeconds == sessionDurationSeconds) &&
            (identical(other.sessionEndTime, sessionEndTime) ||
                other.sessionEndTime == sessionEndTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.winnerDeterminedAt, winnerDeterminedAt) ||
                other.winnerDeterminedAt == winnerDeterminedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streamId,
      streamProductId,
      userId,
      highestBidId,
      sessionDurationSeconds,
      sessionEndTime,
      status,
      winnerDeterminedAt,
      createdAt,
      updatedAt);

  /// Create a copy of ToggleBiddingSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleBiddingSessionModelImplCopyWith<_$ToggleBiddingSessionModelImpl>
      get copyWith => __$$ToggleBiddingSessionModelImplCopyWithImpl<
          _$ToggleBiddingSessionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToggleBiddingSessionModelImplToJson(
      this,
    );
  }
}

abstract class _ToggleBiddingSessionModel implements ToggleBiddingSessionModel {
  const factory _ToggleBiddingSessionModel(
      {final int? id,
      @JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'stream_product_id') final int? streamProductId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'highest_bid_id') final int? highestBidId,
      @JsonKey(name: 'session_duration_seconds')
      final int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') final DateTime? sessionEndTime,
      final String? status,
      @JsonKey(name: 'winner_determined_at') final DateTime? winnerDeterminedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      final DateTime? updatedAt}) = _$ToggleBiddingSessionModelImpl;

  factory _ToggleBiddingSessionModel.fromJson(Map<String, dynamic> json) =
      _$ToggleBiddingSessionModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'highest_bid_id')
  int? get highestBidId;
  @override
  @JsonKey(name: 'session_duration_seconds')
  int? get sessionDurationSeconds;
  @override
  @JsonKey(name: 'session_end_time')
  DateTime? get sessionEndTime;
  @override
  String? get status;
  @override
  @JsonKey(name: 'winner_determined_at')
  DateTime? get winnerDeterminedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of ToggleBiddingSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleBiddingSessionModelImplCopyWith<_$ToggleBiddingSessionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
