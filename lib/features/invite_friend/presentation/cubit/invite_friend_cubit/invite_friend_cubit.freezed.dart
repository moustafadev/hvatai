// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InviteFriendState {
  String get inviteCode => throw _privateConstructorUsedError;
  int get joinedUsersCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of InviteFriendState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteFriendStateCopyWith<InviteFriendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteFriendStateCopyWith<$Res> {
  factory $InviteFriendStateCopyWith(
          InviteFriendState value, $Res Function(InviteFriendState) then) =
      _$InviteFriendStateCopyWithImpl<$Res, InviteFriendState>;
  @useResult
  $Res call(
      {String inviteCode,
      int joinedUsersCount,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$InviteFriendStateCopyWithImpl<$Res, $Val extends InviteFriendState>
    implements $InviteFriendStateCopyWith<$Res> {
  _$InviteFriendStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteFriendState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCode = null,
    Object? joinedUsersCount = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsersCount: null == joinedUsersCount
          ? _value.joinedUsersCount
          : joinedUsersCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteFriendStateImplCopyWith<$Res>
    implements $InviteFriendStateCopyWith<$Res> {
  factory _$$InviteFriendStateImplCopyWith(_$InviteFriendStateImpl value,
          $Res Function(_$InviteFriendStateImpl) then) =
      __$$InviteFriendStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inviteCode,
      int joinedUsersCount,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$InviteFriendStateImplCopyWithImpl<$Res>
    extends _$InviteFriendStateCopyWithImpl<$Res, _$InviteFriendStateImpl>
    implements _$$InviteFriendStateImplCopyWith<$Res> {
  __$$InviteFriendStateImplCopyWithImpl(_$InviteFriendStateImpl _value,
      $Res Function(_$InviteFriendStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteFriendState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCode = null,
    Object? joinedUsersCount = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$InviteFriendStateImpl(
      inviteCode: null == inviteCode
          ? _value.inviteCode
          : inviteCode // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsersCount: null == joinedUsersCount
          ? _value.joinedUsersCount
          : joinedUsersCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InviteFriendStateImpl implements _InviteFriendState {
  const _$InviteFriendStateImpl(
      {this.inviteCode = '',
      this.joinedUsersCount = 0,
      this.isLoading = false,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final String inviteCode;
  @override
  @JsonKey()
  final int joinedUsersCount;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'InviteFriendState(inviteCode: $inviteCode, joinedUsersCount: $joinedUsersCount, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteFriendStateImpl &&
            (identical(other.inviteCode, inviteCode) ||
                other.inviteCode == inviteCode) &&
            (identical(other.joinedUsersCount, joinedUsersCount) ||
                other.joinedUsersCount == joinedUsersCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, inviteCode, joinedUsersCount, isLoading, errorMessage);

  /// Create a copy of InviteFriendState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteFriendStateImplCopyWith<_$InviteFriendStateImpl> get copyWith =>
      __$$InviteFriendStateImplCopyWithImpl<_$InviteFriendStateImpl>(
          this, _$identity);
}

abstract class _InviteFriendState implements InviteFriendState {
  const factory _InviteFriendState(
      {final String inviteCode,
      final int joinedUsersCount,
      final bool isLoading,
      final String errorMessage}) = _$InviteFriendStateImpl;

  @override
  String get inviteCode;
  @override
  int get joinedUsersCount;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of InviteFriendState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteFriendStateImplCopyWith<_$InviteFriendStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
