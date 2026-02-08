// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleStreamState {
  List<StreamDataModel> get scheduledStreams =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleStreamStateCopyWith<ScheduleStreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStreamStateCopyWith<$Res> {
  factory $ScheduleStreamStateCopyWith(
          ScheduleStreamState value, $Res Function(ScheduleStreamState) then) =
      _$ScheduleStreamStateCopyWithImpl<$Res, ScheduleStreamState>;
  @useResult
  $Res call(
      {List<StreamDataModel> scheduledStreams,
      bool isLoading,
      String errorMessage,
      int page,
      int lastPage,
      bool hasMore});
}

/// @nodoc
class _$ScheduleStreamStateCopyWithImpl<$Res, $Val extends ScheduleStreamState>
    implements $ScheduleStreamStateCopyWith<$Res> {
  _$ScheduleStreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledStreams = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      scheduledStreams: null == scheduledStreams
          ? _value.scheduledStreams
          : scheduledStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleStreamStateImplCopyWith<$Res>
    implements $ScheduleStreamStateCopyWith<$Res> {
  factory _$$ScheduleStreamStateImplCopyWith(_$ScheduleStreamStateImpl value,
          $Res Function(_$ScheduleStreamStateImpl) then) =
      __$$ScheduleStreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<StreamDataModel> scheduledStreams,
      bool isLoading,
      String errorMessage,
      int page,
      int lastPage,
      bool hasMore});
}

/// @nodoc
class __$$ScheduleStreamStateImplCopyWithImpl<$Res>
    extends _$ScheduleStreamStateCopyWithImpl<$Res, _$ScheduleStreamStateImpl>
    implements _$$ScheduleStreamStateImplCopyWith<$Res> {
  __$$ScheduleStreamStateImplCopyWithImpl(_$ScheduleStreamStateImpl _value,
      $Res Function(_$ScheduleStreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduledStreams = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
  }) {
    return _then(_$ScheduleStreamStateImpl(
      scheduledStreams: null == scheduledStreams
          ? _value._scheduledStreams
          : scheduledStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$ScheduleStreamStateImpl implements _ScheduleStreamState {
  const _$ScheduleStreamStateImpl(
      {final List<StreamDataModel> scheduledStreams = const [],
      this.isLoading = false,
      this.errorMessage = '',
      this.page = 1,
      this.lastPage = 1,
      this.hasMore = true})
      : _scheduledStreams = scheduledStreams;

  final List<StreamDataModel> _scheduledStreams;
  @override
  @JsonKey()
  List<StreamDataModel> get scheduledStreams {
    if (_scheduledStreams is EqualUnmodifiableListView)
      return _scheduledStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scheduledStreams);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
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
  String toString() {
    return 'ScheduleStreamState(scheduledStreams: $scheduledStreams, isLoading: $isLoading, errorMessage: $errorMessage, page: $page, lastPage: $lastPage, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleStreamStateImpl &&
            const DeepCollectionEquality()
                .equals(other._scheduledStreams, _scheduledStreams) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_scheduledStreams),
      isLoading,
      errorMessage,
      page,
      lastPage,
      hasMore);

  /// Create a copy of ScheduleStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleStreamStateImplCopyWith<_$ScheduleStreamStateImpl> get copyWith =>
      __$$ScheduleStreamStateImplCopyWithImpl<_$ScheduleStreamStateImpl>(
          this, _$identity);
}

abstract class _ScheduleStreamState implements ScheduleStreamState {
  const factory _ScheduleStreamState(
      {final List<StreamDataModel> scheduledStreams,
      final bool isLoading,
      final String errorMessage,
      final int page,
      final int lastPage,
      final bool hasMore}) = _$ScheduleStreamStateImpl;

  @override
  List<StreamDataModel> get scheduledStreams;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  int get page;
  @override
  int get lastPage;
  @override
  bool get hasMore;

  /// Create a copy of ScheduleStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleStreamStateImplCopyWith<_$ScheduleStreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
