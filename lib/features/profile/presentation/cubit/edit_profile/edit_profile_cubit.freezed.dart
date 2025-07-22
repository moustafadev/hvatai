// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get sms =>
      throw _privateConstructorUsedError; // تغيير من String إلى bool
  bool get push =>
      throw _privateConstructorUsedError; // تغيير من String إلى bool
  bool get sendEmail =>
      throw _privateConstructorUsedError; // تغيير من String إلى bool
  String get fcmToken => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  UserProfileModel get user => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  File? get imageBusiness => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get changeInfoProfile =>
      throw _privateConstructorUsedError;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      bool isLoading,
      String gender,
      String country,
      String email,
      bool sms,
      bool push,
      bool sendEmail,
      String fcmToken,
      String phone,
      bool success,
      String errorMessage,
      UserProfileModel user,
      File? image,
      File? imageBusiness,
      List<Map<String, dynamic>> changeInfoProfile});

  $UserProfileModelCopyWith<$Res> get user;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? isLoading = null,
    Object? gender = null,
    Object? country = null,
    Object? email = null,
    Object? sms = null,
    Object? push = null,
    Object? sendEmail = null,
    Object? fcmToken = null,
    Object? phone = null,
    Object? success = null,
    Object? errorMessage = null,
    Object? user = null,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? changeInfoProfile = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool,
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as File?,
      changeInfoProfile: null == changeInfoProfile
          ? _value.changeInfoProfile
          : changeInfoProfile // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get user {
    return $UserProfileModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      bool isLoading,
      String gender,
      String country,
      String email,
      bool sms,
      bool push,
      bool sendEmail,
      String fcmToken,
      String phone,
      bool success,
      String errorMessage,
      UserProfileModel user,
      File? image,
      File? imageBusiness,
      List<Map<String, dynamic>> changeInfoProfile});

  @override
  $UserProfileModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? isLoading = null,
    Object? gender = null,
    Object? country = null,
    Object? email = null,
    Object? sms = null,
    Object? push = null,
    Object? sendEmail = null,
    Object? fcmToken = null,
    Object? phone = null,
    Object? success = null,
    Object? errorMessage = null,
    Object? user = null,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? changeInfoProfile = null,
  }) {
    return _then(_$EditProfileStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as bool,
      push: null == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool,
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfileModel,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as File?,
      changeInfoProfile: null == changeInfoProfile
          ? _value._changeInfoProfile
          : changeInfoProfile // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements _EditProfileState {
  const _$EditProfileStateImpl(
      {this.firstName = '',
      this.lastName = '',
      this.isLoading = false,
      this.gender = '',
      this.country = '',
      this.email = '',
      this.sms = false,
      this.push = false,
      this.sendEmail = false,
      this.fcmToken = '',
      this.phone = '',
      this.success = false,
      this.errorMessage = '',
      required this.user,
      this.image,
      this.imageBusiness,
      final List<Map<String, dynamic>> changeInfoProfile = const []})
      : _changeInfoProfile = changeInfoProfile;

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool sms;
// تغيير من String إلى bool
  @override
  @JsonKey()
  final bool push;
// تغيير من String إلى bool
  @override
  @JsonKey()
  final bool sendEmail;
// تغيير من String إلى bool
  @override
  @JsonKey()
  final String fcmToken;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final UserProfileModel user;
  @override
  final File? image;
  @override
  final File? imageBusiness;
  final List<Map<String, dynamic>> _changeInfoProfile;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get changeInfoProfile {
    if (_changeInfoProfile is EqualUnmodifiableListView)
      return _changeInfoProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changeInfoProfile);
  }

  @override
  String toString() {
    return 'EditProfileState(firstName: $firstName, lastName: $lastName, isLoading: $isLoading, gender: $gender, country: $country, email: $email, sms: $sms, push: $push, sendEmail: $sendEmail, fcmToken: $fcmToken, phone: $phone, success: $success, errorMessage: $errorMessage, user: $user, image: $image, imageBusiness: $imageBusiness, changeInfoProfile: $changeInfoProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageBusiness, imageBusiness) ||
                other.imageBusiness == imageBusiness) &&
            const DeepCollectionEquality()
                .equals(other._changeInfoProfile, _changeInfoProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      isLoading,
      gender,
      country,
      email,
      sms,
      push,
      sendEmail,
      fcmToken,
      phone,
      success,
      errorMessage,
      user,
      image,
      imageBusiness,
      const DeepCollectionEquality().hash(_changeInfoProfile));

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
          {final String firstName,
          final String lastName,
          final bool isLoading,
          final String gender,
          final String country,
          final String email,
          final bool sms,
          final bool push,
          final bool sendEmail,
          final String fcmToken,
          final String phone,
          final bool success,
          final String errorMessage,
          required final UserProfileModel user,
          final File? image,
          final File? imageBusiness,
          final List<Map<String, dynamic>> changeInfoProfile}) =
      _$EditProfileStateImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  bool get isLoading;
  @override
  String get gender;
  @override
  String get country;
  @override
  String get email;
  @override
  bool get sms; // تغيير من String إلى bool
  @override
  bool get push; // تغيير من String إلى bool
  @override
  bool get sendEmail; // تغيير من String إلى bool
  @override
  String get fcmToken;
  @override
  String get phone;
  @override
  bool get success;
  @override
  String get errorMessage;
  @override
  UserProfileModel get user;
  @override
  File? get image;
  @override
  File? get imageBusiness;
  @override
  List<Map<String, dynamic>> get changeInfoProfile;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
