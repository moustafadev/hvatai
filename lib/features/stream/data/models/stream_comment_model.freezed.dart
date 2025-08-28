// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreamCommentResponse _$StreamCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _StreamCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$StreamCommentResponse {
  bool? get success => throw _privateConstructorUsedError;
  StreamCommentPageData? get data => throw _privateConstructorUsedError;

  /// Serializes this StreamCommentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamCommentResponseCopyWith<StreamCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamCommentResponseCopyWith<$Res> {
  factory $StreamCommentResponseCopyWith(StreamCommentResponse value,
          $Res Function(StreamCommentResponse) then) =
      _$StreamCommentResponseCopyWithImpl<$Res, StreamCommentResponse>;
  @useResult
  $Res call({bool? success, StreamCommentPageData? data});

  $StreamCommentPageDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StreamCommentResponseCopyWithImpl<$Res,
        $Val extends StreamCommentResponse>
    implements $StreamCommentResponseCopyWith<$Res> {
  _$StreamCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamCommentPageData?,
    ) as $Val);
  }

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamCommentPageDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StreamCommentPageDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamCommentResponseImplCopyWith<$Res>
    implements $StreamCommentResponseCopyWith<$Res> {
  factory _$$StreamCommentResponseImplCopyWith(
          _$StreamCommentResponseImpl value,
          $Res Function(_$StreamCommentResponseImpl) then) =
      __$$StreamCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, StreamCommentPageData? data});

  @override
  $StreamCommentPageDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StreamCommentResponseImplCopyWithImpl<$Res>
    extends _$StreamCommentResponseCopyWithImpl<$Res,
        _$StreamCommentResponseImpl>
    implements _$$StreamCommentResponseImplCopyWith<$Res> {
  __$$StreamCommentResponseImplCopyWithImpl(_$StreamCommentResponseImpl _value,
      $Res Function(_$StreamCommentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$StreamCommentResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreamCommentPageData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamCommentResponseImpl implements _StreamCommentResponse {
  const _$StreamCommentResponseImpl({this.success, this.data});

  factory _$StreamCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamCommentResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final StreamCommentPageData? data;

  @override
  String toString() {
    return 'StreamCommentResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCommentResponseImplCopyWith<_$StreamCommentResponseImpl>
      get copyWith => __$$StreamCommentResponseImplCopyWithImpl<
          _$StreamCommentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _StreamCommentResponse implements StreamCommentResponse {
  const factory _StreamCommentResponse(
      {final bool? success,
      final StreamCommentPageData? data}) = _$StreamCommentResponseImpl;

  factory _StreamCommentResponse.fromJson(Map<String, dynamic> json) =
      _$StreamCommentResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  StreamCommentPageData? get data;

  /// Create a copy of StreamCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamCommentResponseImplCopyWith<_$StreamCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamCommentPageData _$StreamCommentPageDataFromJson(
    Map<String, dynamic> json) {
  return _StreamCommentPageData.fromJson(json);
}

/// @nodoc
mixin _$StreamCommentPageData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<StreamCommentModel>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<PageLink>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this StreamCommentPageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamCommentPageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamCommentPageDataCopyWith<StreamCommentPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamCommentPageDataCopyWith<$Res> {
  factory $StreamCommentPageDataCopyWith(StreamCommentPageData value,
          $Res Function(StreamCommentPageData) then) =
      _$StreamCommentPageDataCopyWithImpl<$Res, StreamCommentPageData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<StreamCommentModel>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<PageLink>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$StreamCommentPageDataCopyWithImpl<$Res,
        $Val extends StreamCommentPageData>
    implements $StreamCommentPageDataCopyWith<$Res> {
  _$StreamCommentPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamCommentPageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamCommentModel>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PageLink>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamCommentPageDataImplCopyWith<$Res>
    implements $StreamCommentPageDataCopyWith<$Res> {
  factory _$$StreamCommentPageDataImplCopyWith(
          _$StreamCommentPageDataImpl value,
          $Res Function(_$StreamCommentPageDataImpl) then) =
      __$$StreamCommentPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<StreamCommentModel>? data,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      List<PageLink>? links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$StreamCommentPageDataImplCopyWithImpl<$Res>
    extends _$StreamCommentPageDataCopyWithImpl<$Res,
        _$StreamCommentPageDataImpl>
    implements _$$StreamCommentPageDataImplCopyWith<$Res> {
  __$$StreamCommentPageDataImplCopyWithImpl(_$StreamCommentPageDataImpl _value,
      $Res Function(_$StreamCommentPageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamCommentPageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$StreamCommentPageDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamCommentModel>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PageLink>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamCommentPageDataImpl implements _StreamCommentPageData {
  const _$StreamCommentPageDataImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      final List<StreamCommentModel>? data,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      this.from,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      final List<PageLink>? links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$StreamCommentPageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamCommentPageDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<StreamCommentModel>? _data;
  @override
  List<StreamCommentModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  final List<PageLink>? _links;
  @override
  List<PageLink>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'StreamCommentPageData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentPageDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  /// Create a copy of StreamCommentPageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCommentPageDataImplCopyWith<_$StreamCommentPageDataImpl>
      get copyWith => __$$StreamCommentPageDataImplCopyWithImpl<
          _$StreamCommentPageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamCommentPageDataImplToJson(
      this,
    );
  }
}

abstract class _StreamCommentPageData implements StreamCommentPageData {
  const factory _StreamCommentPageData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final List<StreamCommentModel>? data,
      @JsonKey(name: 'first_page_url') final String? firstPageUrl,
      final int? from,
      @JsonKey(name: 'last_page') final int? lastPage,
      @JsonKey(name: 'last_page_url') final String? lastPageUrl,
      final List<PageLink>? links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      final String? path,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      final int? to,
      final int? total}) = _$StreamCommentPageDataImpl;

  factory _StreamCommentPageData.fromJson(Map<String, dynamic> json) =
      _$StreamCommentPageDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<StreamCommentModel>? get data;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  List<PageLink>? get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;

  /// Create a copy of StreamCommentPageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamCommentPageDataImplCopyWith<_$StreamCommentPageDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamCommentModel _$StreamCommentModelFromJson(Map<String, dynamic> json) {
  return _StreamCommentModel.fromJson(json);
}

/// @nodoc
mixin _$StreamCommentModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  dynamic get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_visible')
  bool? get isVisible => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  StreamUserModel? get user => throw _privateConstructorUsedError;

  /// Serializes this StreamCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamCommentModelCopyWith<StreamCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamCommentModelCopyWith<$Res> {
  factory $StreamCommentModelCopyWith(
          StreamCommentModel value, $Res Function(StreamCommentModel) then) =
      _$StreamCommentModelCopyWithImpl<$Res, StreamCommentModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'user_id') int? userId,
      String? message,
      String? type,
      dynamic metadata,
      @JsonKey(name: 'is_visible') bool? isVisible,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      StreamUserModel? user});

  $StreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$StreamCommentModelCopyWithImpl<$Res, $Val extends StreamCommentModel>
    implements $StreamCommentModelCopyWith<$Res> {
  _$StreamCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? userId = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? isVisible = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
    ) as $Val);
  }

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $StreamUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamCommentModelImplCopyWith<$Res>
    implements $StreamCommentModelCopyWith<$Res> {
  factory _$$StreamCommentModelImplCopyWith(_$StreamCommentModelImpl value,
          $Res Function(_$StreamCommentModelImpl) then) =
      __$$StreamCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'stream_id') int? streamId,
      @JsonKey(name: 'user_id') int? userId,
      String? message,
      String? type,
      dynamic metadata,
      @JsonKey(name: 'is_visible') bool? isVisible,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      StreamUserModel? user});

  @override
  $StreamUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StreamCommentModelImplCopyWithImpl<$Res>
    extends _$StreamCommentModelCopyWithImpl<$Res, _$StreamCommentModelImpl>
    implements _$$StreamCommentModelImplCopyWith<$Res> {
  __$$StreamCommentModelImplCopyWithImpl(_$StreamCommentModelImpl _value,
      $Res Function(_$StreamCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? userId = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? metadata = freezed,
    Object? isVisible = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$StreamCommentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamCommentModelImpl implements _StreamCommentModel {
  const _$StreamCommentModelImpl(
      {this.id,
      @JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'user_id') this.userId,
      this.message,
      this.type,
      this.metadata,
      @JsonKey(name: 'is_visible') this.isVisible,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.user});

  factory _$StreamCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamCommentModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'stream_id')
  final int? streamId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? message;
  @override
  final String? type;
  @override
  final dynamic metadata;
  @override
  @JsonKey(name: 'is_visible')
  final bool? isVisible;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final StreamUserModel? user;

  @override
  String toString() {
    return 'StreamCommentModel(id: $id, streamId: $streamId, userId: $userId, message: $message, type: $type, metadata: $metadata, isVisible: $isVisible, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streamId,
      userId,
      message,
      type,
      const DeepCollectionEquality().hash(metadata),
      isVisible,
      createdAt,
      updatedAt,
      user);

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamCommentModelImplCopyWith<_$StreamCommentModelImpl> get copyWith =>
      __$$StreamCommentModelImplCopyWithImpl<_$StreamCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamCommentModelImplToJson(
      this,
    );
  }
}

abstract class _StreamCommentModel implements StreamCommentModel {
  const factory _StreamCommentModel(
      {final int? id,
      @JsonKey(name: 'stream_id') final int? streamId,
      @JsonKey(name: 'user_id') final int? userId,
      final String? message,
      final String? type,
      final dynamic metadata,
      @JsonKey(name: 'is_visible') final bool? isVisible,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final StreamUserModel? user}) = _$StreamCommentModelImpl;

  factory _StreamCommentModel.fromJson(Map<String, dynamic> json) =
      _$StreamCommentModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'stream_id')
  int? get streamId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get message;
  @override
  String? get type;
  @override
  dynamic get metadata;
  @override
  @JsonKey(name: 'is_visible')
  bool? get isVisible;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  StreamUserModel? get user;

  /// Create a copy of StreamCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamCommentModelImplCopyWith<_$StreamCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageLink _$PageLinkFromJson(Map<String, dynamic> json) {
  return _PageLink.fromJson(json);
}

