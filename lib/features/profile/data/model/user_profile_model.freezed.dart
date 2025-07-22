// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  String? get message => throw _privateConstructorUsedError;
  UserProfileData? get data => throw _privateConstructorUsedError;

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call({String? message, UserProfileData? data});

  $UserProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
    ) as $Val);
  }

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(_$UserProfileModelImpl value,
          $Res Function(_$UserProfileModelImpl) then) =
      __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, UserProfileData? data});

  @override
  $UserProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(_$UserProfileModelImpl _value,
      $Res Function(_$UserProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserProfileModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl({this.message, this.data});

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  final String? message;
  @override
  final UserProfileData? data;

  @override
  String toString() {
    return 'UserProfileModel(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
      {final String? message,
      final UserProfileData? data}) = _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  String? get message;
  @override
  UserProfileData? get data;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_agreement')
  int? get termsAgreement => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_confirmation')
  int? get ageConfirmation => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_business')
  String? get imageBusiness => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get sms => throw _privateConstructorUsedError;
  String? get push => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_email')
  String? get sendEmail => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_tokens')
  List<String>? get fcmTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  int? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating')
  int? get businessRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating_count')
  int? get businessRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount => throw _privateConstructorUsedError;

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      String? phone,
      String? gender,
      String? country,
      @JsonKey(name: 'terms_agreement') int? termsAgreement,
      @JsonKey(name: 'age_confirmation') int? ageConfirmation,
      String? role,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      @JsonKey(name: 'business_id') int? businessId,
      String? visibility,
      String? sms,
      String? push,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? status,
      @JsonKey(name: 'fcm_tokens') List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      String? address,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'business_rating') int? businessRating,
      @JsonKey(name: 'business_rating_count') int? businessRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? termsAgreement = freezed,
    Object? ageConfirmation = freezed,
    Object? role = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? businessId = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? push = freezed,
    Object? sendEmail = freezed,
    Object? status = freezed,
    Object? fcmTokens = freezed,
    Object? emailVerifiedAt = freezed,
    Object? address = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? businessRating = freezed,
    Object? businessRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
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
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int?,
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmTokens: freezed == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRating: freezed == businessRating
          ? _value.businessRating
          : businessRating // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRatingCount: freezed == businessRatingCount
          ? _value.businessRatingCount
          : businessRatingCount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      String? phone,
      String? gender,
      String? country,
      @JsonKey(name: 'terms_agreement') int? termsAgreement,
      @JsonKey(name: 'age_confirmation') int? ageConfirmation,
      String? role,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? description,
      String? lang,
      @JsonKey(name: 'business_id') int? businessId,
      String? visibility,
      String? sms,
      String? push,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? status,
      @JsonKey(name: 'fcm_tokens') List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      String? address,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'business_rating') int? businessRating,
      @JsonKey(name: 'business_rating_count') int? businessRatingCount,
      @JsonKey(name: 'is_favorited') bool? isFavorited,
      @JsonKey(name: 'favorites_count') int? favoritesCount});
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? country = freezed,
    Object? termsAgreement = freezed,
    Object? ageConfirmation = freezed,
    Object? role = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? businessId = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? push = freezed,
    Object? sendEmail = freezed,
    Object? status = freezed,
    Object? fcmTokens = freezed,
    Object? emailVerifiedAt = freezed,
    Object? address = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? businessRating = freezed,
    Object? businessRatingCount = freezed,
    Object? isFavorited = freezed,
    Object? favoritesCount = freezed,
  }) {
    return _then(_$UserProfileDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAgreement: freezed == termsAgreement
          ? _value.termsAgreement
          : termsAgreement // ignore: cast_nullable_to_non_nullable
              as int?,
      ageConfirmation: freezed == ageConfirmation
          ? _value.ageConfirmation
          : ageConfirmation // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmTokens: freezed == fcmTokens
          ? _value._fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRating: freezed == businessRating
          ? _value.businessRating
          : businessRating // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRatingCount: freezed == businessRatingCount
          ? _value.businessRatingCount
          : businessRatingCount // ignore: cast_nullable_to_non_nullable
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
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      this.phone,
      this.gender,
      this.country,
      @JsonKey(name: 'terms_agreement') this.termsAgreement,
      @JsonKey(name: 'age_confirmation') this.ageConfirmation,
      this.role,
      this.image,
      @JsonKey(name: 'image_business') this.imageBusiness,
      this.description,
      this.lang,
      @JsonKey(name: 'business_id') this.businessId,
      this.visibility,
      this.sms,
      this.push,
      @JsonKey(name: 'send_email') this.sendEmail,
      this.status,
      @JsonKey(name: 'fcm_tokens') final List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      this.address,
      @JsonKey(name: 'personal_rating') this.personalRating,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'business_rating') this.businessRating,
      @JsonKey(name: 'business_rating_count') this.businessRatingCount,
      @JsonKey(name: 'is_favorited') this.isFavorited,
      @JsonKey(name: 'favorites_count') this.favoritesCount})
      : _fcmTokens = fcmTokens;

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  @JsonKey(name: 'terms_agreement')
  final int? termsAgreement;
  @override
  @JsonKey(name: 'age_confirmation')
  final int? ageConfirmation;
  @override
  final String? role;
  @override
  final String? image;
  @override
  @JsonKey(name: 'image_business')
  final String? imageBusiness;
  @override
  final String? description;
  @override
  final String? lang;
  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  final String? visibility;
  @override
  final String? sms;
  @override
  final String? push;
  @override
  @JsonKey(name: 'send_email')
  final String? sendEmail;
  @override
  final String? status;
  final List<String>? _fcmTokens;
  @override
  @JsonKey(name: 'fcm_tokens')
  List<String>? get fcmTokens {
    final value = _fcmTokens;
    if (value == null) return null;
    if (_fcmTokens is EqualUnmodifiableListView) return _fcmTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  final String? address;
  @override
  @JsonKey(name: 'personal_rating')
  final int? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'business_rating')
  final int? businessRating;
  @override
  @JsonKey(name: 'business_rating_count')
  final int? businessRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  final int? favoritesCount;

  @override
  String toString() {
    return 'UserProfileData(id: $id, name: $name, lastName: $lastName, email: $email, phone: $phone, gender: $gender, country: $country, termsAgreement: $termsAgreement, ageConfirmation: $ageConfirmation, role: $role, image: $image, imageBusiness: $imageBusiness, description: $description, lang: $lang, businessId: $businessId, visibility: $visibility, sms: $sms, push: $push, sendEmail: $sendEmail, status: $status, fcmTokens: $fcmTokens, emailVerifiedAt: $emailVerifiedAt, address: $address, personalRating: $personalRating, personalRatingCount: $personalRatingCount, businessRating: $businessRating, businessRatingCount: $businessRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.termsAgreement, termsAgreement) ||
                other.termsAgreement == termsAgreement) &&
            (identical(other.ageConfirmation, ageConfirmation) ||
                other.ageConfirmation == ageConfirmation) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageBusiness, imageBusiness) ||
                other.imageBusiness == imageBusiness) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._fcmTokens, _fcmTokens) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.businessRating, businessRating) ||
                other.businessRating == businessRating) &&
            (identical(other.businessRatingCount, businessRatingCount) ||
                other.businessRatingCount == businessRatingCount) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.favoritesCount, favoritesCount) ||
                other.favoritesCount == favoritesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        lastName,
        email,
        phone,
        gender,
        country,
        termsAgreement,
        ageConfirmation,
        role,
        image,
        imageBusiness,
        description,
        lang,
        businessId,
        visibility,
        sms,
        push,
        sendEmail,
        status,
        const DeepCollectionEquality().hash(_fcmTokens),
        emailVerifiedAt,
        address,
        personalRating,
        personalRatingCount,
        businessRating,
        businessRatingCount,
        isFavorited,
        favoritesCount
      ]);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {final int? id,
      final String? name,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? email,
      final String? phone,
      final String? gender,
      final String? country,
      @JsonKey(name: 'terms_agreement') final int? termsAgreement,
      @JsonKey(name: 'age_confirmation') final int? ageConfirmation,
      final String? role,
      final String? image,
      @JsonKey(name: 'image_business') final String? imageBusiness,
      final String? description,
      final String? lang,
      @JsonKey(name: 'business_id') final int? businessId,
      final String? visibility,
      final String? sms,
      final String? push,
      @JsonKey(name: 'send_email') final String? sendEmail,
      final String? status,
      @JsonKey(name: 'fcm_tokens') final List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      final String? address,
      @JsonKey(name: 'personal_rating') final int? personalRating,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'business_rating') final int? businessRating,
      @JsonKey(name: 'business_rating_count') final int? businessRatingCount,
      @JsonKey(name: 'is_favorited') final bool? isFavorited,
      @JsonKey(name: 'favorites_count')
      final int? favoritesCount}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  @JsonKey(name: 'terms_agreement')
  int? get termsAgreement;
  @override
  @JsonKey(name: 'age_confirmation')
  int? get ageConfirmation;
  @override
  String? get role;
  @override
  String? get image;
  @override
  @JsonKey(name: 'image_business')
  String? get imageBusiness;
  @override
  String? get description;
  @override
  String? get lang;
  @override
  @JsonKey(name: 'business_id')
  int? get businessId;
  @override
  String? get visibility;
  @override
  String? get sms;
  @override
  String? get push;
  @override
  @JsonKey(name: 'send_email')
  String? get sendEmail;
  @override
  String? get status;
  @override
  @JsonKey(name: 'fcm_tokens')
  List<String>? get fcmTokens;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  String? get address;
  @override
  @JsonKey(name: 'personal_rating')
  int? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'business_rating')
  int? get businessRating;
  @override
  @JsonKey(name: 'business_rating_count')
  int? get businessRatingCount;
  @override
  @JsonKey(name: 'is_favorited')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count')
  int? get favoritesCount;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
