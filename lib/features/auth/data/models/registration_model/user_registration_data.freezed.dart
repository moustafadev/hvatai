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
  @JsonKey(name: 'name', includeIfNull: false)
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', includeIfNull: false)
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'google_id', includeIfNull: false)
  String? get googleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'apple_id', includeIfNull: false)
  String? get appleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation', includeIfNull: false)
  String? get passwordConfirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_password', includeIfNull: false)
  String? get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
  bool? get agreedToTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
  bool? get isAbove18 => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', includeIfNull: false)
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: _imageFromJson)
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'image_business', includeIfNull: false, fromJson: _imageFromJson)
  String? get imageBusiness => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_id', includeIfNull: false)
  int? get businessId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get visibility => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get sms => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get push => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
  String? get sendEmail => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_tokens', includeIfNull: false)
  List<String>? get fcmTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at', includeIfNull: false)
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating', includeIfNull: false)
  int? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count', includeIfNull: false)
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating', includeIfNull: false)
  int? get businessRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating_count', includeIfNull: false)
  int? get businessRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorited', includeIfNull: false)
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_count', includeIfNull: false)
  int? get favoritesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'Floor', includeIfNull: false)
  String? get floor => throw _privateConstructorUsedError;
  @JsonKey(name: 'Front_door', includeIfNull: false)
  String? get frontDoor => throw _privateConstructorUsedError;
  @JsonKey(name: 'Intercom_code', includeIfNull: false)
  String? get intercomCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Apartment', includeIfNull: false)
  String? get apartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_primary', includeIfNull: false)
  int? get isPrimary => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', includeIfNull: false)
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'wallet_balance', includeIfNull: false, fromJson: toStringNullable)
  String? get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_id', includeIfNull: false)
  int? get walletId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<String>? get interests => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<String>? get detailedInterests => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribers_count', includeIfNull: false)
  int? get subscribersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
  int? get subscribedUsersCount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'name', includeIfNull: false) String? firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
      @JsonKey(name: 'google_id', includeIfNull: false) String? googleId,
      @JsonKey(name: 'apple_id', includeIfNull: false) String? appleId,
      @JsonKey(name: 'password_confirmation', includeIfNull: false)
      String? passwordConfirmation,
      @JsonKey(name: 'current_password', includeIfNull: false)
      String? currentPassword,
      @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
      bool? agreedToTerms,
      @JsonKey(
          name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
      bool? isAbove18,
      @JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? token,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false) String? gender,
      @JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'user_id', includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false) int? index,
      @JsonKey(includeIfNull: false) String? city,
      @JsonKey(includeIfNull: false) String? country,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? role,
      @JsonKey(includeIfNull: false, fromJson: _imageFromJson) String? image,
      @JsonKey(
          name: 'image_business',
          includeIfNull: false,
          fromJson: _imageFromJson)
      String? imageBusiness,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) String? lang,
      @JsonKey(name: 'business_id', includeIfNull: false) int? businessId,
      @JsonKey(includeIfNull: false) String? visibility,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? sms,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? push,
      @JsonKey(
          name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
      String? sendEmail,
      @JsonKey(includeIfNull: false) String? status,
      @JsonKey(name: 'fcm_tokens', includeIfNull: false)
      List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at', includeIfNull: false)
      String? emailVerifiedAt,
      @JsonKey(includeIfNull: false) String? address,
      @JsonKey(name: 'personal_rating', includeIfNull: false)
      int? personalRating,
      @JsonKey(name: 'personal_rating_count', includeIfNull: false)
      int? personalRatingCount,
      @JsonKey(name: 'business_rating', includeIfNull: false)
      int? businessRating,
      @JsonKey(name: 'business_rating_count', includeIfNull: false)
      int? businessRatingCount,
      @JsonKey(name: 'is_favorited', includeIfNull: false) bool? isFavorited,
      @JsonKey(name: 'favorites_count', includeIfNull: false)
      int? favoritesCount,
      @JsonKey(name: 'Floor', includeIfNull: false) String? floor,
      @JsonKey(name: 'Front_door', includeIfNull: false) String? frontDoor,
      @JsonKey(name: 'Intercom_code', includeIfNull: false)
      String? intercomCode,
      @JsonKey(name: 'Apartment', includeIfNull: false) String? apartment,
      @JsonKey(name: 'is_primary', includeIfNull: false) int? isPrimary,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      String? latitude,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      String? longitude,
      @JsonKey(name: 'created_at', includeIfNull: false) String? createdAt,
      @JsonKey(
          name: 'wallet_balance',
          includeIfNull: false,
          fromJson: toStringNullable)
      String? walletBalance,
      @JsonKey(name: 'wallet_id', includeIfNull: false) int? walletId,
      @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
      @JsonKey(includeIfNull: false) List<String>? interests,
      @JsonKey(includeIfNull: false) List<String>? detailedInterests,
      @JsonKey(name: 'subscribers_count', includeIfNull: false)
      int? subscribersCount,
      @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
      int? subscribedUsersCount});
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
    Object? googleId = freezed,
    Object? appleId = freezed,
    Object? passwordConfirmation = freezed,
    Object? currentPassword = freezed,
    Object? agreedToTerms = freezed,
    Object? isAbove18 = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? street = freezed,
    Object? index = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? phone = freezed,
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
    Object? floor = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? apartment = freezed,
    Object? isPrimary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? walletBalance = freezed,
    Object? walletId = freezed,
    Object? updatedAt = freezed,
    Object? interests = freezed,
    Object? detailedInterests = freezed,
    Object? subscribersCount = freezed,
    Object? subscribedUsersCount = freezed,
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
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      appleId: freezed == appleId
          ? _value.appleId
          : appleId // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      agreedToTerms: freezed == agreedToTerms
          ? _value.agreedToTerms
          : agreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAbove18: freezed == isAbove18
          ? _value.isAbove18
          : isAbove18 // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
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
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      detailedInterests: freezed == detailedInterests
          ? _value.detailedInterests
          : detailedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribedUsersCount: freezed == subscribedUsersCount
          ? _value.subscribedUsersCount
          : subscribedUsersCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: 'name', includeIfNull: false) String? firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) String? lastName,
      @JsonKey(name: 'google_id', includeIfNull: false) String? googleId,
      @JsonKey(name: 'apple_id', includeIfNull: false) String? appleId,
      @JsonKey(name: 'password_confirmation', includeIfNull: false)
      String? passwordConfirmation,
      @JsonKey(name: 'current_password', includeIfNull: false)
      String? currentPassword,
      @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
      bool? agreedToTerms,
      @JsonKey(
          name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
      bool? isAbove18,
      @JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? token,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false) String? gender,
      @JsonKey(includeIfNull: false) int? id,
      @JsonKey(name: 'user_id', includeIfNull: false) int? userId,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false) int? index,
      @JsonKey(includeIfNull: false) String? city,
      @JsonKey(includeIfNull: false) String? country,
      @JsonKey(includeIfNull: false) String? phone,
      @JsonKey(includeIfNull: false) String? role,
      @JsonKey(includeIfNull: false, fromJson: _imageFromJson) String? image,
      @JsonKey(
          name: 'image_business',
          includeIfNull: false,
          fromJson: _imageFromJson)
      String? imageBusiness,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) String? lang,
      @JsonKey(name: 'business_id', includeIfNull: false) int? businessId,
      @JsonKey(includeIfNull: false) String? visibility,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? sms,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) String? push,
      @JsonKey(
          name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
      String? sendEmail,
      @JsonKey(includeIfNull: false) String? status,
      @JsonKey(name: 'fcm_tokens', includeIfNull: false)
      List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at', includeIfNull: false)
      String? emailVerifiedAt,
      @JsonKey(includeIfNull: false) String? address,
      @JsonKey(name: 'personal_rating', includeIfNull: false)
      int? personalRating,
      @JsonKey(name: 'personal_rating_count', includeIfNull: false)
      int? personalRatingCount,
      @JsonKey(name: 'business_rating', includeIfNull: false)
      int? businessRating,
      @JsonKey(name: 'business_rating_count', includeIfNull: false)
      int? businessRatingCount,
      @JsonKey(name: 'is_favorited', includeIfNull: false) bool? isFavorited,
      @JsonKey(name: 'favorites_count', includeIfNull: false)
      int? favoritesCount,
      @JsonKey(name: 'Floor', includeIfNull: false) String? floor,
      @JsonKey(name: 'Front_door', includeIfNull: false) String? frontDoor,
      @JsonKey(name: 'Intercom_code', includeIfNull: false)
      String? intercomCode,
      @JsonKey(name: 'Apartment', includeIfNull: false) String? apartment,
      @JsonKey(name: 'is_primary', includeIfNull: false) int? isPrimary,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      String? latitude,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      String? longitude,
      @JsonKey(name: 'created_at', includeIfNull: false) String? createdAt,
      @JsonKey(
          name: 'wallet_balance',
          includeIfNull: false,
          fromJson: toStringNullable)
      String? walletBalance,
      @JsonKey(name: 'wallet_id', includeIfNull: false) int? walletId,
      @JsonKey(name: 'updated_at', includeIfNull: false) String? updatedAt,
      @JsonKey(includeIfNull: false) List<String>? interests,
      @JsonKey(includeIfNull: false) List<String>? detailedInterests,
      @JsonKey(name: 'subscribers_count', includeIfNull: false)
      int? subscribersCount,
      @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
      int? subscribedUsersCount});
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
    Object? googleId = freezed,
    Object? appleId = freezed,
    Object? passwordConfirmation = freezed,
    Object? currentPassword = freezed,
    Object? agreedToTerms = freezed,
    Object? isAbove18 = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? street = freezed,
    Object? index = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? phone = freezed,
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
    Object? floor = freezed,
    Object? frontDoor = freezed,
    Object? intercomCode = freezed,
    Object? apartment = freezed,
    Object? isPrimary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? walletBalance = freezed,
    Object? walletId = freezed,
    Object? updatedAt = freezed,
    Object? interests = freezed,
    Object? detailedInterests = freezed,
    Object? subscribersCount = freezed,
    Object? subscribedUsersCount = freezed,
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
      googleId: freezed == googleId
          ? _value.googleId
          : googleId // ignore: cast_nullable_to_non_nullable
              as String?,
      appleId: freezed == appleId
          ? _value.appleId
          : appleId // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: freezed == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      agreedToTerms: freezed == agreedToTerms
          ? _value.agreedToTerms
          : agreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAbove18: freezed == isAbove18
          ? _value.isAbove18
          : isAbove18 // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
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
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      walletId: freezed == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      detailedInterests: freezed == detailedInterests
          ? _value._detailedInterests
          : detailedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subscribedUsersCount: freezed == subscribedUsersCount
          ? _value.subscribedUsersCount
          : subscribedUsersCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegistrationDataImpl implements _UserRegistrationData {
  const _$UserRegistrationDataImpl(
      {@JsonKey(name: 'name', includeIfNull: false) this.firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) this.lastName,
      @JsonKey(name: 'google_id', includeIfNull: false) this.googleId,
      @JsonKey(name: 'apple_id', includeIfNull: false) this.appleId,
      @JsonKey(name: 'password_confirmation', includeIfNull: false)
      this.passwordConfirmation,
      @JsonKey(name: 'current_password', includeIfNull: false)
      this.currentPassword,
      @JsonKey(
          name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
      this.agreedToTerms,
      @JsonKey(
          name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
      this.isAbove18,
      @JsonKey(includeIfNull: false) this.email,
      @JsonKey(includeIfNull: false) this.token,
      @JsonKey(includeIfNull: false) this.password,
      @JsonKey(includeIfNull: false) this.gender,
      @JsonKey(includeIfNull: false) this.id,
      @JsonKey(name: 'user_id', includeIfNull: false) this.userId,
      @JsonKey(includeIfNull: false) this.street,
      @JsonKey(includeIfNull: false) this.index,
      @JsonKey(includeIfNull: false) this.city,
      @JsonKey(includeIfNull: false) this.country,
      @JsonKey(includeIfNull: false) this.phone,
      @JsonKey(includeIfNull: false) this.role,
      @JsonKey(includeIfNull: false, fromJson: _imageFromJson) this.image,
      @JsonKey(
          name: 'image_business',
          includeIfNull: false,
          fromJson: _imageFromJson)
      this.imageBusiness,
      @JsonKey(includeIfNull: false) this.description,
      @JsonKey(includeIfNull: false) this.lang,
      @JsonKey(name: 'business_id', includeIfNull: false) this.businessId,
      @JsonKey(includeIfNull: false) this.visibility,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) this.sms,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) this.push,
      @JsonKey(
          name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
      this.sendEmail,
      @JsonKey(includeIfNull: false) this.status,
      @JsonKey(name: 'fcm_tokens', includeIfNull: false)
      final List<String>? fcmTokens,
      @JsonKey(
          name: 'email_verified_at', includeIfNull: false)
      this.emailVerifiedAt,
      @JsonKey(includeIfNull: false) this.address,
      @JsonKey(
          name: 'personal_rating', includeIfNull: false)
      this.personalRating,
      @JsonKey(
          name: 'personal_rating_count', includeIfNull: false)
      this.personalRatingCount,
      @JsonKey(
          name: 'business_rating', includeIfNull: false)
      this.businessRating,
      @JsonKey(name: 'business_rating_count', includeIfNull: false)
      this.businessRatingCount,
      @JsonKey(name: 'is_favorited', includeIfNull: false) this.isFavorited,
      @JsonKey(name: 'favorites_count', includeIfNull: false)
      this.favoritesCount,
      @JsonKey(name: 'Floor', includeIfNull: false) this.floor,
      @JsonKey(name: 'Front_door', includeIfNull: false) this.frontDoor,
      @JsonKey(name: 'Intercom_code', includeIfNull: false) this.intercomCode,
      @JsonKey(name: 'Apartment', includeIfNull: false) this.apartment,
      @JsonKey(name: 'is_primary', includeIfNull: false) this.isPrimary,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) this.latitude,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable) this.longitude,
      @JsonKey(name: 'created_at', includeIfNull: false) this.createdAt,
      @JsonKey(
          name: 'wallet_balance',
          includeIfNull: false,
          fromJson: toStringNullable)
      this.walletBalance,
      @JsonKey(name: 'wallet_id', includeIfNull: false) this.walletId,
      @JsonKey(name: 'updated_at', includeIfNull: false) this.updatedAt,
      @JsonKey(includeIfNull: false) final List<String>? interests,
      @JsonKey(includeIfNull: false) final List<String>? detailedInterests,
      @JsonKey(name: 'subscribers_count', includeIfNull: false)
      this.subscribersCount,
      @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
      this.subscribedUsersCount})
      : _fcmTokens = fcmTokens,
        _interests = interests,
        _detailedInterests = detailedInterests;

  factory _$UserRegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationDataImplFromJson(json);

  @override
  @JsonKey(name: 'name', includeIfNull: false)
  final String? firstName;
  @override
  @JsonKey(name: 'last_name', includeIfNull: false)
  final String? lastName;
  @override
  @JsonKey(name: 'google_id', includeIfNull: false)
  final String? googleId;
  @override
  @JsonKey(name: 'apple_id', includeIfNull: false)
  final String? appleId;
  @override
  @JsonKey(name: 'password_confirmation', includeIfNull: false)
  final String? passwordConfirmation;
  @override
  @JsonKey(name: 'current_password', includeIfNull: false)
  final String? currentPassword;
  @override
  @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
  final bool? agreedToTerms;
  @override
  @JsonKey(name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
  final bool? isAbove18;
  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? token;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false)
  final String? gender;
  @override
  @JsonKey(includeIfNull: false)
  final int? id;
  @override
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @override
  @JsonKey(includeIfNull: false)
  final String? street;
  @override
  @JsonKey(includeIfNull: false)
  final int? index;
  @override
  @JsonKey(includeIfNull: false)
  final String? city;
  @override
  @JsonKey(includeIfNull: false)
  final String? country;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  @JsonKey(includeIfNull: false)
  final String? role;
  @override
  @JsonKey(includeIfNull: false, fromJson: _imageFromJson)
  final String? image;
  @override
  @JsonKey(
      name: 'image_business', includeIfNull: false, fromJson: _imageFromJson)
  final String? imageBusiness;
  @override
  @JsonKey(includeIfNull: false)
  final String? description;
  @override
  @JsonKey(includeIfNull: false)
  final String? lang;
  @override
  @JsonKey(name: 'business_id', includeIfNull: false)
  final int? businessId;
  @override
  @JsonKey(includeIfNull: false)
  final String? visibility;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  final String? sms;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  final String? push;
  @override
  @JsonKey(name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
  final String? sendEmail;
  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  final List<String>? _fcmTokens;
  @override
  @JsonKey(name: 'fcm_tokens', includeIfNull: false)
  List<String>? get fcmTokens {
    final value = _fcmTokens;
    if (value == null) return null;
    if (_fcmTokens is EqualUnmodifiableListView) return _fcmTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'email_verified_at', includeIfNull: false)
  final String? emailVerifiedAt;
  @override
  @JsonKey(includeIfNull: false)
  final String? address;
  @override
  @JsonKey(name: 'personal_rating', includeIfNull: false)
  final int? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count', includeIfNull: false)
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'business_rating', includeIfNull: false)
  final int? businessRating;
  @override
  @JsonKey(name: 'business_rating_count', includeIfNull: false)
  final int? businessRatingCount;
  @override
  @JsonKey(name: 'is_favorited', includeIfNull: false)
  final bool? isFavorited;
  @override
  @JsonKey(name: 'favorites_count', includeIfNull: false)
  final int? favoritesCount;
  @override
  @JsonKey(name: 'Floor', includeIfNull: false)
  final String? floor;
  @override
  @JsonKey(name: 'Front_door', includeIfNull: false)
  final String? frontDoor;
  @override
  @JsonKey(name: 'Intercom_code', includeIfNull: false)
  final String? intercomCode;
  @override
  @JsonKey(name: 'Apartment', includeIfNull: false)
  final String? apartment;
  @override
  @JsonKey(name: 'is_primary', includeIfNull: false)
  final int? isPrimary;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  final String? latitude;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  final String? longitude;
  @override
  @JsonKey(name: 'created_at', includeIfNull: false)
  final String? createdAt;
  @override
  @JsonKey(
      name: 'wallet_balance', includeIfNull: false, fromJson: toStringNullable)
  final String? walletBalance;
  @override
  @JsonKey(name: 'wallet_id', includeIfNull: false)
  final int? walletId;
  @override
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final String? updatedAt;
  final List<String>? _interests;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _detailedInterests;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get detailedInterests {
    final value = _detailedInterests;
    if (value == null) return null;
    if (_detailedInterests is EqualUnmodifiableListView)
      return _detailedInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'subscribers_count', includeIfNull: false)
  final int? subscribersCount;
  @override
  @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
  final int? subscribedUsersCount;

  @override
  String toString() {
    return 'UserRegistrationData(firstName: $firstName, lastName: $lastName, googleId: $googleId, appleId: $appleId, passwordConfirmation: $passwordConfirmation, currentPassword: $currentPassword, agreedToTerms: $agreedToTerms, isAbove18: $isAbove18, email: $email, token: $token, password: $password, gender: $gender, id: $id, userId: $userId, street: $street, index: $index, city: $city, country: $country, phone: $phone, role: $role, image: $image, imageBusiness: $imageBusiness, description: $description, lang: $lang, businessId: $businessId, visibility: $visibility, sms: $sms, push: $push, sendEmail: $sendEmail, status: $status, fcmTokens: $fcmTokens, emailVerifiedAt: $emailVerifiedAt, address: $address, personalRating: $personalRating, personalRatingCount: $personalRatingCount, businessRating: $businessRating, businessRatingCount: $businessRatingCount, isFavorited: $isFavorited, favoritesCount: $favoritesCount, floor: $floor, frontDoor: $frontDoor, intercomCode: $intercomCode, apartment: $apartment, isPrimary: $isPrimary, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, walletBalance: $walletBalance, walletId: $walletId, updatedAt: $updatedAt, interests: $interests, detailedInterests: $detailedInterests, subscribersCount: $subscribersCount, subscribedUsersCount: $subscribedUsersCount)';
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
            (identical(other.googleId, googleId) ||
                other.googleId == googleId) &&
            (identical(other.appleId, appleId) || other.appleId == appleId) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.agreedToTerms, agreedToTerms) ||
                other.agreedToTerms == agreedToTerms) &&
            (identical(other.isAbove18, isAbove18) ||
                other.isAbove18 == isAbove18) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
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
                other.favoritesCount == favoritesCount) &&
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
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._detailedInterests, _detailedInterests) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.subscribedUsersCount, subscribedUsersCount) ||
                other.subscribedUsersCount == subscribedUsersCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstName,
        lastName,
        googleId,
        appleId,
        passwordConfirmation,
        currentPassword,
        agreedToTerms,
        isAbove18,
        email,
        token,
        password,
        gender,
        id,
        userId,
        street,
        index,
        city,
        country,
        phone,
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
        favoritesCount,
        floor,
        frontDoor,
        intercomCode,
        apartment,
        isPrimary,
        latitude,
        longitude,
        createdAt,
        walletBalance,
        walletId,
        updatedAt,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_detailedInterests),
        subscribersCount,
        subscribedUsersCount
      ]);

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
      {@JsonKey(name: 'name', includeIfNull: false) final String? firstName,
      @JsonKey(name: 'last_name', includeIfNull: false) final String? lastName,
      @JsonKey(name: 'google_id', includeIfNull: false) final String? googleId,
      @JsonKey(name: 'apple_id', includeIfNull: false) final String? appleId,
      @JsonKey(name: 'password_confirmation', includeIfNull: false)
      final String? passwordConfirmation,
      @JsonKey(name: 'current_password', includeIfNull: false)
      final String? currentPassword,
      @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
      final bool? agreedToTerms,
      @JsonKey(
          name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
      final bool? isAbove18,
      @JsonKey(includeIfNull: false) final String? email,
      @JsonKey(includeIfNull: false) final String? token,
      @JsonKey(includeIfNull: false) final String? password,
      @JsonKey(includeIfNull: false) final String? gender,
      @JsonKey(includeIfNull: false) final int? id,
      @JsonKey(name: 'user_id', includeIfNull: false) final int? userId,
      @JsonKey(includeIfNull: false) final String? street,
      @JsonKey(includeIfNull: false) final int? index,
      @JsonKey(includeIfNull: false) final String? city,
      @JsonKey(includeIfNull: false) final String? country,
      @JsonKey(includeIfNull: false) final String? phone,
      @JsonKey(includeIfNull: false) final String? role,
      @JsonKey(includeIfNull: false, fromJson: _imageFromJson)
      final String? image,
      @JsonKey(
          name: 'image_business',
          includeIfNull: false,
          fromJson: _imageFromJson)
      final String? imageBusiness,
      @JsonKey(includeIfNull: false) final String? description,
      @JsonKey(includeIfNull: false) final String? lang,
      @JsonKey(name: 'business_id', includeIfNull: false) final int? businessId,
      @JsonKey(includeIfNull: false) final String? visibility,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      final String? sms,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      final String? push,
      @JsonKey(
          name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
      final String? sendEmail,
      @JsonKey(includeIfNull: false) final String? status,
      @JsonKey(name: 'fcm_tokens', includeIfNull: false)
      final List<String>? fcmTokens,
      @JsonKey(name: 'email_verified_at', includeIfNull: false)
      final String? emailVerifiedAt,
      @JsonKey(includeIfNull: false) final String? address,
      @JsonKey(name: 'personal_rating', includeIfNull: false)
      final int? personalRating,
      @JsonKey(name: 'personal_rating_count', includeIfNull: false)
      final int? personalRatingCount,
      @JsonKey(name: 'business_rating', includeIfNull: false)
      final int? businessRating,
      @JsonKey(name: 'business_rating_count', includeIfNull: false)
      final int? businessRatingCount,
      @JsonKey(name: 'is_favorited', includeIfNull: false)
      final bool? isFavorited,
      @JsonKey(name: 'favorites_count', includeIfNull: false)
      final int? favoritesCount,
      @JsonKey(name: 'Floor', includeIfNull: false) final String? floor,
      @JsonKey(name: 'Front_door', includeIfNull: false)
      final String? frontDoor,
      @JsonKey(name: 'Intercom_code', includeIfNull: false)
      final String? intercomCode,
      @JsonKey(name: 'Apartment', includeIfNull: false) final String? apartment,
      @JsonKey(name: 'is_primary', includeIfNull: false) final int? isPrimary,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      final String? latitude,
      @JsonKey(includeIfNull: false, fromJson: toStringNullable)
      final String? longitude,
      @JsonKey(name: 'created_at', includeIfNull: false)
      final String? createdAt,
      @JsonKey(
          name: 'wallet_balance',
          includeIfNull: false,
          fromJson: toStringNullable)
      final String? walletBalance,
      @JsonKey(name: 'wallet_id', includeIfNull: false) final int? walletId,
      @JsonKey(name: 'updated_at', includeIfNull: false)
      final String? updatedAt,
      @JsonKey(includeIfNull: false) final List<String>? interests,
      @JsonKey(includeIfNull: false) final List<String>? detailedInterests,
      @JsonKey(name: 'subscribers_count', includeIfNull: false)
      final int? subscribersCount,
      @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
      final int? subscribedUsersCount}) = _$UserRegistrationDataImpl;

  factory _UserRegistrationData.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationDataImpl.fromJson;

  @override
  @JsonKey(name: 'name', includeIfNull: false)
  String? get firstName;
  @override
  @JsonKey(name: 'last_name', includeIfNull: false)
  String? get lastName;
  @override
  @JsonKey(name: 'google_id', includeIfNull: false)
  String? get googleId;
  @override
  @JsonKey(name: 'apple_id', includeIfNull: false)
  String? get appleId;
  @override
  @JsonKey(name: 'password_confirmation', includeIfNull: false)
  String? get passwordConfirmation;
  @override
  @JsonKey(name: 'current_password', includeIfNull: false)
  String? get currentPassword;
  @override
  @JsonKey(name: 'terms_agreement', includeIfNull: false, fromJson: intToBool)
  bool? get agreedToTerms;
  @override
  @JsonKey(name: 'age_confirmation', includeIfNull: false, fromJson: intToBool)
  bool? get isAbove18;
  @override
  @JsonKey(includeIfNull: false)
  String? get email;
  @override
  @JsonKey(includeIfNull: false)
  String? get token;
  @override
  @JsonKey(includeIfNull: false)
  String? get password;
  @override
  @JsonKey(includeIfNull: false)
  String? get gender;
  @override
  @JsonKey(includeIfNull: false)
  int? get id;
  @override
  @JsonKey(name: 'user_id', includeIfNull: false)
  int? get userId;
  @override
  @JsonKey(includeIfNull: false)
  String? get street;
  @override
  @JsonKey(includeIfNull: false)
  int? get index;
  @override
  @JsonKey(includeIfNull: false)
  String? get city;
  @override
  @JsonKey(includeIfNull: false)
  String? get country;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone;
  @override
  @JsonKey(includeIfNull: false)
  String? get role;
  @override
  @JsonKey(includeIfNull: false, fromJson: _imageFromJson)
  String? get image;
  @override
  @JsonKey(
      name: 'image_business', includeIfNull: false, fromJson: _imageFromJson)
  String? get imageBusiness;
  @override
  @JsonKey(includeIfNull: false)
  String? get description;
  @override
  @JsonKey(includeIfNull: false)
  String? get lang;
  @override
  @JsonKey(name: 'business_id', includeIfNull: false)
  int? get businessId;
  @override
  @JsonKey(includeIfNull: false)
  String? get visibility;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get sms;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get push;
  @override
  @JsonKey(name: 'send_email', includeIfNull: false, fromJson: toStringNullable)
  String? get sendEmail;
  @override
  @JsonKey(includeIfNull: false)
  String? get status;
  @override
  @JsonKey(name: 'fcm_tokens', includeIfNull: false)
  List<String>? get fcmTokens;
  @override
  @JsonKey(name: 'email_verified_at', includeIfNull: false)
  String? get emailVerifiedAt;
  @override
  @JsonKey(includeIfNull: false)
  String? get address;
  @override
  @JsonKey(name: 'personal_rating', includeIfNull: false)
  int? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count', includeIfNull: false)
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'business_rating', includeIfNull: false)
  int? get businessRating;
  @override
  @JsonKey(name: 'business_rating_count', includeIfNull: false)
  int? get businessRatingCount;
  @override
  @JsonKey(name: 'is_favorited', includeIfNull: false)
  bool? get isFavorited;
  @override
  @JsonKey(name: 'favorites_count', includeIfNull: false)
  int? get favoritesCount;
  @override
  @JsonKey(name: 'Floor', includeIfNull: false)
  String? get floor;
  @override
  @JsonKey(name: 'Front_door', includeIfNull: false)
  String? get frontDoor;
  @override
  @JsonKey(name: 'Intercom_code', includeIfNull: false)
  String? get intercomCode;
  @override
  @JsonKey(name: 'Apartment', includeIfNull: false)
  String? get apartment;
  @override
  @JsonKey(name: 'is_primary', includeIfNull: false)
  int? get isPrimary;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get latitude;
  @override
  @JsonKey(includeIfNull: false, fromJson: toStringNullable)
  String? get longitude;
  @override
  @JsonKey(name: 'created_at', includeIfNull: false)
  String? get createdAt;
  @override
  @JsonKey(
      name: 'wallet_balance', includeIfNull: false, fromJson: toStringNullable)
  String? get walletBalance;
  @override
  @JsonKey(name: 'wallet_id', includeIfNull: false)
  int? get walletId;
  @override
  @JsonKey(name: 'updated_at', includeIfNull: false)
  String? get updatedAt;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get interests;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get detailedInterests;
  @override
  @JsonKey(name: 'subscribers_count', includeIfNull: false)
  int? get subscribersCount;
  @override
  @JsonKey(name: 'subscribed_users_count', includeIfNull: false)
  int? get subscribedUsersCount;

  /// Create a copy of UserRegistrationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationDataImplCopyWith<_$UserRegistrationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
