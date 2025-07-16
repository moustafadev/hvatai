// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  bool get streamsFromSubscriptions => throw _privateConstructorUsedError;
  bool get streamsISaved => throw _privateConstructorUsedError;
  bool get recommendedStreams => throw _privateConstructorUsedError;
  bool get newSubscriber => throw _privateConstructorUsedError;
  bool get bookmarksFromStreams => throw _privateConstructorUsedError;
  bool get isAllSelected => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {bool streamsFromSubscriptions,
      bool streamsISaved,
      bool recommendedStreams,
      bool newSubscriber,
      bool bookmarksFromStreams,
      bool isAllSelected});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamsFromSubscriptions = null,
    Object? streamsISaved = null,
    Object? recommendedStreams = null,
    Object? newSubscriber = null,
    Object? bookmarksFromStreams = null,
    Object? isAllSelected = null,
  }) {
    return _then(_value.copyWith(
      streamsFromSubscriptions: null == streamsFromSubscriptions
          ? _value.streamsFromSubscriptions
          : streamsFromSubscriptions // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsISaved: null == streamsISaved
          ? _value.streamsISaved
          : streamsISaved // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool streamsFromSubscriptions,
      bool streamsISaved,
      bool recommendedStreams,
      bool newSubscriber,
      bool bookmarksFromStreams,
      bool isAllSelected});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamsFromSubscriptions = null,
    Object? streamsISaved = null,
    Object? recommendedStreams = null,
    Object? newSubscriber = null,
    Object? bookmarksFromStreams = null,
    Object? isAllSelected = null,
  }) {
    return _then(_$NotificationStateImpl(
      streamsFromSubscriptions: null == streamsFromSubscriptions
          ? _value.streamsFromSubscriptions
          : streamsFromSubscriptions // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsISaved: null == streamsISaved
          ? _value.streamsISaved
          : streamsISaved // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {this.streamsFromSubscriptions = true,
      this.streamsISaved = false,
      this.recommendedStreams = true,
      this.newSubscriber = true,
      this.bookmarksFromStreams = true,
      this.isAllSelected = false});

  @override
  @JsonKey()
  final bool streamsFromSubscriptions;
  @override
  @JsonKey()
  final bool streamsISaved;
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
  String toString() {
    return 'NotificationState(streamsFromSubscriptions: $streamsFromSubscriptions, streamsISaved: $streamsISaved, recommendedStreams: $recommendedStreams, newSubscriber: $newSubscriber, bookmarksFromStreams: $bookmarksFromStreams, isAllSelected: $isAllSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(
                    other.streamsFromSubscriptions, streamsFromSubscriptions) ||
                other.streamsFromSubscriptions == streamsFromSubscriptions) &&
            (identical(other.streamsISaved, streamsISaved) ||
                other.streamsISaved == streamsISaved) &&
            (identical(other.recommendedStreams, recommendedStreams) ||
                other.recommendedStreams == recommendedStreams) &&
            (identical(other.newSubscriber, newSubscriber) ||
                other.newSubscriber == newSubscriber) &&
            (identical(other.bookmarksFromStreams, bookmarksFromStreams) ||
                other.bookmarksFromStreams == bookmarksFromStreams) &&
            (identical(other.isAllSelected, isAllSelected) ||
                other.isAllSelected == isAllSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      streamsFromSubscriptions,
      streamsISaved,
      recommendedStreams,
      newSubscriber,
      bookmarksFromStreams,
      isAllSelected);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final bool streamsFromSubscriptions,
      final bool streamsISaved,
      final bool recommendedStreams,
      final bool newSubscriber,
      final bool bookmarksFromStreams,
      final bool isAllSelected}) = _$NotificationStateImpl;

  @override
  bool get streamsFromSubscriptions;
  @override
  bool get streamsISaved;
  @override
  bool get recommendedStreams;
  @override
  bool get newSubscriber;
  @override
  bool get bookmarksFromStreams;
  @override
  bool get isAllSelected;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
