// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RewardPaymentResponse _$RewardPaymentResponseFromJson(
    Map<String, dynamic> json) {
  return _RewardPaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$RewardPaymentResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RewardPaymentData? get data => throw _privateConstructorUsedError;

  /// Serializes this RewardPaymentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardPaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardPaymentResponseCopyWith<RewardPaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPaymentResponseCopyWith<$Res> {
  factory $RewardPaymentResponseCopyWith(RewardPaymentResponse value,
          $Res Function(RewardPaymentResponse) then) =
      _$RewardPaymentResponseCopyWithImpl<$Res, RewardPaymentResponse>;
  @useResult
  $Res call({bool? success, String? message, RewardPaymentData? data});

  $RewardPaymentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RewardPaymentResponseCopyWithImpl<$Res,
        $Val extends RewardPaymentResponse>
    implements $RewardPaymentResponseCopyWith<$Res> {
  _$RewardPaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPaymentResponse
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
              as RewardPaymentData?,
    ) as $Val);
  }

  /// Create a copy of RewardPaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardPaymentDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RewardPaymentDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardPaymentResponseImplCopyWith<$Res>
    implements $RewardPaymentResponseCopyWith<$Res> {
  factory _$$RewardPaymentResponseImplCopyWith(
          _$RewardPaymentResponseImpl value,
          $Res Function(_$RewardPaymentResponseImpl) then) =
      __$$RewardPaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, RewardPaymentData? data});

  @override
  $RewardPaymentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RewardPaymentResponseImplCopyWithImpl<$Res>
    extends _$RewardPaymentResponseCopyWithImpl<$Res,
        _$RewardPaymentResponseImpl>
    implements _$$RewardPaymentResponseImplCopyWith<$Res> {
  __$$RewardPaymentResponseImplCopyWithImpl(_$RewardPaymentResponseImpl _value,
      $Res Function(_$RewardPaymentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RewardPaymentResponseImpl(
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
              as RewardPaymentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardPaymentResponseImpl implements _RewardPaymentResponse {
  const _$RewardPaymentResponseImpl({this.success, this.message, this.data});

  factory _$RewardPaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardPaymentResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final RewardPaymentData? data;

  @override
  String toString() {
    return 'RewardPaymentResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardPaymentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of RewardPaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardPaymentResponseImplCopyWith<_$RewardPaymentResponseImpl>
      get copyWith => __$$RewardPaymentResponseImplCopyWithImpl<
          _$RewardPaymentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardPaymentResponseImplToJson(
      this,
    );
  }
}

abstract class _RewardPaymentResponse implements RewardPaymentResponse {
  const factory _RewardPaymentResponse(
      {final bool? success,
      final String? message,
      final RewardPaymentData? data}) = _$RewardPaymentResponseImpl;

  factory _RewardPaymentResponse.fromJson(Map<String, dynamic> json) =
      _$RewardPaymentResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  RewardPaymentData? get data;

  /// Create a copy of RewardPaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardPaymentResponseImplCopyWith<_$RewardPaymentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RewardPaymentData _$RewardPaymentDataFromJson(Map<String, dynamic> json) {
  return _RewardPaymentData.fromJson(json);
}

/// @nodoc
mixin _$RewardPaymentData {
  RewardModel? get reward => throw _privateConstructorUsedError;
  RewardRecipientModel? get recipient => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  double? get commission => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession => throw _privateConstructorUsedError;

  /// Serializes this RewardPaymentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardPaymentDataCopyWith<RewardPaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPaymentDataCopyWith<$Res> {
  factory $RewardPaymentDataCopyWith(
          RewardPaymentData value, $Res Function(RewardPaymentData) then) =
      _$RewardPaymentDataCopyWithImpl<$Res, RewardPaymentData>;
  @useResult
  $Res call(
      {RewardModel? reward,
      RewardRecipientModel? recipient,
      double? amount,
      double? commission,
      double? total,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  $RewardModelCopyWith<$Res>? get reward;
  $RewardRecipientModelCopyWith<$Res>? get recipient;
  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class _$RewardPaymentDataCopyWithImpl<$Res, $Val extends RewardPaymentData>
    implements $RewardPaymentDataCopyWith<$Res> {
  _$RewardPaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reward = freezed,
    Object? recipient = freezed,
    Object? amount = freezed,
    Object? commission = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentSession = freezed,
  }) {
    return _then(_value.copyWith(
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as RewardRecipientModel?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ) as $Val);
  }

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardModelCopyWith<$Res>? get reward {
    if (_value.reward == null) {
      return null;
    }

    return $RewardModelCopyWith<$Res>(_value.reward!, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardRecipientModelCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $RewardRecipientModelCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }

  /// Create a copy of RewardPaymentData
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
abstract class _$$RewardPaymentDataImplCopyWith<$Res>
    implements $RewardPaymentDataCopyWith<$Res> {
  factory _$$RewardPaymentDataImplCopyWith(_$RewardPaymentDataImpl value,
          $Res Function(_$RewardPaymentDataImpl) then) =
      __$$RewardPaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RewardModel? reward,
      RewardRecipientModel? recipient,
      double? amount,
      double? commission,
      double? total,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  @override
  $RewardModelCopyWith<$Res>? get reward;
  @override
  $RewardRecipientModelCopyWith<$Res>? get recipient;
  @override
  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class __$$RewardPaymentDataImplCopyWithImpl<$Res>
    extends _$RewardPaymentDataCopyWithImpl<$Res, _$RewardPaymentDataImpl>
    implements _$$RewardPaymentDataImplCopyWith<$Res> {
  __$$RewardPaymentDataImplCopyWithImpl(_$RewardPaymentDataImpl _value,
      $Res Function(_$RewardPaymentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reward = freezed,
    Object? recipient = freezed,
    Object? amount = freezed,
    Object? commission = freezed,
    Object? total = freezed,
    Object? paymentMethod = freezed,
    Object? paymentSession = freezed,
  }) {
    return _then(_$RewardPaymentDataImpl(
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as RewardModel?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as RewardRecipientModel?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardPaymentDataImpl implements _RewardPaymentData {
  const _$RewardPaymentDataImpl(
      {this.reward,
      this.recipient,
      this.amount,
      this.commission,
      this.total,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'payment_session') this.paymentSession});

  factory _$RewardPaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardPaymentDataImplFromJson(json);

  @override
  final RewardModel? reward;
  @override
  final RewardRecipientModel? recipient;
  @override
  final double? amount;
  @override
  final double? commission;
  @override
  final double? total;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_session')
  final PaymentSessionModel? paymentSession;

  @override
  String toString() {
    return 'RewardPaymentData(reward: $reward, recipient: $recipient, amount: $amount, commission: $commission, total: $total, paymentMethod: $paymentMethod, paymentSession: $paymentSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardPaymentDataImpl &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentSession, paymentSession) ||
                other.paymentSession == paymentSession));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reward, recipient, amount,
      commission, total, paymentMethod, paymentSession);

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardPaymentDataImplCopyWith<_$RewardPaymentDataImpl> get copyWith =>
      __$$RewardPaymentDataImplCopyWithImpl<_$RewardPaymentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardPaymentDataImplToJson(
      this,
    );
  }
}

abstract class _RewardPaymentData implements RewardPaymentData {
  const factory _RewardPaymentData(
      {final RewardModel? reward,
      final RewardRecipientModel? recipient,
      final double? amount,
      final double? commission,
      final double? total,
      @JsonKey(name: 'payment_method') final String? paymentMethod,
      @JsonKey(name: 'payment_session')
      final PaymentSessionModel? paymentSession}) = _$RewardPaymentDataImpl;

  factory _RewardPaymentData.fromJson(Map<String, dynamic> json) =
      _$RewardPaymentDataImpl.fromJson;

  @override
  RewardModel? get reward;
  @override
  RewardRecipientModel? get recipient;
  @override
  double? get amount;
  @override
  double? get commission;
  @override
  double? get total;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession;

  /// Create a copy of RewardPaymentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardPaymentDataImplCopyWith<_$RewardPaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) {
  return _RewardModel.fromJson(json);
}

/// @nodoc
mixin _$RewardModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_user_id')
  int? get senderUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipient_user_id')
  int? get recipientUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get commission => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RewardMetadataModel? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RewardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardModelCopyWith<RewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardModelCopyWith<$Res> {
  factory $RewardModelCopyWith(
          RewardModel value, $Res Function(RewardModel) then) =
      _$RewardModelCopyWithImpl<$Res, RewardModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'sender_user_id') int? senderUserId,
      @JsonKey(name: 'recipient_user_id') int? recipientUserId,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      String? status,
      String? amount,
      String? commission,
      String? total,
      String? message,
      RewardMetadataModel? metadata,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $RewardMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$RewardModelCopyWithImpl<$Res, $Val extends RewardModel>
    implements $RewardModelCopyWith<$Res> {
  _$RewardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderUserId = freezed,
    Object? recipientUserId = freezed,
    Object? paymentId = freezed,
    Object? paymentMethod = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? commission = freezed,
    Object? total = freezed,
    Object? message = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      senderUserId: freezed == senderUserId
          ? _value.senderUserId
          : senderUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipientUserId: freezed == recipientUserId
          ? _value.recipientUserId
          : recipientUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as RewardMetadataModel?,
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

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardMetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $RewardMetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardModelImplCopyWith<$Res>
    implements $RewardModelCopyWith<$Res> {
  factory _$$RewardModelImplCopyWith(
          _$RewardModelImpl value, $Res Function(_$RewardModelImpl) then) =
      __$$RewardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'sender_user_id') int? senderUserId,
      @JsonKey(name: 'recipient_user_id') int? recipientUserId,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      String? status,
      String? amount,
      String? commission,
      String? total,
      String? message,
      RewardMetadataModel? metadata,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $RewardMetadataModelCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$RewardModelImplCopyWithImpl<$Res>
    extends _$RewardModelCopyWithImpl<$Res, _$RewardModelImpl>
    implements _$$RewardModelImplCopyWith<$Res> {
  __$$RewardModelImplCopyWithImpl(
      _$RewardModelImpl _value, $Res Function(_$RewardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderUserId = freezed,
    Object? recipientUserId = freezed,
    Object? paymentId = freezed,
    Object? paymentMethod = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? commission = freezed,
    Object? total = freezed,
    Object? message = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RewardModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      senderUserId: freezed == senderUserId
          ? _value.senderUserId
          : senderUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      recipientUserId: freezed == recipientUserId
          ? _value.recipientUserId
          : recipientUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as RewardMetadataModel?,
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
class _$RewardModelImpl implements _RewardModel {
  const _$RewardModelImpl(
      {this.id,
      @JsonKey(name: 'sender_user_id') this.senderUserId,
      @JsonKey(name: 'recipient_user_id') this.recipientUserId,
      @JsonKey(name: 'payment_id') this.paymentId,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      this.status,
      this.amount,
      this.commission,
      this.total,
      this.message,
      this.metadata,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$RewardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'sender_user_id')
  final int? senderUserId;
  @override
  @JsonKey(name: 'recipient_user_id')
  final int? recipientUserId;
  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  final String? status;
  @override
  final String? amount;
  @override
  final String? commission;
  @override
  final String? total;
  @override
  final String? message;
  @override
  final RewardMetadataModel? metadata;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'RewardModel(id: $id, senderUserId: $senderUserId, recipientUserId: $recipientUserId, paymentId: $paymentId, paymentMethod: $paymentMethod, status: $status, amount: $amount, commission: $commission, total: $total, message: $message, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderUserId, senderUserId) ||
                other.senderUserId == senderUserId) &&
            (identical(other.recipientUserId, recipientUserId) ||
                other.recipientUserId == recipientUserId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
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
      senderUserId,
      recipientUserId,
      paymentId,
      paymentMethod,
      status,
      amount,
      commission,
      total,
      message,
      metadata,
      createdAt,
      updatedAt);

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardModelImplCopyWith<_$RewardModelImpl> get copyWith =>
      __$$RewardModelImplCopyWithImpl<_$RewardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardModelImplToJson(
      this,
    );
  }
}

abstract class _RewardModel implements RewardModel {
  const factory _RewardModel(
          {final int? id,
          @JsonKey(name: 'sender_user_id') final int? senderUserId,
          @JsonKey(name: 'recipient_user_id') final int? recipientUserId,
          @JsonKey(name: 'payment_id') final String? paymentId,
          @JsonKey(name: 'payment_method') final String? paymentMethod,
          final String? status,
          final String? amount,
          final String? commission,
          final String? total,
          final String? message,
          final RewardMetadataModel? metadata,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$RewardModelImpl;

  factory _RewardModel.fromJson(Map<String, dynamic> json) =
      _$RewardModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'sender_user_id')
  int? get senderUserId;
  @override
  @JsonKey(name: 'recipient_user_id')
  int? get recipientUserId;
  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  String? get status;
  @override
  String? get amount;
  @override
  String? get commission;
  @override
  String? get total;
  @override
  String? get message;
  @override
  RewardMetadataModel? get metadata;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of RewardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardModelImplCopyWith<_$RewardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardMetadataModel _$RewardMetadataModelFromJson(Map<String, dynamic> json) {
  return _RewardMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$RewardMetadataModel {
  String? get gateway => throw _privateConstructorUsedError;
  @JsonKey(name: 'gateway_status')
  String? get gatewayStatus => throw _privateConstructorUsedError;

  /// Serializes this RewardMetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardMetadataModelCopyWith<RewardMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardMetadataModelCopyWith<$Res> {
  factory $RewardMetadataModelCopyWith(
          RewardMetadataModel value, $Res Function(RewardMetadataModel) then) =
      _$RewardMetadataModelCopyWithImpl<$Res, RewardMetadataModel>;
  @useResult
  $Res call(
      {String? gateway,
      @JsonKey(name: 'gateway_status') String? gatewayStatus});
}

/// @nodoc
class _$RewardMetadataModelCopyWithImpl<$Res, $Val extends RewardMetadataModel>
    implements $RewardMetadataModelCopyWith<$Res> {
  _$RewardMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateway = freezed,
    Object? gatewayStatus = freezed,
  }) {
    return _then(_value.copyWith(
      gateway: freezed == gateway
          ? _value.gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as String?,
      gatewayStatus: freezed == gatewayStatus
          ? _value.gatewayStatus
          : gatewayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardMetadataModelImplCopyWith<$Res>
    implements $RewardMetadataModelCopyWith<$Res> {
  factory _$$RewardMetadataModelImplCopyWith(_$RewardMetadataModelImpl value,
          $Res Function(_$RewardMetadataModelImpl) then) =
      __$$RewardMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? gateway,
      @JsonKey(name: 'gateway_status') String? gatewayStatus});
}

/// @nodoc
class __$$RewardMetadataModelImplCopyWithImpl<$Res>
    extends _$RewardMetadataModelCopyWithImpl<$Res, _$RewardMetadataModelImpl>
    implements _$$RewardMetadataModelImplCopyWith<$Res> {
  __$$RewardMetadataModelImplCopyWithImpl(_$RewardMetadataModelImpl _value,
      $Res Function(_$RewardMetadataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateway = freezed,
    Object? gatewayStatus = freezed,
  }) {
    return _then(_$RewardMetadataModelImpl(
      gateway: freezed == gateway
          ? _value.gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as String?,
      gatewayStatus: freezed == gatewayStatus
          ? _value.gatewayStatus
          : gatewayStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardMetadataModelImpl implements _RewardMetadataModel {
  const _$RewardMetadataModelImpl(
      {this.gateway, @JsonKey(name: 'gateway_status') this.gatewayStatus});

  factory _$RewardMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardMetadataModelImplFromJson(json);

  @override
  final String? gateway;
  @override
  @JsonKey(name: 'gateway_status')
  final String? gatewayStatus;

  @override
  String toString() {
    return 'RewardMetadataModel(gateway: $gateway, gatewayStatus: $gatewayStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardMetadataModelImpl &&
            (identical(other.gateway, gateway) || other.gateway == gateway) &&
            (identical(other.gatewayStatus, gatewayStatus) ||
                other.gatewayStatus == gatewayStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gateway, gatewayStatus);

  /// Create a copy of RewardMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardMetadataModelImplCopyWith<_$RewardMetadataModelImpl> get copyWith =>
      __$$RewardMetadataModelImplCopyWithImpl<_$RewardMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _RewardMetadataModel implements RewardMetadataModel {
  const factory _RewardMetadataModel(
          {final String? gateway,
          @JsonKey(name: 'gateway_status') final String? gatewayStatus}) =
      _$RewardMetadataModelImpl;

  factory _RewardMetadataModel.fromJson(Map<String, dynamic> json) =
      _$RewardMetadataModelImpl.fromJson;

  @override
  String? get gateway;
  @override
  @JsonKey(name: 'gateway_status')
  String? get gatewayStatus;

  /// Create a copy of RewardMetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardMetadataModelImplCopyWith<_$RewardMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardRecipientModel _$RewardRecipientModelFromJson(Map<String, dynamic> json) {
  return _RewardRecipientModel.fromJson(json);
}

/// @nodoc
mixin _$RewardRecipientModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this RewardRecipientModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardRecipientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardRecipientModelCopyWith<RewardRecipientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardRecipientModelCopyWith<$Res> {
  factory $RewardRecipientModelCopyWith(RewardRecipientModel value,
          $Res Function(RewardRecipientModel) then) =
      _$RewardRecipientModelCopyWithImpl<$Res, RewardRecipientModel>;
  @useResult
  $Res call({int? id, String? name, String? image});
}

/// @nodoc
class _$RewardRecipientModelCopyWithImpl<$Res,
        $Val extends RewardRecipientModel>
    implements $RewardRecipientModelCopyWith<$Res> {
  _$RewardRecipientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardRecipientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardRecipientModelImplCopyWith<$Res>
    implements $RewardRecipientModelCopyWith<$Res> {
  factory _$$RewardRecipientModelImplCopyWith(_$RewardRecipientModelImpl value,
          $Res Function(_$RewardRecipientModelImpl) then) =
      __$$RewardRecipientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? image});
}

/// @nodoc
class __$$RewardRecipientModelImplCopyWithImpl<$Res>
    extends _$RewardRecipientModelCopyWithImpl<$Res, _$RewardRecipientModelImpl>
    implements _$$RewardRecipientModelImplCopyWith<$Res> {
  __$$RewardRecipientModelImplCopyWithImpl(_$RewardRecipientModelImpl _value,
      $Res Function(_$RewardRecipientModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardRecipientModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$RewardRecipientModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardRecipientModelImpl implements _RewardRecipientModel {
  const _$RewardRecipientModelImpl({this.id, this.name, this.image});

  factory _$RewardRecipientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardRecipientModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'RewardRecipientModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardRecipientModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of RewardRecipientModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardRecipientModelImplCopyWith<_$RewardRecipientModelImpl>
      get copyWith =>
          __$$RewardRecipientModelImplCopyWithImpl<_$RewardRecipientModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardRecipientModelImplToJson(
      this,
    );
  }
}

abstract class _RewardRecipientModel implements RewardRecipientModel {
  const factory _RewardRecipientModel(
      {final int? id,
      final String? name,
      final String? image}) = _$RewardRecipientModelImpl;

  factory _RewardRecipientModel.fromJson(Map<String, dynamic> json) =
      _$RewardRecipientModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;

  /// Create a copy of RewardRecipientModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardRecipientModelImplCopyWith<_$RewardRecipientModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
