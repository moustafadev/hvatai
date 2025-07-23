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
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  UserRegistrationData get user => throw _privateConstructorUsedError;
  bool get streamsFromSubscriptions => throw _privateConstructorUsedError;
  bool get streamsISaved => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  double get passwordStrength => throw _privateConstructorUsedError;
  String get passwordStrengthText => throw _privateConstructorUsedError;
  bool get recommendedStreams => throw _privateConstructorUsedError;
  bool get newSubscriber => throw _privateConstructorUsedError;
  bool get bookmarksFromStreams => throw _privateConstructorUsedError;
  bool get isAllSelected => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
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
      {bool isLoading,
      bool success,
      String errorMessage,
      UserRegistrationData user,
      bool streamsFromSubscriptions,
      bool streamsISaved,
      bool obscurePassword,
      double passwordStrength,
      String passwordStrengthText,
      bool recommendedStreams,
      bool newSubscriber,
      bool bookmarksFromStreams,
      bool isAllSelected,
      String? type,
      List<Map<String, dynamic>> changeInfoProfile});

  $UserRegistrationDataCopyWith<$Res> get user;
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
    Object? isLoading = null,
    Object? success = null,
    Object? errorMessage = null,
    Object? user = null,
    Object? streamsFromSubscriptions = null,
    Object? streamsISaved = null,
    Object? obscurePassword = null,
    Object? passwordStrength = null,
    Object? passwordStrengthText = null,
    Object? recommendedStreams = null,
    Object? newSubscriber = null,
    Object? bookmarksFromStreams = null,
    Object? isAllSelected = null,
    Object? type = freezed,
    Object? changeInfoProfile = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as UserRegistrationData,
      streamsFromSubscriptions: null == streamsFromSubscriptions
          ? _value.streamsFromSubscriptions
          : streamsFromSubscriptions // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsISaved: null == streamsISaved
          ? _value.streamsISaved
          : streamsISaved // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordStrength: null == passwordStrength
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      passwordStrengthText: null == passwordStrengthText
          ? _value.passwordStrengthText
          : passwordStrengthText // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStreams: null == recommendedStreams
          ? _value.recommendedStreams
          : recommendedStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      newSubscriber: null == newSubscriber
          ? _value.newSubscriber
          : newSubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarksFromStreams: null == bookmarksFromStreams
          ? _value.bookmarksFromStreams
          : bookmarksFromStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllSelected: null == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $UserRegistrationDataCopyWith<$Res> get user {
    return $UserRegistrationDataCopyWith<$Res>(_value.user, (value) {
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
      {bool isLoading,
      bool success,
      String errorMessage,
      UserRegistrationData user,
      bool streamsFromSubscriptions,
      bool streamsISaved,
      bool obscurePassword,
      double passwordStrength,
      String passwordStrengthText,
      bool recommendedStreams,
      bool newSubscriber,
      bool bookmarksFromStreams,
      bool isAllSelected,
      String? type,
      List<Map<String, dynamic>> changeInfoProfile});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
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
    Object? isLoading = null,
    Object? success = null,
    Object? errorMessage = null,
    Object? user = null,
    Object? streamsFromSubscriptions = null,
    Object? streamsISaved = null,
    Object? obscurePassword = null,
    Object? passwordStrength = null,
    Object? passwordStrengthText = null,
    Object? recommendedStreams = null,
    Object? newSubscriber = null,
    Object? bookmarksFromStreams = null,
    Object? isAllSelected = null,
    Object? type = freezed,
    Object? changeInfoProfile = null,
  }) {
    return _then(_$EditProfileStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as UserRegistrationData,
      streamsFromSubscriptions: null == streamsFromSubscriptions
          ? _value.streamsFromSubscriptions
          : streamsFromSubscriptions // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsISaved: null == streamsISaved
          ? _value.streamsISaved
          : streamsISaved // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordStrength: null == passwordStrength
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      passwordStrengthText: null == passwordStrengthText
          ? _value.passwordStrengthText
          : passwordStrengthText // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedStreams: null == recommendedStreams
          ? _value.recommendedStreams
          : recommendedStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      newSubscriber: null == newSubscriber
          ? _value.newSubscriber
          : newSubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarksFromStreams: null == bookmarksFromStreams
          ? _value.bookmarksFromStreams
          : bookmarksFromStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      isAllSelected: null == isAllSelected
          ? _value.isAllSelected
          : isAllSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {this.isLoading = false,
      this.success = false,
      this.errorMessage = '',
      required this.user,
      this.streamsFromSubscriptions = true,
      this.streamsISaved = false,
      this.obscurePassword = false,
      this.passwordStrength = 0.0,
      this.passwordStrengthText = '',
      this.recommendedStreams = true,
      this.newSubscriber = true,
      this.bookmarksFromStreams = true,
      this.isAllSelected = false,
      this.type,
      final List<Map<String, dynamic>> changeInfoProfile = const []})
      : _changeInfoProfile = changeInfoProfile;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final UserRegistrationData user;
  @override
  @JsonKey()
  final bool streamsFromSubscriptions;
  @override
  @JsonKey()
  final bool streamsISaved;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final double passwordStrength;
  @override
  @JsonKey()
  final String passwordStrengthText;
  @override
  @JsonKey()
  final bool recommendedStreams;
  @override
  @JsonKey()
  final bool newSubscriber;
  @override
  @JsonKey()
  final bool bookmarksFromStreams;
  @override
  @JsonKey()
  final bool isAllSelected;
  @override
  final String? type;
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
    return 'EditProfileState(isLoading: $isLoading, success: $success, errorMessage: $errorMessage, user: $user, streamsFromSubscriptions: $streamsFromSubscriptions, streamsISaved: $streamsISaved, obscurePassword: $obscurePassword, passwordStrength: $passwordStrength, passwordStrengthText: $passwordStrengthText, recommendedStreams: $recommendedStreams, newSubscriber: $newSubscriber, bookmarksFromStreams: $bookmarksFromStreams, isAllSelected: $isAllSelected, type: $type, changeInfoProfile: $changeInfoProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(
                    other.streamsFromSubscriptions, streamsFromSubscriptions) ||
                other.streamsFromSubscriptions == streamsFromSubscriptions) &&
            (identical(other.streamsISaved, streamsISaved) ||
                other.streamsISaved == streamsISaved) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.passwordStrength, passwordStrength) ||
                other.passwordStrength == passwordStrength) &&
            (identical(other.passwordStrengthText, passwordStrengthText) ||
                other.passwordStrengthText == passwordStrengthText) &&
            (identical(other.recommendedStreams, recommendedStreams) ||
                other.recommendedStreams == recommendedStreams) &&
            (identical(other.newSubscriber, newSubscriber) ||
                other.newSubscriber == newSubscriber) &&
            (identical(other.bookmarksFromStreams, bookmarksFromStreams) ||
                other.bookmarksFromStreams == bookmarksFromStreams) &&
            (identical(other.isAllSelected, isAllSelected) ||
                other.isAllSelected == isAllSelected) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._changeInfoProfile, _changeInfoProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      success,
      errorMessage,
      user,
      streamsFromSubscriptions,
      streamsISaved,
      obscurePassword,
      passwordStrength,
      passwordStrengthText,
      recommendedStreams,
      newSubscriber,
      bookmarksFromStreams,
      isAllSelected,
      type,
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
          {final bool isLoading,
          final bool success,
          final String errorMessage,
          required final UserRegistrationData user,
          final bool streamsFromSubscriptions,
          final bool streamsISaved,
          final bool obscurePassword,
          final double passwordStrength,
          final String passwordStrengthText,
          final bool recommendedStreams,
          final bool newSubscriber,
          final bool bookmarksFromStreams,
          final bool isAllSelected,
          final String? type,
          final List<Map<String, dynamic>> changeInfoProfile}) =
      _$EditProfileStateImpl;

  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  String get errorMessage;
  @override
  UserRegistrationData get user;
  @override
  bool get streamsFromSubscriptions;
  @override
  bool get streamsISaved;
  @override
  bool get obscurePassword;
  @override
  double get passwordStrength;
  @override
  String get passwordStrengthText;
  @override
  bool get recommendedStreams;
  @override
  bool get newSubscriber;
  @override
  bool get bookmarksFromStreams;
  @override
  bool get isAllSelected;
  @override
  String? get type;
  @override
  List<Map<String, dynamic>> get changeInfoProfile;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
