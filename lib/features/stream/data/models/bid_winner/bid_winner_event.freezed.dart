// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_winner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidWinnerEvent _$BidWinnerEventFromJson(Map<String, dynamic> json) {
  return _BidWinnerEvent.fromJson(json);
}

/// @nodoc
mixin _$BidWinnerEvent {
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId => throw _privateConstructorUsedError;
  BidWinnerUser? get winner => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_status')
  String? get sessionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'won_at')
  DateTime? get wonAt => throw _privateConstructorUsedError;

  /// Serializes this BidWinnerEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidWinnerEventCopyWith<BidWinnerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidWinnerEventCopyWith<$Res> {
  factory $BidWinnerEventCopyWith(
          BidWinnerEvent value, $Res Function(BidWinnerEvent) then) =
      _$BidWinnerEventCopyWithImpl<$Res, BidWinnerEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      BidWinnerUser? winner,
      @JsonKey(name: 'session_status') String? sessionStatus,
      @JsonKey(name: 'won_at') DateTime? wonAt});

  $BidWinnerUserCopyWith<$Res>? get winner;
}

/// @nodoc
class _$BidWinnerEventCopyWithImpl<$Res, $Val extends BidWinnerEvent>
    implements $BidWinnerEventCopyWith<$Res> {
  _$BidWinnerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? winner = freezed,
    Object? sessionStatus = freezed,
    Object? wonAt = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as BidWinnerUser?,
      sessionStatus: freezed == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      wonAt: freezed == wonAt
          ? _value.wonAt
          : wonAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidWinnerUserCopyWith<$Res>? get winner {
    if (_value.winner == null) {
      return null;
    }

    return $BidWinnerUserCopyWith<$Res>(_value.winner!, (value) {
      return _then(_value.copyWith(winner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidWinnerEventImplCopyWith<$Res>
    implements $BidWinnerEventCopyWith<$Res> {
  factory _$$BidWinnerEventImplCopyWith(_$BidWinnerEventImpl value,
          $Res Function(_$BidWinnerEventImpl) then) =
      __$$BidWinnerEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      BidWinnerUser? winner,
      @JsonKey(name: 'session_status') String? sessionStatus,
      @JsonKey(name: 'won_at') DateTime? wonAt});

  @override
  $BidWinnerUserCopyWith<$Res>? get winner;
}

/// @nodoc
class __$$BidWinnerEventImplCopyWithImpl<$Res>
    extends _$BidWinnerEventCopyWithImpl<$Res, _$BidWinnerEventImpl>
    implements _$$BidWinnerEventImplCopyWith<$Res> {
  __$$BidWinnerEventImplCopyWithImpl(
      _$BidWinnerEventImpl _value, $Res Function(_$BidWinnerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? winner = freezed,
    Object? sessionStatus = freezed,
    Object? wonAt = freezed,
  }) {
    return _then(_$BidWinnerEventImpl(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as BidWinnerUser?,
      sessionStatus: freezed == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      wonAt: freezed == wonAt
          ? _value.wonAt
          : wonAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidWinnerEventImpl implements _BidWinnerEvent {
  const _$BidWinnerEventImpl(
      {@JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'stream_product_id') this.streamProductId,
      this.winner,
      @JsonKey(name: 'session_status') this.sessionStatus,
      @JsonKey(name: 'won_at') this.wonAt});

  factory _$BidWinnerEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidWinnerEventImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final int? sessionId;
  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'stream_product_id')
  final int? streamProductId;
  @override
  final BidWinnerUser? winner;
  @override
  @JsonKey(name: 'session_status')
  final String? sessionStatus;
  @override
  @JsonKey(name: 'won_at')
  final DateTime? wonAt;

  @override
  String toString() {
    return 'BidWinnerEvent(sessionId: $sessionId, streamId: $streamId, streamProductId: $streamProductId, winner: $winner, sessionStatus: $sessionStatus, wonAt: $wonAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidWinnerEventImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.streamProductId, streamProductId) ||
                other.streamProductId == streamProductId) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.sessionStatus, sessionStatus) ||
                other.sessionStatus == sessionStatus) &&
            (identical(other.wonAt, wonAt) || other.wonAt == wonAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, streamId,
      streamProductId, winner, sessionStatus, wonAt);

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidWinnerEventImplCopyWith<_$BidWinnerEventImpl> get copyWith =>
      __$$BidWinnerEventImplCopyWithImpl<_$BidWinnerEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidWinnerEventImplToJson(
      this,
    );
  }
}

abstract class _BidWinnerEvent implements BidWinnerEvent {
  const factory _BidWinnerEvent(
      {@JsonKey(name: 'session_id') final int? sessionId,
      @JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'stream_product_id') final int? streamProductId,
      final BidWinnerUser? winner,
      @JsonKey(name: 'session_status') final String? sessionStatus,
      @JsonKey(name: 'won_at') final DateTime? wonAt}) = _$BidWinnerEventImpl;

  factory _BidWinnerEvent.fromJson(Map<String, dynamic> json) =
      _$BidWinnerEventImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  int? get sessionId;
  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'stream_product_id')
  int? get streamProductId;
  @override
  BidWinnerUser? get winner;
  @override
  @JsonKey(name: 'session_status')
  String? get sessionStatus;
  @override
  @JsonKey(name: 'won_at')
  DateTime? get wonAt;

  /// Create a copy of BidWinnerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidWinnerEventImplCopyWith<_$BidWinnerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidWinnerUser _$BidWinnerUserFromJson(Map<String, dynamic> json) {
  return _BidWinnerUser.fromJson(json);
}

/// @nodoc
mixin _$BidWinnerUser {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_amount', fromJson: _parseDouble)
  double? get bidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_id')
  int? get bidId => throw _privateConstructorUsedError;

  /// Serializes this BidWinnerUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidWinnerUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidWinnerUserCopyWith<BidWinnerUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidWinnerUserCopyWith<$Res> {
  factory $BidWinnerUserCopyWith(
          BidWinnerUser value, $Res Function(BidWinnerUser) then) =
      _$BidWinnerUserCopyWithImpl<$Res, BidWinnerUser>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      @JsonKey(name: 'bid_amount', fromJson: _parseDouble) double? bidAmount,
      @JsonKey(name: 'bid_id') int? bidId});
}

