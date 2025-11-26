// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_streams_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyStreamsResponse _$MyStreamsResponseFromJson(Map<String, dynamic> json) {
  return _MyStreamsResponse.fromJson(json);
}

/// @nodoc
mixin _$MyStreamsResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StreamDataModel>? get data => throw _privateConstructorUsedError;
  MyStreamsPagination? get pagination => throw _privateConstructorUsedError;
  MyStreamsStats? get stats => throw _privateConstructorUsedError;

  /// Serializes this MyStreamsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyStreamsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStreamsResponseCopyWith<MyStreamsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStreamsResponseCopyWith<$Res> {
  factory $MyStreamsResponseCopyWith(
          MyStreamsResponse value, $Res Function(MyStreamsResponse) then) =
      _$MyStreamsResponseCopyWithImpl<$Res, MyStreamsResponse>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<StreamDataModel>? data,
      MyStreamsPagination? pagination,
      MyStreamsStats? stats});

  $MyStreamsPaginationCopyWith<$Res>? get pagination;
  $MyStreamsStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$MyStreamsResponseCopyWithImpl<$Res, $Val extends MyStreamsResponse>
    implements $MyStreamsResponseCopyWith<$Res> {
  _$MyStreamsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyStreamsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
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

  /// Create a copy of MyStreamsResponse
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

  /// Create a copy of MyStreamsResponse
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
abstract class _$$MyStreamsResponseImplCopyWith<$Res>
    implements $MyStreamsResponseCopyWith<$Res> {
  factory _$$MyStreamsResponseImplCopyWith(_$MyStreamsResponseImpl value,
          $Res Function(_$MyStreamsResponseImpl) then) =
      __$$MyStreamsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      List<StreamDataModel>? data,
      MyStreamsPagination? pagination,
      MyStreamsStats? stats});

  @override
  $MyStreamsPaginationCopyWith<$Res>? get pagination;
  @override
  $MyStreamsStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$MyStreamsResponseImplCopyWithImpl<$Res>
    extends _$MyStreamsResponseCopyWithImpl<$Res, _$MyStreamsResponseImpl>
    implements _$$MyStreamsResponseImplCopyWith<$Res> {
  __$$MyStreamsResponseImplCopyWithImpl(_$MyStreamsResponseImpl _value,
      $Res Function(_$MyStreamsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyStreamsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$MyStreamsResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>?,
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
@JsonSerializable()
class _$MyStreamsResponseImpl implements _MyStreamsResponse {
  const _$MyStreamsResponseImpl(
      {this.success,
      this.message,
      final List<StreamDataModel>? data,
      this.pagination,
      this.stats})
      : _data = data;

  factory _$MyStreamsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyStreamsResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  final List<StreamDataModel>? _data;
  @override
  List<StreamDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MyStreamsPagination? pagination;
  @override
  final MyStreamsStats? stats;

  @override
  String toString() {
    return 'MyStreamsResponse(success: $success, message: $message, data: $data, pagination: $pagination, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStreamsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data), pagination, stats);

  /// Create a copy of MyStreamsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStreamsResponseImplCopyWith<_$MyStreamsResponseImpl> get copyWith =>
      __$$MyStreamsResponseImplCopyWithImpl<_$MyStreamsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyStreamsResponseImplToJson(
      this,
    );
  }
}

abstract class _MyStreamsResponse implements MyStreamsResponse {
  const factory _MyStreamsResponse(
      {final bool? success,
      final String? message,
      final List<StreamDataModel>? data,
      final MyStreamsPagination? pagination,
      final MyStreamsStats? stats}) = _$MyStreamsResponseImpl;

  factory _MyStreamsResponse.fromJson(Map<String, dynamic> json) =
      _$MyStreamsResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  List<StreamDataModel>? get data;
  @override
  MyStreamsPagination? get pagination;
  @override
  MyStreamsStats? get stats;

  /// Create a copy of MyStreamsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStreamsResponseImplCopyWith<_$MyStreamsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyStreamsPagination _$MyStreamsPaginationFromJson(Map<String, dynamic> json) {
  return _MyStreamsPagination.fromJson(json);
}

/// @nodoc
mixin _$MyStreamsPagination {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

  /// Serializes this MyStreamsPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyStreamsPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStreamsPaginationCopyWith<MyStreamsPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStreamsPaginationCopyWith<$Res> {
  factory $MyStreamsPaginationCopyWith(
          MyStreamsPagination value, $Res Function(MyStreamsPagination) then) =
      _$MyStreamsPaginationCopyWithImpl<$Res, MyStreamsPagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$MyStreamsPaginationCopyWithImpl<$Res, $Val extends MyStreamsPagination>
    implements $MyStreamsPaginationCopyWith<$Res> {
  _$MyStreamsPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyStreamsPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyStreamsPaginationImplCopyWith<$Res>
    implements $MyStreamsPaginationCopyWith<$Res> {
  factory _$$MyStreamsPaginationImplCopyWith(_$MyStreamsPaginationImpl value,
          $Res Function(_$MyStreamsPaginationImpl) then) =
      __$$MyStreamsPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$$MyStreamsPaginationImplCopyWithImpl<$Res>
    extends _$MyStreamsPaginationCopyWithImpl<$Res, _$MyStreamsPaginationImpl>
    implements _$$MyStreamsPaginationImplCopyWith<$Res> {
  __$$MyStreamsPaginationImplCopyWithImpl(_$MyStreamsPaginationImpl _value,
      $Res Function(_$MyStreamsPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyStreamsPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$MyStreamsPaginationImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyStreamsPaginationImpl implements _MyStreamsPagination {
  const _$MyStreamsPaginationImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'last_page') this.lastPage});

  factory _$MyStreamsPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyStreamsPaginationImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  @override
  String toString() {
    return 'MyStreamsPagination(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStreamsPaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, perPage, total, lastPage);

  /// Create a copy of MyStreamsPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStreamsPaginationImplCopyWith<_$MyStreamsPaginationImpl> get copyWith =>
      __$$MyStreamsPaginationImplCopyWithImpl<_$MyStreamsPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyStreamsPaginationImplToJson(
      this,
    );
  }
}

abstract class _MyStreamsPagination implements MyStreamsPagination {
  const factory _MyStreamsPagination(
          {@JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'per_page') final int? perPage,
          final int? total,
          @JsonKey(name: 'last_page') final int? lastPage}) =
      _$MyStreamsPaginationImpl;

  factory _MyStreamsPagination.fromJson(Map<String, dynamic> json) =
      _$MyStreamsPaginationImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;

  /// Create a copy of MyStreamsPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStreamsPaginationImplCopyWith<_$MyStreamsPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyStreamsStats _$MyStreamsStatsFromJson(Map<String, dynamic> json) {
  return _MyStreamsStats.fromJson(json);
}

/// @nodoc
mixin _$MyStreamsStats {
  int? get total => throw _privateConstructorUsedError;
  int? get live => throw _privateConstructorUsedError;
  int? get ended => throw _privateConstructorUsedError;
  int? get scheduled => throw _privateConstructorUsedError;

  /// Serializes this MyStreamsStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyStreamsStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyStreamsStatsCopyWith<MyStreamsStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStreamsStatsCopyWith<$Res> {
  factory $MyStreamsStatsCopyWith(
          MyStreamsStats value, $Res Function(MyStreamsStats) then) =
      _$MyStreamsStatsCopyWithImpl<$Res, MyStreamsStats>;
  @useResult
  $Res call({int? total, int? live, int? ended, int? scheduled});
}

/// @nodoc
class _$MyStreamsStatsCopyWithImpl<$Res, $Val extends MyStreamsStats>
    implements $MyStreamsStatsCopyWith<$Res> {
  _$MyStreamsStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyStreamsStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? live = freezed,
    Object? ended = freezed,
    Object? scheduled = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as int?,
      ended: freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduled: freezed == scheduled
          ? _value.scheduled
          : scheduled // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyStreamsStatsImplCopyWith<$Res>
    implements $MyStreamsStatsCopyWith<$Res> {
  factory _$$MyStreamsStatsImplCopyWith(_$MyStreamsStatsImpl value,
          $Res Function(_$MyStreamsStatsImpl) then) =
      __$$MyStreamsStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? live, int? ended, int? scheduled});
}

/// @nodoc
class __$$MyStreamsStatsImplCopyWithImpl<$Res>
    extends _$MyStreamsStatsCopyWithImpl<$Res, _$MyStreamsStatsImpl>
    implements _$$MyStreamsStatsImplCopyWith<$Res> {
  __$$MyStreamsStatsImplCopyWithImpl(
      _$MyStreamsStatsImpl _value, $Res Function(_$MyStreamsStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyStreamsStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? live = freezed,
    Object? ended = freezed,
    Object? scheduled = freezed,
  }) {
    return _then(_$MyStreamsStatsImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      live: freezed == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as int?,
      ended: freezed == ended
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduled: freezed == scheduled
          ? _value.scheduled
          : scheduled // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyStreamsStatsImpl implements _MyStreamsStats {
  const _$MyStreamsStatsImpl(
      {this.total, this.live, this.ended, this.scheduled});

  factory _$MyStreamsStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyStreamsStatsImplFromJson(json);

  @override
  final int? total;
  @override
  final int? live;
  @override
  final int? ended;
  @override
  final int? scheduled;

  @override
  String toString() {
    return 'MyStreamsStats(total: $total, live: $live, ended: $ended, scheduled: $scheduled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStreamsStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.live, live) || other.live == live) &&
            (identical(other.ended, ended) || other.ended == ended) &&
            (identical(other.scheduled, scheduled) ||
                other.scheduled == scheduled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, live, ended, scheduled);

  /// Create a copy of MyStreamsStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStreamsStatsImplCopyWith<_$MyStreamsStatsImpl> get copyWith =>
      __$$MyStreamsStatsImplCopyWithImpl<_$MyStreamsStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyStreamsStatsImplToJson(
      this,
    );
  }
}

abstract class _MyStreamsStats implements MyStreamsStats {
  const factory _MyStreamsStats(
      {final int? total,
      final int? live,
      final int? ended,
      final int? scheduled}) = _$MyStreamsStatsImpl;

  factory _MyStreamsStats.fromJson(Map<String, dynamic> json) =
      _$MyStreamsStatsImpl.fromJson;

  @override
  int? get total;
  @override
  int? get live;
  @override
  int? get ended;
  @override
  int? get scheduled;

  /// Create a copy of MyStreamsStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyStreamsStatsImplCopyWith<_$MyStreamsStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
