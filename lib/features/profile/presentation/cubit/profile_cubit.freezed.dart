// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  String get firstName => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get settingsOptions =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get helpAndContact =>
      throw _privateConstructorUsedError;
  int get uid => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {String firstName,
      String? profileImageUrl,
      bool isLoading,
      List<Map<String, dynamic>> settingsOptions,
      List<Map<String, dynamic>> helpAndContact,
      int uid,
      String channelId});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? profileImageUrl = freezed,
    Object? isLoading = null,
    Object? settingsOptions = null,
    Object? helpAndContact = null,
    Object? uid = null,
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOptions: null == settingsOptions
          ? _value.settingsOptions
          : settingsOptions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      helpAndContact: null == helpAndContact
          ? _value.helpAndContact
          : helpAndContact // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String? profileImageUrl,
      bool isLoading,
      List<Map<String, dynamic>> settingsOptions,
      List<Map<String, dynamic>> helpAndContact,
      int uid,
      String channelId});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? profileImageUrl = freezed,
    Object? isLoading = null,
    Object? settingsOptions = null,
    Object? helpAndContact = null,
    Object? uid = null,
    Object? channelId = null,
  }) {
    return _then(_$ProfileStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      settingsOptions: null == settingsOptions
          ? _value._settingsOptions
          : settingsOptions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      helpAndContact: null == helpAndContact
          ? _value._helpAndContact
          : helpAndContact // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.firstName = 'User',
      this.profileImageUrl,
      this.isLoading = false,
      final List<Map<String, dynamic>> settingsOptions = const [],
      final List<Map<String, dynamic>> helpAndContact = const [],
      required this.uid,
      required this.channelId})
      : _settingsOptions = settingsOptions,
        _helpAndContact = helpAndContact;

  @override
  @JsonKey()
  final String firstName;
  @override
  final String? profileImageUrl;
  @override
  @JsonKey()
  final bool isLoading;
  final List<Map<String, dynamic>> _settingsOptions;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get settingsOptions {
    if (_settingsOptions is EqualUnmodifiableListView) return _settingsOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_settingsOptions);
  }

  final List<Map<String, dynamic>> _helpAndContact;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get helpAndContact {
    if (_helpAndContact is EqualUnmodifiableListView) return _helpAndContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_helpAndContact);
  }

  @override
  final int uid;
  @override
  final String channelId;

  @override
  String toString() {
    return 'ProfileState(firstName: $firstName, profileImageUrl: $profileImageUrl, isLoading: $isLoading, settingsOptions: $settingsOptions, helpAndContact: $helpAndContact, uid: $uid, channelId: $channelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._settingsOptions, _settingsOptions) &&
            const DeepCollectionEquality()
                .equals(other._helpAndContact, _helpAndContact) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      profileImageUrl,
      isLoading,
      const DeepCollectionEquality().hash(_settingsOptions),
      const DeepCollectionEquality().hash(_helpAndContact),
      uid,
      channelId);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final String firstName,
      final String? profileImageUrl,
      final bool isLoading,
      final List<Map<String, dynamic>> settingsOptions,
      final List<Map<String, dynamic>> helpAndContact,
      required final int uid,
      required final String channelId}) = _$ProfileStateImpl;

  @override
  String get firstName;
  @override
  String? get profileImageUrl;
  @override
  bool get isLoading;
  @override
  List<Map<String, dynamic>> get settingsOptions;
  @override
  List<Map<String, dynamic>> get helpAndContact;
  @override
  int get uid;
  @override
  String get channelId;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
