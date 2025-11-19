// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_placed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidPlacedEvent _$BidPlacedEventFromJson(Map<String, dynamic> json) {
  return _BidPlacedEvent.fromJson(json);
}

/// @nodoc
mixin _$BidPlacedEvent {
  BidStreamItem get bid => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_product')
  StreamProductModel? get streamProduct => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_session')
  BidPlacedSessionModel? get bidSession => throw _privateConstructorUsedError;

  /// Serializes this BidPlacedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidPlacedEventCopyWith<BidPlacedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidPlacedEventCopyWith<$Res> {
  factory $BidPlacedEventCopyWith(
          BidPlacedEvent value, $Res Function(BidPlacedEvent) then) =
      _$BidPlacedEventCopyWithImpl<$Res, BidPlacedEvent>;
  @useResult
  $Res call(
      {BidStreamItem bid,
      @JsonKey(name: 'stream_product') StreamProductModel? streamProduct,
      DateTime? timestamp,
      @JsonKey(name: 'bid_session') BidPlacedSessionModel? bidSession});

  $BidStreamItemCopyWith<$Res> get bid;
  $StreamProductModelCopyWith<$Res>? get streamProduct;
  $BidPlacedSessionModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class _$BidPlacedEventCopyWithImpl<$Res, $Val extends BidPlacedEvent>
    implements $BidPlacedEventCopyWith<$Res> {
  _$BidPlacedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bid = null,
    Object? streamProduct = freezed,
    Object? timestamp = freezed,
    Object? bidSession = freezed,
  }) {
    return _then(_value.copyWith(
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as BidStreamItem,
      streamProduct: freezed == streamProduct
          ? _value.streamProduct
          : streamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidPlacedSessionModel?,
    ) as $Val);
  }

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidStreamItemCopyWith<$Res> get bid {
    return $BidStreamItemCopyWith<$Res>(_value.bid, (value) {
      return _then(_value.copyWith(bid: value) as $Val);
    });
  }

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamProductModelCopyWith<$Res>? get streamProduct {
    if (_value.streamProduct == null) {
      return null;
    }

    return $StreamProductModelCopyWith<$Res>(_value.streamProduct!, (value) {
      return _then(_value.copyWith(streamProduct: value) as $Val);
    });
  }

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidPlacedSessionModelCopyWith<$Res>? get bidSession {
    if (_value.bidSession == null) {
      return null;
    }

    return $BidPlacedSessionModelCopyWith<$Res>(_value.bidSession!, (value) {
      return _then(_value.copyWith(bidSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidPlacedEventImplCopyWith<$Res>
    implements $BidPlacedEventCopyWith<$Res> {
  factory _$$BidPlacedEventImplCopyWith(_$BidPlacedEventImpl value,
          $Res Function(_$BidPlacedEventImpl) then) =
      __$$BidPlacedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BidStreamItem bid,
      @JsonKey(name: 'stream_product') StreamProductModel? streamProduct,
      DateTime? timestamp,
      @JsonKey(name: 'bid_session') BidPlacedSessionModel? bidSession});

  @override
  $BidStreamItemCopyWith<$Res> get bid;
  @override
  $StreamProductModelCopyWith<$Res>? get streamProduct;
  @override
  $BidPlacedSessionModelCopyWith<$Res>? get bidSession;
}

/// @nodoc
class __$$BidPlacedEventImplCopyWithImpl<$Res>
    extends _$BidPlacedEventCopyWithImpl<$Res, _$BidPlacedEventImpl>
    implements _$$BidPlacedEventImplCopyWith<$Res> {
  __$$BidPlacedEventImplCopyWithImpl(
      _$BidPlacedEventImpl _value, $Res Function(_$BidPlacedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bid = null,
    Object? streamProduct = freezed,
    Object? timestamp = freezed,
    Object? bidSession = freezed,
  }) {
    return _then(_$BidPlacedEventImpl(
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as BidStreamItem,
      streamProduct: freezed == streamProduct
          ? _value.streamProduct
          : streamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidPlacedSessionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidPlacedEventImpl implements _BidPlacedEvent {
  const _$BidPlacedEventImpl(
      {required this.bid,
      @JsonKey(name: 'stream_product') this.streamProduct,
      this.timestamp,
      @JsonKey(name: 'bid_session') this.bidSession});

  factory _$BidPlacedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidPlacedEventImplFromJson(json);

  @override
  final BidStreamItem bid;
  @override
  @JsonKey(name: 'stream_product')
  final StreamProductModel? streamProduct;
  @override
  final DateTime? timestamp;
  @override
  @JsonKey(name: 'bid_session')
  final BidPlacedSessionModel? bidSession;

  @override
  String toString() {
    return 'BidPlacedEvent(bid: $bid, streamProduct: $streamProduct, timestamp: $timestamp, bidSession: $bidSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPlacedEventImpl &&
            (identical(other.bid, bid) || other.bid == bid) &&
            (identical(other.streamProduct, streamProduct) ||
                other.streamProduct == streamProduct) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.bidSession, bidSession) ||
                other.bidSession == bidSession));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bid, streamProduct, timestamp, bidSession);

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPlacedEventImplCopyWith<_$BidPlacedEventImpl> get copyWith =>
      __$$BidPlacedEventImplCopyWithImpl<_$BidPlacedEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidPlacedEventImplToJson(
      this,
    );
  }
}

abstract class _BidPlacedEvent implements BidPlacedEvent {
  const factory _BidPlacedEvent(
      {required final BidStreamItem bid,
      @JsonKey(name: 'stream_product') final StreamProductModel? streamProduct,
      final DateTime? timestamp,
      @JsonKey(name: 'bid_session')
      final BidPlacedSessionModel? bidSession}) = _$BidPlacedEventImpl;

  factory _BidPlacedEvent.fromJson(Map<String, dynamic> json) =
      _$BidPlacedEventImpl.fromJson;

  @override
  BidStreamItem get bid;
  @override
  @JsonKey(name: 'stream_product')
  StreamProductModel? get streamProduct;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(name: 'bid_session')
  BidPlacedSessionModel? get bidSession;

  /// Create a copy of BidPlacedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidPlacedEventImplCopyWith<_$BidPlacedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidPlacedSessionModel _$BidPlacedSessionModelFromJson(
    Map<String, dynamic> json) {
  return _BidPlacedSessionModel.fromJson(json);
}

/// @nodoc
mixin _$BidPlacedSessionModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_ends_at')
  DateTime? get sessionEndsAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this BidPlacedSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidPlacedSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidPlacedSessionModelCopyWith<BidPlacedSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidPlacedSessionModelCopyWith<$Res> {
  factory $BidPlacedSessionModelCopyWith(BidPlacedSessionModel value,
          $Res Function(BidPlacedSessionModel) then) =
      _$BidPlacedSessionModelCopyWithImpl<$Res, BidPlacedSessionModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'session_ends_at') DateTime? sessionEndsAt,
      String? status});
}

