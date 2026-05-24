// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  String? get message => throw _privateConstructorUsedError;
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  List<OrderPaymentModel> get payments => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession => throw _privateConstructorUsedError;

  /// Serializes this OrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call(
      {String? message,
      List<OrderModel> orders,
      List<OrderPaymentModel> payments,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? orders = null,
    Object? payments = null,
    Object? paymentSession = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentModel>,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ) as $Val);
  }

  /// Create a copy of OrderResponse
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
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      List<OrderModel> orders,
      List<OrderPaymentModel> payments,
      @JsonKey(name: 'payment_session') PaymentSessionModel? paymentSession});

  @override
  $PaymentSessionModelCopyWith<$Res>? get paymentSession;
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? orders = null,
    Object? payments = null,
    Object? paymentSession = freezed,
  }) {
    return _then(_$OrderResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentModel>,
      paymentSession: freezed == paymentSession
          ? _value.paymentSession
          : paymentSession // ignore: cast_nullable_to_non_nullable
              as PaymentSessionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseImpl implements _OrderResponse {
  const _$OrderResponseImpl(
      {this.message,
      final List<OrderModel> orders = const [],
      final List<OrderPaymentModel> payments = const [],
      @JsonKey(name: 'payment_session') this.paymentSession})
      : _orders = orders,
        _payments = payments;

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  final String? message;
  final List<OrderModel> _orders;
  @override
  @JsonKey()
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<OrderPaymentModel> _payments;
  @override
  @JsonKey()
  List<OrderPaymentModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  @JsonKey(name: 'payment_session')
  final PaymentSessionModel? paymentSession;

  @override
  String toString() {
    return 'OrderResponse(message: $message, orders: $orders, payments: $payments, paymentSession: $paymentSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.paymentSession, paymentSession) ||
                other.paymentSession == paymentSession));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_payments),
      paymentSession);

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse(
      {final String? message,
      final List<OrderModel> orders,
      final List<OrderPaymentModel> payments,
      @JsonKey(name: 'payment_session')
      final PaymentSessionModel? paymentSession}) = _$OrderResponseImpl;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<OrderModel> get orders;
  @override
  List<OrderPaymentModel> get payments;
  @override
  @JsonKey(name: 'payment_session')
  PaymentSessionModel? get paymentSession;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPaymentModel _$OrderPaymentModelFromJson(Map<String, dynamic> json) {
  return _OrderPaymentModel.fromJson(json);
}

/// @nodoc
mixin _$OrderPaymentModel {
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;

  /// Serializes this OrderPaymentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPaymentModelCopyWith<OrderPaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentModelCopyWith<$Res> {
  factory $OrderPaymentModelCopyWith(
          OrderPaymentModel value, $Res Function(OrderPaymentModel) then) =
      _$OrderPaymentModelCopyWithImpl<$Res, OrderPaymentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'payment_id') String? paymentId,
      String? status,
      String? amount,
      String? currency,
      String? method});
}

/// @nodoc
class _$OrderPaymentModelCopyWithImpl<$Res, $Val extends OrderPaymentModel>
    implements $OrderPaymentModelCopyWith<$Res> {
  _$OrderPaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPaymentModelImplCopyWith<$Res>
    implements $OrderPaymentModelCopyWith<$Res> {
  factory _$$OrderPaymentModelImplCopyWith(_$OrderPaymentModelImpl value,
          $Res Function(_$OrderPaymentModelImpl) then) =
      __$$OrderPaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'payment_id') String? paymentId,
      String? status,
      String? amount,
      String? currency,
      String? method});
}

/// @nodoc
class __$$OrderPaymentModelImplCopyWithImpl<$Res>
    extends _$OrderPaymentModelCopyWithImpl<$Res, _$OrderPaymentModelImpl>
    implements _$$OrderPaymentModelImplCopyWith<$Res> {
  __$$OrderPaymentModelImplCopyWithImpl(_$OrderPaymentModelImpl _value,
      $Res Function(_$OrderPaymentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? status = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? method = freezed,
  }) {
    return _then(_$OrderPaymentModelImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPaymentModelImpl implements _OrderPaymentModel {
  const _$OrderPaymentModelImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'payment_id') this.paymentId,
      this.status,
      this.amount,
      this.currency,
      this.method});

  factory _$OrderPaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPaymentModelImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  final String? status;
  @override
  final String? amount;
  @override
  final String? currency;
  @override
  final String? method;

  @override
  String toString() {
    return 'OrderPaymentModel(orderId: $orderId, paymentId: $paymentId, status: $status, amount: $amount, currency: $currency, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPaymentModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, paymentId, status, amount, currency, method);

  /// Create a copy of OrderPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPaymentModelImplCopyWith<_$OrderPaymentModelImpl> get copyWith =>
      __$$OrderPaymentModelImplCopyWithImpl<_$OrderPaymentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPaymentModelImplToJson(
      this,
    );
  }
}

abstract class _OrderPaymentModel implements OrderPaymentModel {
  const factory _OrderPaymentModel(
      {@JsonKey(name: 'order_id') final int? orderId,
      @JsonKey(name: 'payment_id') final String? paymentId,
      final String? status,
      final String? amount,
      final String? currency,
      final String? method}) = _$OrderPaymentModelImpl;

  factory _OrderPaymentModel.fromJson(Map<String, dynamic> json) =
      _$OrderPaymentModelImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  String? get status;
  @override
  String? get amount;
  @override
  String? get currency;
  @override
  String? get method;

  /// Create a copy of OrderPaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPaymentModelImplCopyWith<_$OrderPaymentModelImpl> get copyWith =>
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