/// @nodoc
class _$BidWinnerUserCopyWithImpl<$Res, $Val extends BidWinnerUser>
    implements $BidWinnerUserCopyWith<$Res> {
  _$BidWinnerUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidWinnerUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? bidAmount = freezed,
    Object? bidId = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      bidId: freezed == bidId
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidWinnerUserImplCopyWith<$Res>
    implements $BidWinnerUserCopyWith<$Res> {
  factory _$$BidWinnerUserImplCopyWith(
          _$BidWinnerUserImpl value, $Res Function(_$BidWinnerUserImpl) then) =
      __$$BidWinnerUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? image,
      @JsonKey(name: 'bid_amount', fromJson: _parseDouble) double? bidAmount,
      @JsonKey(name: 'bid_id') int? bidId});
}

/// @nodoc
class __$$BidWinnerUserImplCopyWithImpl<$Res>
    extends _$BidWinnerUserCopyWithImpl<$Res, _$BidWinnerUserImpl>
    implements _$$BidWinnerUserImplCopyWith<$Res> {
  __$$BidWinnerUserImplCopyWithImpl(
      _$BidWinnerUserImpl _value, $Res Function(_$BidWinnerUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidWinnerUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? bidAmount = freezed,
    Object? bidId = freezed,
  }) {
    return _then(_$BidWinnerUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      bidId: freezed == bidId
          ? _value.bidId
          : bidId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidWinnerUserImpl implements _BidWinnerUser {
  const _$BidWinnerUserImpl(
      {this.id,
      this.name,
      this.image,
      @JsonKey(name: 'bid_amount', fromJson: _parseDouble) this.bidAmount,
      @JsonKey(name: 'bid_id') this.bidId});

  factory _$BidWinnerUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidWinnerUserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'bid_amount', fromJson: _parseDouble)
  final double? bidAmount;
  @override
  @JsonKey(name: 'bid_id')
  final int? bidId;

  @override
  String toString() {
    return 'BidWinnerUser(id: $id, name: $name, image: $image, bidAmount: $bidAmount, bidId: $bidId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidWinnerUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.bidId, bidId) || other.bidId == bidId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, bidAmount, bidId);

  /// Create a copy of BidWinnerUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidWinnerUserImplCopyWith<_$BidWinnerUserImpl> get copyWith =>
      __$$BidWinnerUserImplCopyWithImpl<_$BidWinnerUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidWinnerUserImplToJson(
      this,
    );
  }
}

abstract class _BidWinnerUser implements BidWinnerUser {
  const factory _BidWinnerUser(
      {final int? id,
      final String? name,
      final String? image,
      @JsonKey(name: 'bid_amount', fromJson: _parseDouble)
      final double? bidAmount,
      @JsonKey(name: 'bid_id') final int? bidId}) = _$BidWinnerUserImpl;

  factory _BidWinnerUser.fromJson(Map<String, dynamic> json) =
      _$BidWinnerUserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'bid_amount', fromJson: _parseDouble)
  double? get bidAmount;
  @override
  @JsonKey(name: 'bid_id')
  int? get bidId;

  /// Create a copy of BidWinnerUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidWinnerUserImplCopyWith<_$BidWinnerUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