/// @nodoc
class _$BidPlacedSessionModelCopyWithImpl<$Res,
        $Val extends BidPlacedSessionModel>
    implements $BidPlacedSessionModelCopyWith<$Res> {
  _$BidPlacedSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidPlacedSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remainingSeconds = freezed,
    Object? sessionEndsAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionEndsAt: freezed == sessionEndsAt
          ? _value.sessionEndsAt
          : sessionEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidPlacedSessionModelImplCopyWith<$Res>
    implements $BidPlacedSessionModelCopyWith<$Res> {
  factory _$$BidPlacedSessionModelImplCopyWith(
          _$BidPlacedSessionModelImpl value,
          $Res Function(_$BidPlacedSessionModelImpl) then) =
      __$$BidPlacedSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'remaining_seconds') int? remainingSeconds,
      @JsonKey(name: 'session_ends_at') DateTime? sessionEndsAt,
      String? status});
}

/// @nodoc
class __$$BidPlacedSessionModelImplCopyWithImpl<$Res>
    extends _$BidPlacedSessionModelCopyWithImpl<$Res,
        _$BidPlacedSessionModelImpl>
    implements _$$BidPlacedSessionModelImplCopyWith<$Res> {
  __$$BidPlacedSessionModelImplCopyWithImpl(_$BidPlacedSessionModelImpl _value,
      $Res Function(_$BidPlacedSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidPlacedSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remainingSeconds = freezed,
    Object? sessionEndsAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BidPlacedSessionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingSeconds: freezed == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionEndsAt: freezed == sessionEndsAt
          ? _value.sessionEndsAt
          : sessionEndsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidPlacedSessionModelImpl implements _BidPlacedSessionModel {
  const _$BidPlacedSessionModelImpl(
      {this.id,
      @JsonKey(name: 'remaining_seconds') this.remainingSeconds,
      @JsonKey(name: 'session_ends_at') this.sessionEndsAt,
      this.status});

  factory _$BidPlacedSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidPlacedSessionModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'remaining_seconds')
  final int? remainingSeconds;
  @override
  @JsonKey(name: 'session_ends_at')
  final DateTime? sessionEndsAt;
  @override
  final String? status;

  @override
  String toString() {
    return 'BidPlacedSessionModel(id: $id, remainingSeconds: $remainingSeconds, sessionEndsAt: $sessionEndsAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPlacedSessionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.sessionEndsAt, sessionEndsAt) ||
                other.sessionEndsAt == sessionEndsAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, remainingSeconds, sessionEndsAt, status);

  /// Create a copy of BidPlacedSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPlacedSessionModelImplCopyWith<_$BidPlacedSessionModelImpl>
      get copyWith => __$$BidPlacedSessionModelImplCopyWithImpl<
          _$BidPlacedSessionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidPlacedSessionModelImplToJson(
      this,
    );
  }
}

abstract class _BidPlacedSessionModel implements BidPlacedSessionModel {
  const factory _BidPlacedSessionModel(
      {final int? id,
      @JsonKey(name: 'remaining_seconds') final int? remainingSeconds,
      @JsonKey(name: 'session_ends_at') final DateTime? sessionEndsAt,
      final String? status}) = _$BidPlacedSessionModelImpl;

  factory _BidPlacedSessionModel.fromJson(Map<String, dynamic> json) =
      _$BidPlacedSessionModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'remaining_seconds')
  int? get remainingSeconds;
  @override
  @JsonKey(name: 'session_ends_at')
  DateTime? get sessionEndsAt;
  @override
  String? get status;

  /// Create a copy of BidPlacedSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidPlacedSessionModelImplCopyWith<_$BidPlacedSessionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
