// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationResponseModel _$RegistrationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponseModel {
  String? get message => throw _privateConstructorUsedError;
  RegistrationResponseData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;

  /// Serializes this RegistrationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationResponseModelCopyWith<RegistrationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseModelCopyWith<$Res> {
  factory $RegistrationResponseModelCopyWith(RegistrationResponseModel value,
          $Res Function(RegistrationResponseModel) then) =
      _$RegistrationResponseModelCopyWithImpl<$Res, RegistrationResponseModel>;
  @useResult
  $Res call(
      {String? message,
      RegistrationResponseData? data,
      @JsonKey(name: 'user_id') int? userId});

  $RegistrationResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegistrationResponseModelCopyWithImpl<$Res,
        $Val extends RegistrationResponseModel>
    implements $RegistrationResponseModelCopyWith<$Res> {
  _$RegistrationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegistrationResponseData?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegistrationResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationResponseModelImplCopyWith<$Res>
    implements $RegistrationResponseModelCopyWith<$Res> {
  factory _$$RegistrationResponseModelImplCopyWith(
          _$RegistrationResponseModelImpl value,
          $Res Function(_$RegistrationResponseModelImpl) then) =
      __$$RegistrationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      RegistrationResponseData? data,
      @JsonKey(name: 'user_id') int? userId});

  @override
  $RegistrationResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RegistrationResponseModelImplCopyWithImpl<$Res>
    extends _$RegistrationResponseModelCopyWithImpl<$Res,
        _$RegistrationResponseModelImpl>
    implements _$$RegistrationResponseModelImplCopyWith<$Res> {
  __$$RegistrationResponseModelImplCopyWithImpl(
      _$RegistrationResponseModelImpl _value,
      $Res Function(_$RegistrationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$RegistrationResponseModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegistrationResponseData?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationResponseModelImpl implements _RegistrationResponseModel {
  const _$RegistrationResponseModelImpl(
      {this.message, this.data, @JsonKey(name: 'user_id') this.userId});

  factory _$RegistrationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationResponseModelImplFromJson(json);

  @override
  final String? message;
  @override
  final RegistrationResponseData? data;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;

  @override
  String toString() {
    return 'RegistrationResponseModel(message: $message, data: $data, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data, userId);

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationResponseModelImplCopyWith<_$RegistrationResponseModelImpl>
      get copyWith => __$$RegistrationResponseModelImplCopyWithImpl<
          _$RegistrationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationResponseModel implements RegistrationResponseModel {
  const factory _RegistrationResponseModel(
          {final String? message,
          final RegistrationResponseData? data,
          @JsonKey(name: 'user_id') final int? userId}) =
      _$RegistrationResponseModelImpl;

  factory _RegistrationResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationResponseModelImpl.fromJson;

  @override
  String? get message;
  @override
  RegistrationResponseData? get data;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;

  /// Create a copy of RegistrationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationResponseModelImplCopyWith<_$RegistrationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegistrationResponseData _$RegistrationResponseDataFromJson(
    Map<String, dynamic> json) {
  return _RegistrationResponseData.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponseData {
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_confirmation')
  bool? get ageConfirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_agreement')
  bool? get termsAgreement => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  int? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

  /// Serializes this RegistrationResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationResponseDataCopyWith<RegistrationResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseDataCopyWith<$Res> {
  factory $RegistrationResponseDataCopyWith(RegistrationResponseData value,
          $Res Function(RegistrationResponseData) then) =
      _$RegistrationResponseDataCopyWithImpl<$Res, RegistrationResponseData>;
  @useResult
  $Res call(
      {String? email,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') bool? ageConfirmation,
      @JsonKey(name: 'terms_agreement') bool? termsAgreement,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class _$RegistrationResponseDataCopyWithImpl<$Res,
        $Val extends RegistrationResponseData>
    implements $RegistrationResponseDataCopyWith<$Res> {
  _$RegistrationResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = freezed,
    Object? termsAgreement = freezed,
    Object? emailVerifiedAt = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationResponseDataImplCopyWith<$Res>
    implements $RegistrationResponseDataCopyWith<$Res> {
  factory _$$RegistrationResponseDataImplCopyWith(
          _$RegistrationResponseDataImpl value,
          $Res Function(_$RegistrationResponseDataImpl) then) =
      __$$RegistrationResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? country,
      @JsonKey(name: 'age_confirmation') bool? ageConfirmation,
      @JsonKey(name: 'terms_agreement') bool? termsAgreement,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class __$$RegistrationResponseDataImplCopyWithImpl<$Res>
    extends _$RegistrationResponseDataCopyWithImpl<$Res,
        _$RegistrationResponseDataImpl>
    implements _$$RegistrationResponseDataImplCopyWith<$Res> {
  __$$RegistrationResponseDataImplCopyWithImpl(
      _$RegistrationResponseDataImpl _value,
      $Res Function(_$RegistrationResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? ageConfirmation = freezed,
    Object? termsAgreement = freezed,
    Object? emailVerifiedAt = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$RegistrationResponseDataImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as bool?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoritesCount: freezed == favoritesCount
          ? _value.favoritesCount
          : favoritesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationResponseDataImpl implements _RegistrationResponseData {
  const _$RegistrationResponseDataImpl(
      {this.email,
      this.name,
      @JsonKey(name: 'last_name') this.lastName,
      this.gender,
      this.country,
      @JsonKey(name: 'age_confirmation') this.ageConfirmation,
      @JsonKey(name: 'terms_agreement') this.termsAgreement,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      this.id,
      @JsonKey(name: 'personal_rating') this.personalRating,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount});

  factory _$RegistrationResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationResponseDataImplFromJson(json);

  @override
  final String? email;
  @override
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  @JsonKey(name: 'age_confirmation')
  final bool? ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  final bool? termsAgreement;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final int? id;
  @override
  @JsonKey(name: 'personal_rating')
  final int? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'RegistrationResponseData(email: $email, name: $name, lastName: $lastName, gender: $gender, country: $country, ageConfirmation: $ageConfirmation, termsAgreement: $termsAgreement, emailVerifiedAt: $emailVerifiedAt, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, personalRating: $personalRating, personalRatingCount: $personalRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationResponseDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.ageConfirmation, ageConfirmation) ||
                other.ageConfirmation == ageConfirmation) &&
            (identical(other.termsAgreement, termsAgreement) ||
                other.termsAgreement == termsAgreement) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      name,
      lastName,
      gender,
      country,
      ageConfirmation,
      termsAgreement,
      emailVerifiedAt,
      updatedAt,
      createdAt,
      id,
      personalRating,
      personalRatingCount,
      isFavorited,
      favoritesCount);

  /// Create a copy of RegistrationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationResponseDataImplCopyWith<_$RegistrationResponseDataImpl>
      get copyWith => __$$RegistrationResponseDataImplCopyWithImpl<
          _$RegistrationResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationResponseDataImplToJson(
      this,
    );
  }
}

abstract class _RegistrationResponseData implements RegistrationResponseData {
  const factory _RegistrationResponseData(
      {final String? email,
      final String? name,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? gender,
      final String? country,
      @JsonKey(name: 'age_confirmation') final bool? ageConfirmation,
      @JsonKey(name: 'terms_agreement') final bool? termsAgreement,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      final int? id,
      @JsonKey(name: 'personal_rating') final int? personalRating,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'is_favorited') final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      final int? favoritesCount}) = _$RegistrationResponseDataImpl;

  factory _RegistrationResponseData.fromJson(Map<String, dynamic> json) =
      _$RegistrationResponseDataImpl.fromJson;

  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  @JsonKey(name: 'age_confirmation')
  bool? get ageConfirmation;
  @override
  @JsonKey(name: 'terms_agreement')
  bool? get termsAgreement;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  int? get id;
  @override
  @JsonKey(name: 'personal_rating')
  int? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of RegistrationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationResponseDataImplCopyWith<_$RegistrationResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
