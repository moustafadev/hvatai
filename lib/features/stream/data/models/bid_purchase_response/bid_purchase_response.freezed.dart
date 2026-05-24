// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_purchase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidPurchaseResponse _$BidPurchaseResponseFromJson(Map<String, dynamic> json) {
  return _BidPurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BidPurchaseResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BidPurchaseData? get data => throw _privateConstructorUsedError;

  /// Serializes this BidPurchaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidPurchaseResponseCopyWith<BidPurchaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidPurchaseResponseCopyWith<$Res> {
  factory $BidPurchaseResponseCopyWith(
          BidPurchaseResponse value, $Res Function(BidPurchaseResponse) then) =
      _$BidPurchaseResponseCopyWithImpl<$Res, BidPurchaseResponse>;
  @useResult
  $Res call({bool? success, String? message, BidPurchaseData? data});

  $BidPurchaseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BidPurchaseResponseCopyWithImpl<$Res, $Val extends BidPurchaseResponse>
    implements $BidPurchaseResponseCopyWith<$Res> {
  _$BidPurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidPurchaseResponse
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
              as BidPurchaseData?,
    ) as $Val);
  }

  /// Create a copy of BidPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidPurchaseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BidPurchaseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidPurchaseResponseImplCopyWith<$Res>
    implements $BidPurchaseResponseCopyWith<$Res> {
  factory _$$BidPurchaseResponseImplCopyWith(_$BidPurchaseResponseImpl value,
          $Res Function(_$BidPurchaseResponseImpl) then) =
      __$$BidPurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, BidPurchaseData? data});

  @override
  $BidPurchaseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BidPurchaseResponseImplCopyWithImpl<$Res>
    extends _$BidPurchaseResponseCopyWithImpl<$Res, _$BidPurchaseResponseImpl>
    implements _$$BidPurchaseResponseImplCopyWith<$Res> {
  __$$BidPurchaseResponseImplCopyWithImpl(_$BidPurchaseResponseImpl _value,
      $Res Function(_$BidPurchaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BidPurchaseResponseImpl(
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
              as BidPurchaseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidPurchaseResponseImpl implements _BidPurchaseResponse {
  const _$BidPurchaseResponseImpl({this.success, this.message, this.data});

  factory _$BidPurchaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidPurchaseResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BidPurchaseData? data;

  @override
  String toString() {
    return 'BidPurchaseResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPurchaseResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of BidPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPurchaseResponseImplCopyWith<_$BidPurchaseResponseImpl> get copyWith =>
      __$$BidPurchaseResponseImplCopyWithImpl<_$BidPurchaseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidPurchaseResponseImplToJson(
      this,
    );
  }
}

abstract class _BidPurchaseResponse implements BidPurchaseResponse {
  const factory _BidPurchaseResponse(
      {final bool? success,
      final String? message,
      final BidPurchaseData? data}) = _$BidPurchaseResponseImpl;

  factory _BidPurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$BidPurchaseResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  BidPurchaseData? get data;

  /// Create a copy of BidPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidPurchaseResponseImplCopyWith<_$BidPurchaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidPurchaseData _$BidPurchaseDataFromJson(Map<String, dynamic> json) {
  return _BidPurchaseData.fromJson(json);
}

/// @nodoc
mixin _$BidPurchaseData {
  @JsonKey(name: 'bid_session')
  BidSessionModel? get bidSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession => throw _privateConstructorUsedError;

  /// Serializes this BidPurchaseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidPurchaseDataCopyWith<BidPurchaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidPurchaseDataCopyWith<$Res> {
  factory $BidPurchaseDataCopyWith(
          BidPurchaseData value, $Res Function(BidPurchaseData) then) =
      _$BidPurchaseDataCopyWithImpl<$Res, BidPurchaseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bid_session') BidSessionModel? bidSession,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  $BidSessionModelCopyWith<$Res>? get bidSession;
  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class _$BidPurchaseDataCopyWithImpl<$Res, $Val extends BidPurchaseData>
    implements $BidPurchaseDataCopyWith<$Res> {
  _$BidPurchaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidSession = freezed,
    Object? paymentSession = freezed,
  }) {
    return _then(_value.copyWith(
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidSessionModel?,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ) as $Val);
  }

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidSessionModelCopyWith<$Res>? get bidSession {
    if (_value.bidSession == null) {
      return null;
    }

    return $BidSessionModelCopyWith<$Res>(_value.bidSession!, (value) {
      return _then(_value.copyWith(bidSession: value) as $Val);
    });
  }

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentSessionModelCopyWith<$Res>? get paymentSession {
    if (_value.paymentSession == null) {
      return null;
    }

    return $PaymentSessionModelCopyWith<$Res>(_value.paymentSession!, (value) {
      return _then(_value.copyWith(paymentSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidPurchaseDataImplCopyWith<$Res>
    implements $BidPurchaseDataCopyWith<$Res> {
  factory _$$BidPurchaseDataImplCopyWith(_$BidPurchaseDataImpl value,
          $Res Function(_$BidPurchaseDataImpl) then) =
      __$$BidPurchaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bid_session') BidSessionModel? bidSession,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  @override
  $BidSessionModelCopyWith<$Res>? get bidSession;
  @override
  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class __$$BidPurchaseDataImplCopyWithImpl<$Res>
    extends _$BidPurchaseDataCopyWithImpl<$Res, _$BidPurchaseDataImpl>
    implements _$$BidPurchaseDataImplCopyWith<$Res> {
  __$$BidPurchaseDataImplCopyWithImpl(
      _$BidPurchaseDataImpl _value, $Res Function(_$BidPurchaseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidSession = freezed,
    Object? paymentSession = freezed,
  }) {
    return _then(_$BidPurchaseDataImpl(
      bidSession: freezed == bidSession
          ? _value.bidSession
          : bidSession // ignore: cast_nullable_to_non_nullable
              as BidSessionModel?,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidPurchaseDataImpl implements _BidPurchaseData {
  const _$BidPurchaseDataImpl(
      {@JsonKey(name: 'bid_session') this.bidSession,
      @JsonKey(name: 'payment_session') this.paymentSession});

  factory _$BidPurchaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidPurchaseDataImplFromJson(json);

  @override
  @JsonKey(name: 'bid_session')
  final BidSessionModel? bidSession;
  @override
  @JsonKey(name: 'payment_session')
  final PaymentSessionModel? paymentSession;

  @override
  String toString() {
    return 'BidPurchaseData(bidSession: $bidSession, paymentSession: $paymentSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidPurchaseDataImpl &&
            (identical(other.bidSession, bidSession) ||
                other.bidSession == bidSession) &&
            (identical(other.paymentSession, paymentSession) ||
                other.paymentSession == paymentSession));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bidSession, paymentSession);

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidPurchaseDataImplCopyWith<_$BidPurchaseDataImpl> get copyWith =>
      __$$BidPurchaseDataImplCopyWithImpl<_$BidPurchaseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidPurchaseDataImplToJson(
      this,
    );
  }
}

abstract class _BidPurchaseData implements BidPurchaseData {
  const factory _BidPurchaseData(
      {@JsonKey(name: 'bid_session') final BidSessionModel? bidSession,
      @JsonKey(name: 'payment_session')
      final PaymentSessionModel? paymentSession}) = _$BidPurchaseDataImpl;

  factory _BidPurchaseData.fromJson(Map<String, dynamic> json) =
      _$BidPurchaseDataImpl.fromJson;

  @override
  @JsonKey(name: 'bid_session')
  BidSessionModel? get bidSession;
  @override
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession;

  /// Create a copy of BidPurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidPurchaseDataImplCopyWith<_$BidPurchaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidSessionModel _$BidSessionModelFromJson(Map<String, dynamic> json) {
  return _BidSessionModel.fromJson(json);
}

/// @nodoc
mixin _$BidSessionModel {
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
  String? get sessionEndTime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'winner_determined_at')
  String? get winnerDeterminedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BidSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionModelCopyWith<BidSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionModelCopyWith<$Res> {
  factory $BidSessionModelCopyWith(
          BidSessionModel value, $Res Function(BidSessionModel) then) =
      _$BidSessionModelCopyWithImpl<$Res, BidSessionModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'highest_bid_id') int? highestBidId,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') String? sessionEndTime,
      String? status,
      @JsonKey(name: 'winner_determined_at') String? winnerDeterminedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$BidSessionModelCopyWithImpl<$Res, $Val extends BidSessionModel>
    implements $BidSessionModelCopyWith<$Res> {
  _$BidSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionModel
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
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerDeterminedAt: freezed == winnerDeterminedAt
          ? _value.winnerDeterminedAt
          : winnerDeterminedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidSessionModelImplCopyWith<$Res>
    implements $BidSessionModelCopyWith<$Res> {
  factory _$$BidSessionModelImplCopyWith(_$BidSessionModelImpl value,
          $Res Function(_$BidSessionModelImpl) then) =
      __$$BidSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'stream_product_id') int? streamProductId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'highest_bid_id') int? highestBidId,
      @JsonKey(name: 'session_duration_seconds') int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') String? sessionEndTime,
      String? status,
      @JsonKey(name: 'winner_determined_at') String? winnerDeterminedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$BidSessionModelImplCopyWithImpl<$Res>
    extends _$BidSessionModelCopyWithImpl<$Res, _$BidSessionModelImpl>
    implements _$$BidSessionModelImplCopyWith<$Res> {
  __$$BidSessionModelImplCopyWithImpl(
      _$BidSessionModelImpl _value, $Res Function(_$BidSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionModel
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
    return _then(_$BidSessionModelImpl(
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
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      winnerDeterminedAt: freezed == winnerDeterminedAt
          ? _value.winnerDeterminedAt
          : winnerDeterminedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionModelImpl implements _BidSessionModel {
  const _$BidSessionModelImpl(
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

  factory _$BidSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionModelImplFromJson(json);

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
  final String? sessionEndTime;
  @override
  final String? status;
  @override
  @JsonKey(name: 'winner_determined_at')
  final String? winnerDeterminedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'BidSessionModel(id: $id, streamId: $streamId, streamProductId: $streamProductId, userId: $userId, highestBidId: $highestBidId, sessionDurationSeconds: $sessionDurationSeconds, sessionEndTime: $sessionEndTime, status: $status, winnerDeterminedAt: $winnerDeterminedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionModelImpl &&
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

  /// Create a copy of BidSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionModelImplCopyWith<_$BidSessionModelImpl> get copyWith =>
      __$$BidSessionModelImplCopyWithImpl<_$BidSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionModelImplToJson(
      this,
    );
  }
}

abstract class _BidSessionModel implements BidSessionModel {
  const factory _BidSessionModel(
      {final int? id,
      @JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'stream_product_id') final int? streamProductId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'highest_bid_id') final int? highestBidId,
      @JsonKey(name: 'session_duration_seconds')
      final int? sessionDurationSeconds,
      @JsonKey(name: 'session_end_time') final String? sessionEndTime,
      final String? status,
      @JsonKey(name: 'winner_determined_at') final String? winnerDeterminedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at')
      final String? updatedAt}) = _$BidSessionModelImpl;

  factory _BidSessionModel.fromJson(Map<String, dynamic> json) =
      _$BidSessionModelImpl.fromJson;

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
  String? get sessionEndTime;
  @override
  String? get status;
  @override
  @JsonKey(name: 'winner_determined_at')
  String? get winnerDeterminedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of BidSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionModelImplCopyWith<_$BidSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentSessionModel _$PaymentSessionModelFromJson(Map<String, dynamic> json) {
  return _PaymentSessionModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentSessionModel {
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'gateway_status')
  String? get gatewayStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_url')
  String? get confirmationUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_link')
  String? get qrLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_image')
  String? get qrImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_svg')
  String? get qrSvg => throw _privateConstructorUsedError;

  /// Serializes this PaymentSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentSessionModelCopyWith<PaymentSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSessionModelCopyWith<$Res> {
  factory $PaymentSessionModelCopyWith(
          PaymentSessionModel value, $Res Function(PaymentSessionModel) then) =
      _$PaymentSessionModelCopyWithImpl<$Res, PaymentSessionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_id') String? paymentId,
      String? status,
      @JsonKey(name: 'gateway_status') String? gatewayStatus,
      @JsonKey(name: 'confirmation_url') String? confirmationUrl,
      @JsonKey(name: 'qr_link') String? qrLink,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'qr_svg') String? qrSvg});
}

/// @nodoc
class _$PaymentSessionModelCopyWithImpl<$Res, $Val extends PaymentSessionModel>
    implements $PaymentSessionModelCopyWith<$Res> {
  _$PaymentSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? status = freezed,
    Object? gatewayStatus = freezed,
    Object? confirmationUrl = freezed,
    Object? qrLink = freezed,
    Object? qrImage = freezed,
    Object? qrSvg = freezed,
  }) {
    return _then(_value.copyWith(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gatewayStatus: freezed == gatewayStatus
          ? _value.gatewayStatus
          : gatewayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationUrl: freezed == confirmationUrl
          ? _value.confirmationUrl
          : confirmationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      qrLink: freezed == qrLink
          ? _value.qrLink
          : qrLink // ignore: cast_nullable_to_non_nullable
              as String?,
      qrImage: freezed == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String?,
      qrSvg: freezed == qrSvg
          ? _value.qrSvg
          : qrSvg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentSessionModelImplCopyWith<$Res>
    implements $PaymentSessionModelCopyWith<$Res> {
  factory _$$PaymentSessionModelImplCopyWith(_$PaymentSessionModelImpl value,
          $Res Function(_$PaymentSessionModelImpl) then) =
      __$$PaymentSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_id') String? paymentId,
      String? status,
      @JsonKey(name: 'gateway_status') String? gatewayStatus,
      @JsonKey(name: 'confirmation_url') String? confirmationUrl,
      @JsonKey(name: 'qr_link') String? qrLink,
      @JsonKey(name: 'qr_image') String? qrImage,
      @JsonKey(name: 'qr_svg') String? qrSvg});
}

/// @nodoc
class __$$PaymentSessionModelImplCopyWithImpl<$Res>
    extends _$PaymentSessionModelCopyWithImpl<$Res, _$PaymentSessionModelImpl>
    implements _$$PaymentSessionModelImplCopyWith<$Res> {
  __$$PaymentSessionModelImplCopyWithImpl(_$PaymentSessionModelImpl _value,
      $Res Function(_$PaymentSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = freezed,
    Object? status = freezed,
    Object? gatewayStatus = freezed,
    Object? confirmationUrl = freezed,
    Object? qrLink = freezed,
    Object? qrImage = freezed,
    Object? qrSvg = freezed,
  }) {
    return _then(_$PaymentSessionModelImpl(
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gatewayStatus: freezed == gatewayStatus
          ? _value.gatewayStatus
          : gatewayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationUrl: freezed == confirmationUrl
          ? _value.confirmationUrl
          : confirmationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      qrLink: freezed == qrLink
          ? _value.qrLink
          : qrLink // ignore: cast_nullable_to_non_nullable
              as String?,
      qrImage: freezed == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String?,
      qrSvg: freezed == qrSvg
          ? _value.qrSvg
          : qrSvg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentSessionModelImpl implements _PaymentSessionModel {
  const _$PaymentSessionModelImpl(
      {@JsonKey(name: 'payment_id') this.paymentId,
      this.status,
      @JsonKey(name: 'gateway_status') this.gatewayStatus,
      @JsonKey(name: 'confirmation_url') this.confirmationUrl,
      @JsonKey(name: 'qr_link') this.qrLink,
      @JsonKey(name: 'qr_image') this.qrImage,
      @JsonKey(name: 'qr_svg') this.qrSvg});

  factory _$PaymentSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentSessionModelImplFromJson(json);

  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  final String? status;
  @override
  @JsonKey(name: 'gateway_status')
  final String? gatewayStatus;
  @override
  @JsonKey(name: 'confirmation_url')
  final String? confirmationUrl;
  @override
  @JsonKey(name: 'qr_link')
  final String? qrLink;
  @override
  @JsonKey(name: 'qr_image')
  final String? qrImage;
  @override
  @JsonKey(name: 'qr_svg')
  final String? qrSvg;

  @override
  String toString() {
    return 'PaymentSessionModel(paymentId: $paymentId, status: $status, gatewayStatus: $gatewayStatus, confirmationUrl: $confirmationUrl, qrLink: $qrLink, qrImage: $qrImage, qrSvg: $qrSvg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSessionModelImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gatewayStatus, gatewayStatus) ||
                other.gatewayStatus == gatewayStatus) &&
            (identical(other.confirmationUrl, confirmationUrl) ||
                other.confirmationUrl == confirmationUrl) &&
            (identical(other.qrLink, qrLink) || other.qrLink == qrLink) &&
            (identical(other.qrImage, qrImage) || other.qrImage == qrImage) &&
            (identical(other.qrSvg, qrSvg) || other.qrSvg == qrSvg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentId, status, gatewayStatus,
      confirmationUrl, qrLink, qrImage, qrSvg);

  /// Create a copy of PaymentSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSessionModelImplCopyWith<_$PaymentSessionModelImpl> get copyWith =>
      __$$PaymentSessionModelImplCopyWithImpl<_$PaymentSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentSessionModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentSessionModel implements PaymentSessionModel {
  const factory _PaymentSessionModel(
          {@JsonKey(name: 'payment_id') final String? paymentId,
          final String? status,
          @JsonKey(name: 'gateway_status') final String? gatewayStatus,
          @JsonKey(name: 'confirmation_url') final String? confirmationUrl,
          @JsonKey(name: 'qr_link') final String? qrLink,
          @JsonKey(name: 'qr_image') final String? qrImage,
          @JsonKey(name: 'qr_svg') final String? qrSvg}) =
      _$PaymentSessionModelImpl;

  factory _PaymentSessionModel.fromJson(Map<String, dynamic> json) =
      _$PaymentSessionModelImpl.fromJson;

  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  String? get status;
  @override
  @JsonKey(name: 'gateway_status')
  String? get gatewayStatus;
  @override
  @JsonKey(name: 'confirmation_url')
  String? get confirmationUrl;
  @override
  @JsonKey(name: 'qr_link')
  String? get qrLink;
  @override
  @JsonKey(name: 'qr_image')
  String? get qrImage;
  @override
  @JsonKey(name: 'qr_svg')
  String? get qrSvg;

  /// Create a copy of PaymentSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSessionModelImplCopyWith<_$PaymentSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
