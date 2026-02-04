// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_reviews_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyReviewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  UserRatingsResponse? get userRatings => throw _privateConstructorUsedError;

  /// Create a copy of CompanyReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyReviewsStateCopyWith<CompanyReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyReviewsStateCopyWith<$Res> {
  factory $CompanyReviewsStateCopyWith(
          CompanyReviewsState value, $Res Function(CompanyReviewsState) then) =
      _$CompanyReviewsStateCopyWithImpl<$Res, CompanyReviewsState>;
  @useResult
  $Res call(
      {bool isLoading, String errorMessage, UserRatingsResponse? userRatings});

  $UserRatingsResponseCopyWith<$Res>? get userRatings;
}

/// @nodoc
class _$CompanyReviewsStateCopyWithImpl<$Res, $Val extends CompanyReviewsState>
    implements $CompanyReviewsStateCopyWith<$Res> {
  _$CompanyReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? userRatings = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userRatings: freezed == userRatings
          ? _value.userRatings
          : userRatings // ignore: cast_nullable_to_non_nullable
              as UserRatingsResponse?,
    ) as $Val);
  }

  /// Create a copy of CompanyReviewsState
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
}

/// @nodoc
abstract class _$$CompanyReviewsStateImplCopyWith<$Res>
    implements $CompanyReviewsStateCopyWith<$Res> {
  factory _$$CompanyReviewsStateImplCopyWith(_$CompanyReviewsStateImpl value,
          $Res Function(_$CompanyReviewsStateImpl) then) =
      __$$CompanyReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String errorMessage, UserRatingsResponse? userRatings});

  @override
  $UserRatingsResponseCopyWith<$Res>? get userRatings;
}

/// @nodoc
class __$$CompanyReviewsStateImplCopyWithImpl<$Res>
    extends _$CompanyReviewsStateCopyWithImpl<$Res, _$CompanyReviewsStateImpl>
    implements _$$CompanyReviewsStateImplCopyWith<$Res> {
  __$$CompanyReviewsStateImplCopyWithImpl(_$CompanyReviewsStateImpl _value,
      $Res Function(_$CompanyReviewsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? userRatings = freezed,
  }) {
    return _then(_$CompanyReviewsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userRatings: freezed == userRatings
          ? _value.userRatings
          : userRatings // ignore: cast_nullable_to_non_nullable
              as UserRatingsResponse?,
    ));
  }
}

/// @nodoc

class _$CompanyReviewsStateImpl implements _CompanyReviewsState {
  const _$CompanyReviewsStateImpl(
      {this.isLoading = false, this.errorMessage = '', this.userRatings});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final UserRatingsResponse? userRatings;

  @override
  String toString() {
    return 'CompanyReviewsState(isLoading: $isLoading, errorMessage: $errorMessage, userRatings: $userRatings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyReviewsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.userRatings, userRatings) ||
                other.userRatings == userRatings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, errorMessage, userRatings);

  /// Create a copy of CompanyReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyReviewsStateImplCopyWith<_$CompanyReviewsStateImpl> get copyWith =>
      __$$CompanyReviewsStateImplCopyWithImpl<_$CompanyReviewsStateImpl>(
          this, _$identity);
}

abstract class _CompanyReviewsState implements CompanyReviewsState {
  const factory _CompanyReviewsState(
      {final bool isLoading,
      final String errorMessage,
      final UserRatingsResponse? userRatings}) = _$CompanyReviewsStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  UserRatingsResponse? get userRatings;

  /// Create a copy of CompanyReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyReviewsStateImplCopyWith<_$CompanyReviewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
