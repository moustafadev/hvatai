// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainNotificationState {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MainNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainNotificationStateCopyWith<MainNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNotificationStateCopyWith<$Res> {
  factory $MainNotificationStateCopyWith(MainNotificationState value,
          $Res Function(MainNotificationState) then) =
      _$MainNotificationStateCopyWithImpl<$Res, MainNotificationState>;
  @useResult
  $Res call(
      {List<NotificationModel> notifications,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$MainNotificationStateCopyWithImpl<$Res,
        $Val extends MainNotificationState>
    implements $MainNotificationStateCopyWith<$Res> {
  _$MainNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
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
abstract class _$$MainNotificationStateImplCopyWith<$Res>
    implements $MainNotificationStateCopyWith<$Res> {
  factory _$$MainNotificationStateImplCopyWith(
          _$MainNotificationStateImpl value,
          $Res Function(_$MainNotificationStateImpl) then) =
      __$$MainNotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationModel> notifications,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$MainNotificationStateImplCopyWithImpl<$Res>
    extends _$MainNotificationStateCopyWithImpl<$Res,
        _$MainNotificationStateImpl>
    implements _$$MainNotificationStateImplCopyWith<$Res> {
  __$$MainNotificationStateImplCopyWithImpl(_$MainNotificationStateImpl _value,
      $Res Function(_$MainNotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$MainNotificationStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
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

class _$MainNotificationStateImpl implements _MainNotificationState {
  const _$MainNotificationStateImpl(
      {final List<NotificationModel> notifications = const [],
      this.isLoading = false,
      this.errorMessage = ''})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MainNotificationState(notifications: $notifications, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainNotificationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      isLoading,
      errorMessage);

  /// Create a copy of MainNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainNotificationStateImplCopyWith<_$MainNotificationStateImpl>
      get copyWith => __$$MainNotificationStateImplCopyWithImpl<
          _$MainNotificationStateImpl>(this, _$identity);
}

abstract class _MainNotificationState implements MainNotificationState {
  const factory _MainNotificationState(
      {final List<NotificationModel> notifications,
      final bool isLoading,
      final String errorMessage}) = _$MainNotificationStateImpl;

  @override
  List<NotificationModel> get notifications;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of MainNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainNotificationStateImplCopyWith<_$MainNotificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
