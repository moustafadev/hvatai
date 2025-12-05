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
  List<CardModel> get cards => throw _privateConstructorUsedError;
  CardModel get addCard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
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
      {List<CardModel> cards,
      CardModel addCard,
      bool isLoading,
      String errorMessage,
      bool doMainMethod});

  $CardModelCopyWith<$Res> get addCard;
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
    Object? cards = null,
    Object? addCard = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? doMainMethod = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      addCard: null == addCard
          ? _value.addCard
          : addCard // ignore: cast_nullable_to_non_nullable
              as CardModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doMainMethod: null == doMainMethod
          ? _value.doMainMethod
          : doMainMethod // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardModelCopyWith<$Res> get addCard {
    return $CardModelCopyWith<$Res>(_value.addCard, (value) {
      return _then(_value.copyWith(addCard: value) as $Val);
    });
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
      {List<CardModel> cards,
      CardModel addCard,
      bool isLoading,
      String errorMessage,
      bool doMainMethod});

  @override
  $CardModelCopyWith<$Res> get addCard;
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
    Object? cards = null,
    Object? addCard = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? doMainMethod = null,
  }) {
    return _then(_$PaymentMethodStateImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      addCard: null == addCard
          ? _value.addCard
          : addCard // ignore: cast_nullable_to_non_nullable
              as CardModel,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
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
      {final List<CardModel> cards = const [],
      required this.addCard,
      this.isLoading = false,
      this.errorMessage = '',
      this.doMainMethod = true})
      : _cards = cards;

  final List<CardModel> _cards;
  @override
  @JsonKey()
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final CardModel addCard;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool doMainMethod;

  @override
  String toString() {
    return 'PaymentMethodState(cards: $cards, addCard: $addCard, isLoading: $isLoading, errorMessage: $errorMessage, doMainMethod: $doMainMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodStateImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.addCard, addCard) || other.addCard == addCard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.doMainMethod, doMainMethod) ||
                other.doMainMethod == doMainMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cards),
      addCard,
      isLoading,
      errorMessage,
      doMainMethod);

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
      {final List<CardModel> cards,
      required final CardModel addCard,
      final bool isLoading,
      final String errorMessage,
      final bool doMainMethod}) = _$PaymentMethodStateImpl;

  @override
  List<CardModel> get cards;
  @override
  CardModel get addCard;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  bool get doMainMethod;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
