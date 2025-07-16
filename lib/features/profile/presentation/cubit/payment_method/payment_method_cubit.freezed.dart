// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentMethodState {
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardName => throw _privateConstructorUsedError;
  String get cardDate => throw _privateConstructorUsedError;
  String get cardCvv => throw _privateConstructorUsedError;
  bool get doMainMethod => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodStateCopyWith<PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodStateCopyWith(
          PaymentMethodState value, $Res Function(PaymentMethodState) then) =
      _$PaymentMethodStateCopyWithImpl<$Res, PaymentMethodState>;
  @useResult
  $Res call(
      {String cardNumber,
      String cardName,
      String cardDate,
      String cardCvv,
      bool doMainMethod});
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<$Res, $Val extends PaymentMethodState>
    implements $PaymentMethodStateCopyWith<$Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardName = null,
    Object? cardDate = null,
    Object? cardCvv = null,
    Object? doMainMethod = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardDate: null == cardDate
          ? _value.cardDate
          : cardDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
      doMainMethod: null == doMainMethod
          ? _value.doMainMethod
          : doMainMethod // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodStateImplCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory _$$PaymentMethodStateImplCopyWith(_$PaymentMethodStateImpl value,
          $Res Function(_$PaymentMethodStateImpl) then) =
      __$$PaymentMethodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardNumber,
      String cardName,
      String cardDate,
      String cardCvv,
      bool doMainMethod});
}

/// @nodoc
class __$$PaymentMethodStateImplCopyWithImpl<$Res>
    extends _$PaymentMethodStateCopyWithImpl<$Res, _$PaymentMethodStateImpl>
    implements _$$PaymentMethodStateImplCopyWith<$Res> {
  __$$PaymentMethodStateImplCopyWithImpl(_$PaymentMethodStateImpl _value,
      $Res Function(_$PaymentMethodStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardName = null,
    Object? cardDate = null,
    Object? cardCvv = null,
    Object? doMainMethod = null,
  }) {
    return _then(_$PaymentMethodStateImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardDate: null == cardDate
          ? _value.cardDate
          : cardDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
      doMainMethod: null == doMainMethod
          ? _value.doMainMethod
          : doMainMethod // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentMethodStateImpl implements _PaymentMethodState {
  const _$PaymentMethodStateImpl(
      {this.cardNumber = '',
      this.cardName = '',
      this.cardDate = '',
      this.cardCvv = '',
      this.doMainMethod = true});

  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String cardName;
  @override
  @JsonKey()
  final String cardDate;
  @override
  @JsonKey()
  final String cardCvv;
  @override
  @JsonKey()
  final bool doMainMethod;

  @override
  String toString() {
    return 'PaymentMethodState(cardNumber: $cardNumber, cardName: $cardName, cardDate: $cardDate, cardCvv: $cardCvv, doMainMethod: $doMainMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodStateImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardDate, cardDate) ||
                other.cardDate == cardDate) &&
            (identical(other.cardCvv, cardCvv) || other.cardCvv == cardCvv) &&
            (identical(other.doMainMethod, doMainMethod) ||
                other.doMainMethod == doMainMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardNumber, cardName, cardDate, cardCvv, doMainMethod);

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      __$$PaymentMethodStateImplCopyWithImpl<_$PaymentMethodStateImpl>(
          this, _$identity);
}

abstract class _PaymentMethodState implements PaymentMethodState {
  const factory _PaymentMethodState(
      {final String cardNumber,
      final String cardName,
      final String cardDate,
      final String cardCvv,
      final bool doMainMethod}) = _$PaymentMethodStateImpl;

  @override
  String get cardNumber;
  @override
  String get cardName;
  @override
  String get cardDate;
  @override
  String get cardCvv;
  @override
  bool get doMainMethod;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
