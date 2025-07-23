// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) {
  return _DeliveryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'Floor')
  String? get floor => throw _privateConstructorUsedError;
  @JsonKey(name: 'Front_door')
  String? get frontDoor => throw _privateConstructorUsedError;
  @JsonKey(name: 'Intercom_code')
  String? get intercomCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Apartment')
  String? get apartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_primary')
  int? get isPrimary => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DeliveryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryModelCopyWith<DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModelCopyWith<$Res> {
  factory $DeliveryModelCopyWith(
          DeliveryModel value, $Res Function(DeliveryModel) then) =
      _$DeliveryModelCopyWithImpl<$Res, DeliveryModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? street,
      String? city,
      @JsonKey(name: 'Floor') String? floor,
      @JsonKey(name: 'Front_door') String? frontDoor,
      @JsonKey(name: 'Intercom_code') String? intercomCode,
      @JsonKey(name: 'Apartment') String? apartment,
      @JsonKey(name: 'is_primary') int? isPrimary,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res, $Val extends DeliveryModel>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? floor = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? apartment = freezed,
    Object? isPrimary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDoor: freezed == frontDoor
          ? _value.frontDoor
          : frontDoor // ignore: cast_nullable_to_non_nullable
              as String?,
      intercomCode: freezed == intercomCode
          ? _value.intercomCode
          : intercomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DeliveryModelImplCopyWith<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  factory _$$DeliveryModelImplCopyWith(
          _$DeliveryModelImpl value, $Res Function(_$DeliveryModelImpl) then) =
      __$$DeliveryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      String? street,
      String? city,
      @JsonKey(name: 'Floor') String? floor,
      @JsonKey(name: 'Front_door') String? frontDoor,
      @JsonKey(name: 'Intercom_code') String? intercomCode,
      @JsonKey(name: 'Apartment') String? apartment,
      @JsonKey(name: 'is_primary') int? isPrimary,
      String? latitude,
      String? longitude,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$DeliveryModelImplCopyWithImpl<$Res>
    extends _$DeliveryModelCopyWithImpl<$Res, _$DeliveryModelImpl>
    implements _$$DeliveryModelImplCopyWith<$Res> {
  __$$DeliveryModelImplCopyWithImpl(
      _$DeliveryModelImpl _value, $Res Function(_$DeliveryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? floor = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? apartment = freezed,
    Object? isPrimary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DeliveryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      frontDoor: freezed == frontDoor
          ? _value.frontDoor
          : frontDoor // ignore: cast_nullable_to_non_nullable
              as String?,
      intercomCode: freezed == intercomCode
          ? _value.intercomCode
          : intercomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
class _$DeliveryModelImpl implements _DeliveryModel {
  const _$DeliveryModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      this.street,
      this.city,
      @JsonKey(name: 'Floor') this.floor,
      @JsonKey(name: 'Front_door') this.frontDoor,
      @JsonKey(name: 'Intercom_code') this.intercomCode,
      @JsonKey(name: 'Apartment') this.apartment,
      @JsonKey(name: 'is_primary') this.isPrimary,
      this.latitude,
      this.longitude,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DeliveryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? street;
  @override
  final String? city;
  @override
  @JsonKey(name: 'Floor')
  final String? floor;
  @override
  @JsonKey(name: 'Front_door')
  final String? frontDoor;
  @override
  @JsonKey(name: 'Intercom_code')
  final String? intercomCode;
  @override
  @JsonKey(name: 'Apartment')
  final String? apartment;
  @override
  @JsonKey(name: 'is_primary')
  final int? isPrimary;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'DeliveryModel(id: $id, userId: $userId, street: $street, city: $city, floor: $floor, frontDoor: $frontDoor, intercomCode: $intercomCode, apartment: $apartment, isPrimary: $isPrimary, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.frontDoor, frontDoor) ||
                other.frontDoor == frontDoor) &&
            (identical(other.intercomCode, intercomCode) ||
                other.intercomCode == intercomCode) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
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
      userId,
      street,
      city,
      floor,
      frontDoor,
      intercomCode,
      apartment,
      isPrimary,
      latitude,
      longitude,
      createdAt,
      updatedAt);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      __$$DeliveryModelImplCopyWithImpl<_$DeliveryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryModel implements DeliveryModel {
  const factory _DeliveryModel(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          final String? street,
          final String? city,
          @JsonKey(name: 'Floor') final String? floor,
          @JsonKey(name: 'Front_door') final String? frontDoor,
          @JsonKey(name: 'Intercom_code') final String? intercomCode,
          @JsonKey(name: 'Apartment') final String? apartment,
          @JsonKey(name: 'is_primary') final int? isPrimary,
          final String? latitude,
          final String? longitude,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$DeliveryModelImpl;

  factory _DeliveryModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get street;
  @override
  String? get city;
  @override
  @JsonKey(name: 'Floor')
  String? get floor;
  @override
  @JsonKey(name: 'Front_door')
  String? get frontDoor;
  @override
  @JsonKey(name: 'Intercom_code')
  String? get intercomCode;
  @override
  @JsonKey(name: 'Apartment')
  String? get apartment;
  @override
  @JsonKey(name: 'is_primary')
  int? get isPrimary;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
