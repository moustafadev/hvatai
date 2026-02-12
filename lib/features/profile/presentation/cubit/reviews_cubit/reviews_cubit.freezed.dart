// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReplying => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isShowingAboutMe =>
      throw _privateConstructorUsedError; // true = Обо мне, false = Оставленные мной
  UserRatingsResponse? get userRatings => throw _privateConstructorUsedError;
  MyRatingsResponse? get myRatings => throw _privateConstructorUsedError;
  GivenRating? get deletedRating => throw _privateConstructorUsedError;

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewsStateCopyWith<ReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res, ReviewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isReplying,
      String errorMessage,
      bool isShowingAboutMe,
      UserRatingsResponse? userRatings,
      MyRatingsResponse? myRatings,
      GivenRating? deletedRating});

  $UserRatingsResponseCopyWith<$Res>? get userRatings;
  $MyRatingsResponseCopyWith<$Res>? get myRatings;
  $GivenRatingCopyWith<$Res>? get deletedRating;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res, $Val extends ReviewsState>
    implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReplying = null,
    Object? errorMessage = null,
    Object? isShowingAboutMe = null,
    Object? userRatings = freezed,
    Object? myRatings = freezed,
    Object? deletedRating = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingAboutMe: null == isShowingAboutMe
          ? _value.isShowingAboutMe
          : isShowingAboutMe // ignore: cast_nullable_to_non_nullable
              as bool,
      userRatings: freezed == userRatings
          ? _value.userRatings
          : userRatings // ignore: cast_nullable_to_non_nullable
              as UserRatingsResponse?,
      myRatings: freezed == myRatings
          ? _value.myRatings
          : myRatings // ignore: cast_nullable_to_non_nullable
              as MyRatingsResponse?,
      deletedRating: freezed == deletedRating
          ? _value.deletedRating
          : deletedRating // ignore: cast_nullable_to_non_nullable
              as GivenRating?,
    ) as $Val);
  }

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRatingsResponseCopyWith<$Res>? get userRatings {
    if (_value.userRatings == null) {
      return null;
    }

    return $UserRatingsResponseCopyWith<$Res>(_value.userRatings!, (value) {
      return _then(_value.copyWith(userRatings: value) as $Val);
    });
  }

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyRatingsResponseCopyWith<$Res>? get myRatings {
    if (_value.myRatings == null) {
      return null;
    }

    return $MyRatingsResponseCopyWith<$Res>(_value.myRatings!, (value) {
      return _then(_value.copyWith(myRatings: value) as $Val);
    });
  }

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GivenRatingCopyWith<$Res>? get deletedRating {
    if (_value.deletedRating == null) {
      return null;
    }

    return $GivenRatingCopyWith<$Res>(_value.deletedRating!, (value) {
      return _then(_value.copyWith(deletedRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewsStateImplCopyWith<$Res>
    implements $ReviewsStateCopyWith<$Res> {
  factory _$$ReviewsStateImplCopyWith(
          _$ReviewsStateImpl value, $Res Function(_$ReviewsStateImpl) then) =
      __$$ReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isReplying,
      String errorMessage,
      bool isShowingAboutMe,
      UserRatingsResponse? userRatings,
      MyRatingsResponse? myRatings,
      GivenRating? deletedRating});

  @override
  $UserRatingsResponseCopyWith<$Res>? get userRatings;
  @override
  $MyRatingsResponseCopyWith<$Res>? get myRatings;
  @override
  $GivenRatingCopyWith<$Res>? get deletedRating;
}

/// @nodoc
class __$$ReviewsStateImplCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$ReviewsStateImpl>
    implements _$$ReviewsStateImplCopyWith<$Res> {
  __$$ReviewsStateImplCopyWithImpl(
      _$ReviewsStateImpl _value, $Res Function(_$ReviewsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReplying = null,
    Object? errorMessage = null,
    Object? isShowingAboutMe = null,
    Object? userRatings = freezed,
    Object? myRatings = freezed,
    Object? deletedRating = freezed,
  }) {
    return _then(_$ReviewsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isShowingAboutMe: null == isShowingAboutMe
          ? _value.isShowingAboutMe
          : isShowingAboutMe // ignore: cast_nullable_to_non_nullable
              as bool,
      userRatings: freezed == userRatings
          ? _value.userRatings
          : userRatings // ignore: cast_nullable_to_non_nullable
              as UserRatingsResponse?,
      myRatings: freezed == myRatings
          ? _value.myRatings
          : myRatings // ignore: cast_nullable_to_non_nullable
              as MyRatingsResponse?,
      deletedRating: freezed == deletedRating
          ? _value.deletedRating
          : deletedRating // ignore: cast_nullable_to_non_nullable
              as GivenRating?,
    ));
  }
}

/// @nodoc

class _$ReviewsStateImpl implements _ReviewsState {
  const _$ReviewsStateImpl(
      {this.isLoading = false,
      this.isReplying = false,
      this.errorMessage = '',
      this.isShowingAboutMe = true,
      this.userRatings,
      this.myRatings,
      this.deletedRating});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReplying;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isShowingAboutMe;
// true = Обо мне, false = Оставленные мной
  @override
  final UserRatingsResponse? userRatings;
  @override
  final MyRatingsResponse? myRatings;
  @override
  final GivenRating? deletedRating;

  @override
  String toString() {
    return 'ReviewsState(isLoading: $isLoading, isReplying: $isReplying, errorMessage: $errorMessage, isShowingAboutMe: $isShowingAboutMe, userRatings: $userRatings, myRatings: $myRatings, deletedRating: $deletedRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReplying, isReplying) ||
                other.isReplying == isReplying) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isShowingAboutMe, isShowingAboutMe) ||
                other.isShowingAboutMe == isShowingAboutMe) &&
            (identical(other.userRatings, userRatings) ||
                other.userRatings == userRatings) &&
            (identical(other.myRatings, myRatings) ||
                other.myRatings == myRatings) &&
            (identical(other.deletedRating, deletedRating) ||
                other.deletedRating == deletedRating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isReplying,
      errorMessage, isShowingAboutMe, userRatings, myRatings, deletedRating);

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsStateImplCopyWith<_$ReviewsStateImpl> get copyWith =>
      __$$ReviewsStateImplCopyWithImpl<_$ReviewsStateImpl>(this, _$identity);
}

abstract class _ReviewsState implements ReviewsState {
  const factory _ReviewsState(
      {final bool isLoading,
      final bool isReplying,
      final String errorMessage,
      final bool isShowingAboutMe,
      final UserRatingsResponse? userRatings,
      final MyRatingsResponse? myRatings,
      final GivenRating? deletedRating}) = _$ReviewsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isReplying;
  @override
  String get errorMessage;
  @override
  bool get isShowingAboutMe; // true = Обо мне, false = Оставленные мной
  @override
  UserRatingsResponse? get userRatings;
  @override
  MyRatingsResponse? get myRatings;
  @override
  GivenRating? get deletedRating;

  /// Create a copy of ReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewsStateImplCopyWith<_$ReviewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
