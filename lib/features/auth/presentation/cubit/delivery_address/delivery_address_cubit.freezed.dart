// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryAddressState {
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get house => throw _privateConstructorUsedError;
  String get apartment => throw _privateConstructorUsedError;
  String get entrance => throw _privateConstructorUsedError;
  String get index => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAddressStateCopyWith<DeliveryAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressStateCopyWith<$Res> {
  factory $DeliveryAddressStateCopyWith(DeliveryAddressState value,
          $Res Function(DeliveryAddressState) then) =
      _$DeliveryAddressStateCopyWithImpl<$Res, DeliveryAddressState>;
  @useResult
  $Res call(
      {String country,
      String city,
      String street,
      String house,
      String apartment,
      String entrance,
      String index});
}

/// @nodoc
class _$DeliveryAddressStateCopyWithImpl<$Res,
        $Val extends DeliveryAddressState>
    implements $DeliveryAddressStateCopyWith<$Res> {
  _$DeliveryAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? street = null,
    Object? house = null,
    Object? apartment = null,
    Object? entrance = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: null == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryAddressStateImplCopyWith<$Res>
    implements $DeliveryAddressStateCopyWith<$Res> {
  factory _$$DeliveryAddressStateImplCopyWith(_$DeliveryAddressStateImpl value,
          $Res Function(_$DeliveryAddressStateImpl) then) =
      __$$DeliveryAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String city,
      String street,
      String house,
      String apartment,
      String entrance,
      String index});
}

/// @nodoc
class __$$DeliveryAddressStateImplCopyWithImpl<$Res>
    extends _$DeliveryAddressStateCopyWithImpl<$Res, _$DeliveryAddressStateImpl>
    implements _$$DeliveryAddressStateImplCopyWith<$Res> {
  __$$DeliveryAddressStateImplCopyWithImpl(_$DeliveryAddressStateImpl _value,
      $Res Function(_$DeliveryAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? street = null,
    Object? house = null,
    Object? apartment = null,
    Object? entrance = null,
    Object? index = null,
  }) {
    return _then(_$DeliveryAddressStateImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: null == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryAddressStateImpl implements _DeliveryAddressState {
  const _$DeliveryAddressStateImpl(
      {this.country = '',
      this.city = '',
      this.street = '',
      this.house = '',
      this.apartment = '',
      this.entrance = '',
      this.index = ''});

  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String house;
  @override
  @JsonKey()
  final String apartment;
  @override
  @JsonKey()
  final String entrance;
  @override
  @JsonKey()
  final String index;

  @override
  String toString() {
    return 'DeliveryAddressState(country: $country, city: $city, street: $street, house: $house, apartment: $apartment, entrance: $entrance, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressStateImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, country, city, street, house, apartment, entrance, index);

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAddressStateImplCopyWith<_$DeliveryAddressStateImpl>
      get copyWith =>
          __$$DeliveryAddressStateImplCopyWithImpl<_$DeliveryAddressStateImpl>(
              this, _$identity);
}

abstract class _DeliveryAddressState implements DeliveryAddressState {
  const factory _DeliveryAddressState(
      {final String country,
      final String city,
      final String street,
      final String house,
      final String apartment,
      final String entrance,
      final String index}) = _$DeliveryAddressStateImpl;

  @override
  String get country;
  @override
  String get city;
  @override
  String get street;
  @override
  String get house;
  @override
  String get apartment;
  @override
  String get entrance;
  @override
  String get index;

  /// Create a copy of DeliveryAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAddressStateImplCopyWith<_$DeliveryAddressStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
