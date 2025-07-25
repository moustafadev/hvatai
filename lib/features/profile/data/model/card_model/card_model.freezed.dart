// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_four')
  String? get lastFour => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_month')
  String? get expiryMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_year')
  String? get expiryYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_number')
  String? get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  String? get expiryDate => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this CardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {String? brand,
      @JsonKey(name: 'last_four') String? lastFour,
      @JsonKey(name: 'expiry_month') String? expiryMonth,
      @JsonKey(name: 'expiry_year') String? expiryYear,
      @JsonKey(name: 'card_number') String? cardNumber,
      @JsonKey(name: 'expiry_date') String? expiryDate,
      String? cvv,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? lastFour = freezed,
    Object? expiryMonth = freezed,
    Object? expiryYear = freezed,
    Object? cardNumber = freezed,
    Object? expiryDate = freezed,
    Object? cvv = freezed,
    Object? userId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFour: freezed == lastFour
          ? _value.lastFour
          : lastFour // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryMonth: freezed == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryYear: freezed == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
      @JsonKey(name: 'last_four') String? lastFour,
      @JsonKey(name: 'expiry_month') String? expiryMonth,
      @JsonKey(name: 'expiry_year') String? expiryYear,
      @JsonKey(name: 'card_number') String? cardNumber,
      @JsonKey(name: 'expiry_date') String? expiryDate,
      String? cvv,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id});
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? lastFour = freezed,
    Object? expiryMonth = freezed,
    Object? expiryYear = freezed,
    Object? cardNumber = freezed,
    Object? expiryDate = freezed,
    Object? cvv = freezed,
    Object? userId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CardModelImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFour: freezed == lastFour
          ? _value.lastFour
          : lastFour // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryMonth: freezed == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryYear: freezed == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: freezed == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardModelImpl implements _CardModel {
  const _$CardModelImpl(
      {this.brand,
      @JsonKey(name: 'last_four') this.lastFour,
      @JsonKey(name: 'expiry_month') this.expiryMonth,
      @JsonKey(name: 'expiry_year') this.expiryYear,
      @JsonKey(name: 'card_number') this.cardNumber,
      @JsonKey(name: 'expiry_date') this.expiryDate,
      this.cvv,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      this.id});

  factory _$CardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardModelImplFromJson(json);

  @override
  final String? brand;
  @override
  @JsonKey(name: 'last_four')
  final String? lastFour;
  @override
  @JsonKey(name: 'expiry_month')
  final String? expiryMonth;
  @override
  @JsonKey(name: 'expiry_year')
  final String? expiryYear;
  @override
  @JsonKey(name: 'card_number')
  final String? cardNumber;
  @override
  @JsonKey(name: 'expiry_date')
  final String? expiryDate;
  @override
  final String? cvv;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final int? id;

  @override
  String toString() {
    return 'CardModel(brand: $brand, lastFour: $lastFour, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, userId: $userId, updatedAt: $updatedAt, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.lastFour, lastFour) ||
                other.lastFour == lastFour) &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth) &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      lastFour,
      expiryMonth,
      expiryYear,
      cardNumber,
      expiryDate,
      cvv,
      userId,
      updatedAt,
      createdAt,
      id);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardModelImplToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {final String? brand,
      @JsonKey(name: 'last_four') final String? lastFour,
      @JsonKey(name: 'expiry_month') final String? expiryMonth,
      @JsonKey(name: 'expiry_year') final String? expiryYear,
      @JsonKey(name: 'card_number') final String? cardNumber,
      @JsonKey(name: 'expiry_date') final String? expiryDate,
      final String? cvv,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      final int? id}) = _$CardModelImpl;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$CardModelImpl.fromJson;

  @override
  String? get brand;
  @override
  @JsonKey(name: 'last_four')
  String? get lastFour;
  @override
  @JsonKey(name: 'expiry_month')
  String? get expiryMonth;
  @override
  @JsonKey(name: 'expiry_year')
  String? get expiryYear;
  @override
  @JsonKey(name: 'card_number')
  String? get cardNumber;
  @override
  @JsonKey(name: 'expiry_date')
  String? get expiryDate;
  @override
  String? get cvv;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  int? get id;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
