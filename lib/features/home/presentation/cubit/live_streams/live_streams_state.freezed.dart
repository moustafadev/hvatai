// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_streams_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiveStreamsState {
  List<StreamDataModel> get liveStreams => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isJoining => throw _privateConstructorUsedError;
  String? get joinError => throw _privateConstructorUsedError;
  JoinStreamData? get joinData => throw _privateConstructorUsedError;

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveStreamsStateCopyWith<LiveStreamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveStreamsStateCopyWith<$Res> {
  factory $LiveStreamsStateCopyWith(
          LiveStreamsState value, $Res Function(LiveStreamsState) then) =
      _$LiveStreamsStateCopyWithImpl<$Res, LiveStreamsState>;
  @useResult
  $Res call(
      {List<StreamDataModel> liveStreams,
      bool isLoading,
      String? error,
      int page,
      int lastPage,
      bool hasMore,
      bool isJoining,
      String? joinError,
      JoinStreamData? joinData});

  $JoinStreamDataCopyWith<$Res>? get joinData;
}

/// @nodoc
class _$LiveStreamsStateCopyWithImpl<$Res, $Val extends LiveStreamsState>
    implements $LiveStreamsStateCopyWith<$Res> {
  _$LiveStreamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveStreams = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
    Object? isJoining = null,
    Object? joinError = freezed,
    Object? joinData = freezed,
  }) {
    return _then(_value.copyWith(
      liveStreams: null == liveStreams
          ? _value.liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoining: null == isJoining
          ? _value.isJoining
          : isJoining // ignore: cast_nullable_to_non_nullable
              as bool,
      joinError: freezed == joinError
          ? _value.joinError
          : joinError // ignore: cast_nullable_to_non_nullable
              as String?,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
    ) as $Val);
  }

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamDataCopyWith<$Res>? get joinData {
    if (_value.joinData == null) {
      return null;
    }

    return $JoinStreamDataCopyWith<$Res>(_value.joinData!, (value) {
      return _then(_value.copyWith(joinData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LiveStreamsStateImplCopyWith<$Res>
    implements $LiveStreamsStateCopyWith<$Res> {
  factory _$$LiveStreamsStateImplCopyWith(_$LiveStreamsStateImpl value,
          $Res Function(_$LiveStreamsStateImpl) then) =
      __$$LiveStreamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StreamDataModel> liveStreams,
      bool isLoading,
      String? error,
      int page,
      int lastPage,
      bool hasMore,
      bool isJoining,
      String? joinError,
      JoinStreamData? joinData});

  @override
  $JoinStreamDataCopyWith<$Res>? get joinData;
}

/// @nodoc
class __$$LiveStreamsStateImplCopyWithImpl<$Res>
    extends _$LiveStreamsStateCopyWithImpl<$Res, _$LiveStreamsStateImpl>
    implements _$$LiveStreamsStateImplCopyWith<$Res> {
  __$$LiveStreamsStateImplCopyWithImpl(_$LiveStreamsStateImpl _value,
      $Res Function(_$LiveStreamsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveStreams = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
    Object? isJoining = null,
    Object? joinError = freezed,
    Object? joinData = freezed,
  }) {
    return _then(_$LiveStreamsStateImpl(
      liveStreams: null == liveStreams
          ? _value._liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoining: null == isJoining
          ? _value.isJoining
          : isJoining // ignore: cast_nullable_to_non_nullable
              as bool,
      joinError: freezed == joinError
          ? _value.joinError
          : joinError // ignore: cast_nullable_to_non_nullable
              as String?,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
    ));
  }
}

/// @nodoc

class _$LiveStreamsStateImpl implements _LiveStreamsState {
  const _$LiveStreamsStateImpl(
      {final List<StreamDataModel> liveStreams = const <StreamDataModel>[],
      this.isLoading = false,
      this.error,
      this.page = 1,
      this.lastPage = 1,
      this.hasMore = true,
      this.isJoining = false,
      this.joinError,
      this.joinData})
      : _liveStreams = liveStreams;

  final List<StreamDataModel> _liveStreams;
  @override
  @JsonKey()
  List<StreamDataModel> get liveStreams {
    if (_liveStreams is EqualUnmodifiableListView) return _liveStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveStreams);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int lastPage;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isJoining;
  @override
  final String? joinError;
  @override
  final JoinStreamData? joinData;

  @override
  String toString() {
    return 'LiveStreamsState(liveStreams: $liveStreams, isLoading: $isLoading, error: $error, page: $page, lastPage: $lastPage, hasMore: $hasMore, isJoining: $isJoining, joinError: $joinError, joinData: $joinData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveStreamsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._liveStreams, _liveStreams) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isJoining, isJoining) ||
                other.isJoining == isJoining) &&
            (identical(other.joinError, joinError) ||
                other.joinError == joinError) &&
            (identical(other.joinData, joinData) ||
                other.joinData == joinData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liveStreams),
      isLoading,
      error,
      page,
      lastPage,
      hasMore,
      isJoining,
      joinError,
      joinData);

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveStreamsStateImplCopyWith<_$LiveStreamsStateImpl> get copyWith =>
      __$$LiveStreamsStateImplCopyWithImpl<_$LiveStreamsStateImpl>(
          this, _$identity);
}

abstract class _LiveStreamsState implements LiveStreamsState {
  const factory _LiveStreamsState(
      {final List<StreamDataModel> liveStreams,
      final bool isLoading,
      final String? error,
      final int page,
      final int lastPage,
      final bool hasMore,
      final bool isJoining,
      final String? joinError,
      final JoinStreamData? joinData}) = _$LiveStreamsStateImpl;

  @override
  List<StreamDataModel> get liveStreams;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  int get page;
  @override
  int get lastPage;
  @override
  bool get hasMore;
  @override
  bool get isJoining;
  @override
  String? get joinError;
  @override
  JoinStreamData? get joinData;

  /// Create a copy of LiveStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveStreamsStateImplCopyWith<_$LiveStreamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