/// @nodoc
mixin _$PageLink {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this PageLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageLinkCopyWith<PageLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageLinkCopyWith<$Res> {
  factory $PageLinkCopyWith(PageLink value, $Res Function(PageLink) then) =
      _$PageLinkCopyWithImpl<$Res, PageLink>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$PageLinkCopyWithImpl<$Res, $Val extends PageLink>
    implements $PageLinkCopyWith<$Res> {
  _$PageLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageLinkImplCopyWith<$Res>
    implements $PageLinkCopyWith<$Res> {
  factory _$$PageLinkImplCopyWith(
          _$PageLinkImpl value, $Res Function(_$PageLinkImpl) then) =
      __$$PageLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$PageLinkImplCopyWithImpl<$Res>
    extends _$PageLinkCopyWithImpl<$Res, _$PageLinkImpl>
    implements _$$PageLinkImplCopyWith<$Res> {
  __$$PageLinkImplCopyWithImpl(
      _$PageLinkImpl _value, $Res Function(_$PageLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$PageLinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageLinkImpl implements _PageLink {
  const _$PageLinkImpl({this.url, this.label, this.active});

  factory _$PageLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageLinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'PageLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageLinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of PageLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageLinkImplCopyWith<_$PageLinkImpl> get copyWith =>
      __$$PageLinkImplCopyWithImpl<_$PageLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageLinkImplToJson(
      this,
    );
  }
}

abstract class _PageLink implements PageLink {
  const factory _PageLink(
      {final String? url,
      final String? label,
      final bool? active}) = _$PageLinkImpl;

  factory _PageLink.fromJson(Map<String, dynamic> json) =
      _$PageLinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;

  /// Create a copy of PageLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageLinkImplCopyWith<_$PageLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
