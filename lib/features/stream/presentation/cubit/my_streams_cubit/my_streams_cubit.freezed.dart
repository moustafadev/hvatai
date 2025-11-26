// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_streams_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyStreamsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<StreamDataModel> get streams => throw _privateConstructorUsedError;
  MyStreamsPagination? get pagination => throw _privateConstructorUsedError;
  MyStreamsStats? get stats => throw _privateConstructorUsedError;

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStreamsStateCopyWith<MyStreamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStreamsStateCopyWith<$Res> {
  factory $MyStreamsStateCopyWith(
          MyStreamsState value, $Res Function(MyStreamsState) then) =
      _$MyStreamsStateCopyWithImpl<$Res, MyStreamsState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<StreamDataModel> streams,
      MyStreamsPagination? pagination,
      MyStreamsStats? stats});

  $MyStreamsPaginationCopyWith<$Res>? get pagination;
  $MyStreamsStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$MyStreamsStateCopyWithImpl<$Res, $Val extends MyStreamsState>
    implements $MyStreamsStateCopyWith<$Res> {
  _$MyStreamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? streams = null,
    Object? pagination = freezed,
    Object? stats = freezed,
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
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as MyStreamsPagination?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as MyStreamsStats?,
    ) as $Val);
  }

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyStreamsPaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $MyStreamsPaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyStreamsStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $MyStreamsStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyStreamsStateImplCopyWith<$Res>
    implements $MyStreamsStateCopyWith<$Res> {
  factory _$$MyStreamsStateImplCopyWith(_$MyStreamsStateImpl value,
          $Res Function(_$MyStreamsStateImpl) then) =
      __$$MyStreamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<StreamDataModel> streams,
      MyStreamsPagination? pagination,
      MyStreamsStats? stats});

  @override
  $MyStreamsPaginationCopyWith<$Res>? get pagination;
  @override
  $MyStreamsStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$MyStreamsStateImplCopyWithImpl<$Res>
    extends _$MyStreamsStateCopyWithImpl<$Res, _$MyStreamsStateImpl>
    implements _$$MyStreamsStateImplCopyWith<$Res> {
  __$$MyStreamsStateImplCopyWithImpl(
      _$MyStreamsStateImpl _value, $Res Function(_$MyStreamsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? streams = null,
    Object? pagination = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$MyStreamsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as MyStreamsPagination?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as MyStreamsStats?,
    ));
  }
}

/// @nodoc

class _$MyStreamsStateImpl implements _MyStreamsState {
  const _$MyStreamsStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      final List<StreamDataModel> streams = const [],
      this.pagination,
      this.stats})
      : _streams = streams;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<StreamDataModel> _streams;
  @override
  @JsonKey()
  List<StreamDataModel> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

  @override
  final MyStreamsPagination? pagination;
  @override
  final MyStreamsStats? stats;

  @override
  String toString() {
    return 'MyStreamsState(isLoading: $isLoading, errorMessage: $errorMessage, streams: $streams, pagination: $pagination, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStreamsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      const DeepCollectionEquality().hash(_streams), pagination, stats);

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStreamsStateImplCopyWith<_$MyStreamsStateImpl> get copyWith =>
      __$$MyStreamsStateImplCopyWithImpl<_$MyStreamsStateImpl>(
          this, _$identity);
}

abstract class _MyStreamsState implements MyStreamsState {
  const factory _MyStreamsState(
      {final bool isLoading,
      final String errorMessage,
      final List<StreamDataModel> streams,
      final MyStreamsPagination? pagination,
      final MyStreamsStats? stats}) = _$MyStreamsStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<StreamDataModel> get streams;
  @override
  MyStreamsPagination? get pagination;
  @override
  MyStreamsStats? get stats;

  /// Create a copy of MyStreamsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStreamsStateImplCopyWith<_$MyStreamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
