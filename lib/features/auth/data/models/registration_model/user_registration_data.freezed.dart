// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegistrationData _$UserRegistrationDataFromJson(Map<String, dynamic> json) {
  return _UserRegistrationData.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationData {
// بيانات التسجيل
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError; // بيانات OTP
  String? get token => throw _privateConstructorUsedError; // بيانات العنوان
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get house => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get entrance => throw _privateConstructorUsedError;
  String? get index => throw _privateConstructorUsedError; // بيانات الاهتمامات
  List<String>? get interests => throw _privateConstructorUsedError;
  List<String>? get detailedInterests =>
      throw _privateConstructorUsedError; // شروط الاستخدام
  bool? get isAbove18 => throw _privateConstructorUsedError;
  bool? get agreedToTerms => throw _privateConstructorUsedError;

  /// Serializes this UserRegistrationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegistrationDataCopyWith<UserRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationDataCopyWith<$Res> {
  factory $UserRegistrationDataCopyWith(UserRegistrationData value,
          $Res Function(UserRegistrationData) then) =
      _$UserRegistrationDataCopyWithImpl<$Res, UserRegistrationData>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? gender,
      String? token,
      String? country,
      String? city,
      String? street,
      String? house,
      String? apartment,
      String? entrance,
      String? index,
      List<String>? interests,
      List<String>? detailedInterests,
      bool? isAbove18,
      bool? agreedToTerms});
}

/// @nodoc
class _$UserRegistrationDataCopyWithImpl<$Res,
        $Val extends UserRegistrationData>
    implements $UserRegistrationDataCopyWith<$Res> {
  _$UserRegistrationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? token = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? house = freezed,
    Object? apartment = freezed,
    Object? entrance = freezed,
    Object? index = freezed,
    Object? interests = freezed,
    Object? detailedInterests = freezed,
    Object? isAbove18 = freezed,
    Object? agreedToTerms = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      detailedInterests: freezed == detailedInterests
          ? _value.detailedInterests
          : detailedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAbove18: freezed == isAbove18
          ? _value.isAbove18
          : isAbove18 // ignore: cast_nullable_to_non_nullable
              as bool?,
      agreedToTerms: freezed == agreedToTerms
          ? _value.agreedToTerms
          : agreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationDataImplCopyWith<$Res>
    implements $UserRegistrationDataCopyWith<$Res> {
  factory _$$UserRegistrationDataImplCopyWith(_$UserRegistrationDataImpl value,
          $Res Function(_$UserRegistrationDataImpl) then) =
      __$$UserRegistrationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? gender,
      String? token,
      String? country,
      String? city,
      String? street,
      String? house,
      String? apartment,
      String? entrance,
      String? index,
      List<String>? interests,
      List<String>? detailedInterests,
      bool? isAbove18,
      bool? agreedToTerms});
}

/// @nodoc
class __$$UserRegistrationDataImplCopyWithImpl<$Res>
    extends _$UserRegistrationDataCopyWithImpl<$Res, _$UserRegistrationDataImpl>
    implements _$$UserRegistrationDataImplCopyWith<$Res> {
  __$$UserRegistrationDataImplCopyWithImpl(_$UserRegistrationDataImpl _value,
      $Res Function(_$UserRegistrationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? token = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? house = freezed,
    Object? apartment = freezed,
    Object? entrance = freezed,
    Object? index = freezed,
    Object? interests = freezed,
    Object? detailedInterests = freezed,
    Object? isAbove18 = freezed,
    Object? agreedToTerms = freezed,
  }) {
    return _then(_$UserRegistrationDataImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: freezed == apartment
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      detailedInterests: freezed == detailedInterests
          ? _value._detailedInterests
          : detailedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAbove18: freezed == isAbove18
          ? _value.isAbove18
          : isAbove18 // ignore: cast_nullable_to_non_nullable
              as bool?,
      agreedToTerms: freezed == agreedToTerms
          ? _value.agreedToTerms
          : agreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationDataImpl implements _UserRegistrationData {
  const _$UserRegistrationDataImpl(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.gender,
      this.token,
      this.country,
      this.city,
      this.street,
      this.house,
      this.apartment,
      this.entrance,
      this.index,
      final List<String>? interests,
      final List<String>? detailedInterests,
      this.isAbove18,
      this.agreedToTerms})
      : _interests = interests,
        _detailedInterests = detailedInterests;

  factory _$UserRegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationDataImplFromJson(json);

// بيانات التسجيل
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? gender;
// بيانات OTP
  @override
  final String? token;
// بيانات العنوان
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? house;
  @override
  final String? apartment;
  @override
  final String? entrance;
  @override
  final String? index;
// بيانات الاهتمامات
  final List<String>? _interests;
// بيانات الاهتمامات
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _detailedInterests;
  @override
  List<String>? get detailedInterests {
    final value = _detailedInterests;
    if (value == null) return null;
    if (_detailedInterests is EqualUnmodifiableListView)
      return _detailedInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// شروط الاستخدام
  @override
  final bool? isAbove18;
  @override
  final bool? agreedToTerms;

  @override
  String toString() {
    return 'UserRegistrationData(firstName: $firstName, lastName: $lastName, email: $email, password: $password, gender: $gender, token: $token, country: $country, city: $city, street: $street, house: $house, apartment: $apartment, entrance: $entrance, index: $index, interests: $interests, detailedInterests: $detailedInterests, isAbove18: $isAbove18, agreedToTerms: $agreedToTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._detailedInterests, _detailedInterests) &&
            (identical(other.isAbove18, isAbove18) ||
                other.isAbove18 == isAbove18) &&
            (identical(other.agreedToTerms, agreedToTerms) ||
                other.agreedToTerms == agreedToTerms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      email,
      password,
      gender,
      token,
      country,
      city,
      street,
      house,
      apartment,
      entrance,
      index,
      const DeepCollectionEquality().hash(_interests),
      const DeepCollectionEquality().hash(_detailedInterests),
      isAbove18,
      agreedToTerms);

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith =>
          __$$UserRegistrationDataImplCopyWithImpl<_$UserRegistrationDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationDataImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationData implements UserRegistrationData {
  const factory _UserRegistrationData(
      {final String? firstName,
      final String? lastName,
      final String? email,
      final String? password,
      final String? gender,
      final String? token,
      final String? country,
      final String? city,
      final String? street,
      final String? house,
      final String? apartment,
      final String? entrance,
      final String? index,
      final List<String>? interests,
      final List<String>? detailedInterests,
      final bool? isAbove18,
      final bool? agreedToTerms}) = _$UserRegistrationDataImpl;

  factory _UserRegistrationData.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationDataImpl.fromJson;

// بيانات التسجيل
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get gender; // بيانات OTP
  @override
  String? get token; // بيانات العنوان
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get street;
  @override
  String? get house;
  @override
  String? get apartment;
  @override
  String? get entrance;
  @override
  String? get index; // بيانات الاهتمامات
  @override
  List<String>? get interests;
  @override
  List<String>? get detailedInterests; // شروط الاستخدام
  @override
  bool? get isAbove18;
  @override
  bool? get agreedToTerms;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
