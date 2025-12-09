// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  int? get id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get floor => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get frontDoor => throw _privateConstructorUsedError;
  String? get intercomCode => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_primary')
  int? get isPrimary => throw _privateConstructorUsedError;

  /// Serializes this AddressModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {int? id,
      String? country,
      String? city,
      String? street,
      String? floor,
      String? apartment,
      String? frontDoor,
      String? intercomCode,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'is_primary') int? isPrimary});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDoor: freezed == frontDoor
          ? _value.frontDoor
          : frontDoor // ignore: cast_nullable_to_non_nullable
              as String?,
      intercomCode: freezed == intercomCode
          ? _value.intercomCode
          : intercomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressModelImplCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$AddressModelImplCopyWith(
          _$AddressModelImpl value, $Res Function(_$AddressModelImpl) then) =
      __$$AddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? country,
      String? city,
      String? street,
      String? floor,
      String? apartment,
      String? frontDoor,
      String? intercomCode,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'is_primary') int? isPrimary});
}

/// @nodoc
class __$$AddressModelImplCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$AddressModelImpl>
    implements _$$AddressModelImplCopyWith<$Res> {
  __$$AddressModelImplCopyWithImpl(
      _$AddressModelImpl _value, $Res Function(_$AddressModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? floor = freezed,
    Object? apartment = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(_$AddressModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDoor: freezed == frontDoor
          ? _value.frontDoor
          : frontDoor // ignore: cast_nullable_to_non_nullable
              as String?,
      intercomCode: freezed == intercomCode
          ? _value.intercomCode
          : intercomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressModelImpl implements _AddressModel {
  const _$AddressModelImpl(
      {this.id,
      this.country,
      this.city,
      this.street,
      this.floor,
      this.apartment,
      this.frontDoor,
      this.intercomCode,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'is_primary') this.isPrimary});

  factory _$AddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? floor;
  @override
  final String? apartment;
  @override
  final String? frontDoor;
  @override
  final String? intercomCode;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(name: 'is_primary')
  final int? isPrimary;

  @override
  String toString() {
    return 'AddressModel(id: $id, country: $country, city: $city, street: $street, floor: $floor, apartment: $apartment, frontDoor: $frontDoor, intercomCode: $intercomCode, latitude: $latitude, longitude: $longitude, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.frontDoor, frontDoor) ||
                other.frontDoor == frontDoor) &&
            (identical(other.intercomCode, intercomCode) ||
                other.intercomCode == intercomCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, country, city, street, floor,
      apartment, frontDoor, intercomCode, latitude, longitude, isPrimary);

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      __$$AddressModelImplCopyWithImpl<_$AddressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressModelImplToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {final int? id,
      final String? country,
      final String? city,
      final String? street,
      final String? floor,
      final String? apartment,
      final String? frontDoor,
      final String? intercomCode,
      final String? latitude,
      final String? longitude,
      @JsonKey(name: 'is_primary') final int? isPrimary}) = _$AddressModelImpl;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$AddressModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get street;
  @override
  String? get floor;
  @override
  String? get apartment;
  @override
  String? get frontDoor;
  @override
  String? get intercomCode;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(name: 'is_primary')
  int? get isPrimary;

  /// Create a copy of AddressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressModelImplCopyWith<_$AddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
