// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_stream_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidStreamResponse _$BidStreamResponseFromJson(Map<String, dynamic> json) {
  return _BidStreamResponse.fromJson(json);
}

/// @nodoc
mixin _$BidStreamResponse {
  bool get success => throw _privateConstructorUsedError;
  BidStreamData get data => throw _privateConstructorUsedError;

  /// Serializes this BidStreamResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidStreamResponseCopyWith<BidStreamResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidStreamResponseCopyWith<$Res> {
  factory $BidStreamResponseCopyWith(
          BidStreamResponse value, $Res Function(BidStreamResponse) then) =
      _$BidStreamResponseCopyWithImpl<$Res, BidStreamResponse>;
  @useResult
  $Res call({bool success, BidStreamData data});

  $BidStreamDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BidStreamResponseCopyWithImpl<$Res, $Val extends BidStreamResponse>
    implements $BidStreamResponseCopyWith<$Res> {
  _$BidStreamResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BidStreamData,
    ) as $Val);
  }

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidStreamDataCopyWith<$Res> get data {
    return $BidStreamDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidStreamResponseImplCopyWith<$Res>
    implements $BidStreamResponseCopyWith<$Res> {
  factory _$$BidStreamResponseImplCopyWith(_$BidStreamResponseImpl value,
          $Res Function(_$BidStreamResponseImpl) then) =
      __$$BidStreamResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, BidStreamData data});

  @override
  $BidStreamDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BidStreamResponseImplCopyWithImpl<$Res>
    extends _$BidStreamResponseCopyWithImpl<$Res, _$BidStreamResponseImpl>
    implements _$$BidStreamResponseImplCopyWith<$Res> {
  __$$BidStreamResponseImplCopyWithImpl(_$BidStreamResponseImpl _value,
      $Res Function(_$BidStreamResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$BidStreamResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BidStreamData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidStreamResponseImpl implements _BidStreamResponse {
  const _$BidStreamResponseImpl({required this.success, required this.data});

  factory _$BidStreamResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidStreamResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final BidStreamData data;

  @override
  String toString() {
    return 'BidStreamResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidStreamResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStreamResponseImplCopyWith<_$BidStreamResponseImpl> get copyWith =>
      __$$BidStreamResponseImplCopyWithImpl<_$BidStreamResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidStreamResponseImplToJson(
      this,
    );
  }
}

abstract class _BidStreamResponse implements BidStreamResponse {
  const factory _BidStreamResponse(
      {required final bool success,
      required final BidStreamData data}) = _$BidStreamResponseImpl;

  factory _BidStreamResponse.fromJson(Map<String, dynamic> json) =
      _$BidStreamResponseImpl.fromJson;

  @override
  bool get success;
  @override
  BidStreamData get data;

  /// Create a copy of BidStreamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidStreamResponseImplCopyWith<_$BidStreamResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidStreamData _$BidStreamDataFromJson(Map<String, dynamic> json) {
  return _BidStreamData.fromJson(json);
}

/// @nodoc
mixin _$BidStreamData {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  List<BidStreamItem> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<BidStreamLink>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this BidStreamData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidStreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidStreamDataCopyWith<BidStreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidStreamDataCopyWith<$Res> {
  factory $BidStreamDataCopyWith(
          BidStreamData value, $Res Function(BidStreamData) then) =
      _$BidStreamDataCopyWithImpl<$Res, BidStreamData>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<BidStreamItem> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<BidStreamLink>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$BidStreamDataCopyWithImpl<$Res, $Val extends BidStreamData>
    implements $BidStreamDataCopyWith<$Res> {
  _$BidStreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidStreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
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
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BidStreamItem>,
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
              as List<BidStreamLink>?,
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
abstract class _$$BidStreamDataImplCopyWith<$Res>
    implements $BidStreamDataCopyWith<$Res> {
  factory _$$BidStreamDataImplCopyWith(
          _$BidStreamDataImpl value, $Res Function(_$BidStreamDataImpl) then) =
      __$$BidStreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      List<BidStreamItem> data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<BidStreamLink>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$BidStreamDataImplCopyWithImpl<$Res>
    extends _$BidStreamDataCopyWithImpl<$Res, _$BidStreamDataImpl>
    implements _$$BidStreamDataImplCopyWith<$Res> {
  __$$BidStreamDataImplCopyWithImpl(
      _$BidStreamDataImpl _value, $Res Function(_$BidStreamDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidStreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
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
    return _then(_$BidStreamDataImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BidStreamItem>,
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
              as List<BidStreamLink>?,
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
class _$BidStreamDataImpl implements _BidStreamData {
  const _$BidStreamDataImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      required final List<BidStreamItem> data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      final List<BidStreamLink>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$BidStreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidStreamDataImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  final List<BidStreamItem> _data;
  @override
  List<BidStreamItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<BidStreamLink>? _links;
  @override
  List<BidStreamLink>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'BidStreamData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidStreamDataImpl &&
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

  /// Create a copy of BidStreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStreamDataImplCopyWith<_$BidStreamDataImpl> get copyWith =>
      __$$BidStreamDataImplCopyWithImpl<_$BidStreamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidStreamDataImplToJson(
      this,
    );
  }
}

abstract class _BidStreamData implements BidStreamData {
  const factory _BidStreamData(
      {@JsonKey(name: "current_page") required final int currentPage,
      required final List<BidStreamItem> data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<BidStreamLink>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$BidStreamDataImpl;

  factory _BidStreamData.fromJson(Map<String, dynamic> json) =
      _$BidStreamDataImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  List<BidStreamItem> get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  List<BidStreamLink>? get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;

  /// Create a copy of BidStreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidStreamDataImplCopyWith<_$BidStreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidStreamItem _$BidStreamItemFromJson(Map<String, dynamic> json) {
  return _BidStreamItem.fromJson(json);
}

/// @nodoc
mixin _$BidStreamItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "stream_id")
  int? get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: "stream_product_id")
  int? get streamProductId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "bid_amount")
  String? get bidAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "bid_at")
  String? get bidAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  StreamUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "stream_product")
  StreamProductModel? get streamProduct => throw _privateConstructorUsedError;

  /// Serializes this BidStreamItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidStreamItemCopyWith<BidStreamItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidStreamItemCopyWith<$Res> {
  factory $BidStreamItemCopyWith(
          BidStreamItem value, $Res Function(BidStreamItem) then) =
      _$BidStreamItemCopyWithImpl<$Res, BidStreamItem>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "stream_id") int? streamId,
      @JsonKey(name: "stream_product_id") int? streamProductId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "bid_amount") String? bidAmount,
      String? status,
      String? notes,
      @JsonKey(name: "bid_at") String? bidAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      StreamUserModel? user,
      @JsonKey(name: "stream_product") StreamProductModel? streamProduct});

  $StreamUserModelCopyWith<$Res>? get user;
  $StreamProductModelCopyWith<$Res>? get streamProduct;
}

/// @nodoc
class _$BidStreamItemCopyWithImpl<$Res, $Val extends BidStreamItem>
    implements $BidStreamItemCopyWith<$Res> {
  _$BidStreamItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? userId = freezed,
    Object? bidAmount = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? bidAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? streamProduct = freezed,
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
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAt: freezed == bidAt
          ? _value.bidAt
          : bidAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
      streamProduct: freezed == streamProduct
          ? _value.streamProduct
          : streamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
    ) as $Val);
  }

  /// Create a copy of BidStreamItem
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

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamProductModelCopyWith<$Res>? get streamProduct {
    if (_value.streamProduct == null) {
      return null;
    }

    return $StreamProductModelCopyWith<$Res>(_value.streamProduct!, (value) {
      return _then(_value.copyWith(streamProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidStreamItemImplCopyWith<$Res>
    implements $BidStreamItemCopyWith<$Res> {
  factory _$$BidStreamItemImplCopyWith(
          _$BidStreamItemImpl value, $Res Function(_$BidStreamItemImpl) then) =
      __$$BidStreamItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "stream_id") int? streamId,
      @JsonKey(name: "stream_product_id") int? streamProductId,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "bid_amount") String? bidAmount,
      String? status,
      String? notes,
      @JsonKey(name: "bid_at") String? bidAt,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      StreamUserModel? user,
      @JsonKey(name: "stream_product") StreamProductModel? streamProduct});

  @override
  $StreamUserModelCopyWith<$Res>? get user;
  @override
  $StreamProductModelCopyWith<$Res>? get streamProduct;
}

/// @nodoc
class __$$BidStreamItemImplCopyWithImpl<$Res>
    extends _$BidStreamItemCopyWithImpl<$Res, _$BidStreamItemImpl>
    implements _$$BidStreamItemImplCopyWith<$Res> {
  __$$BidStreamItemImplCopyWithImpl(
      _$BidStreamItemImpl _value, $Res Function(_$BidStreamItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? streamProductId = freezed,
    Object? userId = freezed,
    Object? bidAmount = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? bidAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? streamProduct = freezed,
  }) {
    return _then(_$BidStreamItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as int?,
      streamProductId: freezed == streamProductId
          ? _value.streamProductId
          : streamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      bidAmount: freezed == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      bidAt: freezed == bidAt
          ? _value.bidAt
          : bidAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StreamUserModel?,
      streamProduct: freezed == streamProduct
          ? _value.streamProduct
          : streamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidStreamItemImpl implements _BidStreamItem {
  const _$BidStreamItemImpl(
      {this.id,
      @JsonKey(name: "stream_id") this.streamId,
      @JsonKey(name: "stream_product_id") this.streamProductId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "bid_amount") this.bidAmount,
      this.status,
      this.notes,
      @JsonKey(name: "bid_at") this.bidAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.user,
      @JsonKey(name: "stream_product") this.streamProduct});

  factory _$BidStreamItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidStreamItemImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "stream_id")
  final int? streamId;
  @override
  @JsonKey(name: "stream_product_id")
  final int? streamProductId;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "bid_amount")
  final String? bidAmount;
  @override
  final String? status;
  @override
  final String? notes;
  @override
  @JsonKey(name: "bid_at")
  final String? bidAt;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  final StreamUserModel? user;
  @override
  @JsonKey(name: "stream_product")
  final StreamProductModel? streamProduct;

  @override
  String toString() {
    return 'BidStreamItem(id: $id, streamId: $streamId, streamProductId: $streamProductId, userId: $userId, bidAmount: $bidAmount, status: $status, notes: $notes, bidAt: $bidAt, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, streamProduct: $streamProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidStreamItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.streamProductId, streamProductId) ||
                other.streamProductId == streamProductId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.bidAt, bidAt) || other.bidAt == bidAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.streamProduct, streamProduct) ||
                other.streamProduct == streamProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streamId,
      streamProductId,
      userId,
      bidAmount,
      status,
      notes,
      bidAt,
      createdAt,
      updatedAt,
      user,
      streamProduct);

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStreamItemImplCopyWith<_$BidStreamItemImpl> get copyWith =>
      __$$BidStreamItemImplCopyWithImpl<_$BidStreamItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidStreamItemImplToJson(
      this,
    );
  }
}

abstract class _BidStreamItem implements BidStreamItem {
  const factory _BidStreamItem(
      {final int? id,
      @JsonKey(name: "stream_id") final int? streamId,
      @JsonKey(name: "stream_product_id") final int? streamProductId,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "bid_amount") final String? bidAmount,
      final String? status,
      final String? notes,
      @JsonKey(name: "bid_at") final String? bidAt,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      final StreamUserModel? user,
      @JsonKey(name: "stream_product")
      final StreamProductModel? streamProduct}) = _$BidStreamItemImpl;

  factory _BidStreamItem.fromJson(Map<String, dynamic> json) =
      _$BidStreamItemImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "stream_id")
  int? get streamId;
  @override
  @JsonKey(name: "stream_product_id")
  int? get streamProductId;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "bid_amount")
  String? get bidAmount;
  @override
  String? get status;
  @override
  String? get notes;
  @override
  @JsonKey(name: "bid_at")
  String? get bidAt;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  StreamUserModel? get user;
  @override
  @JsonKey(name: "stream_product")
  StreamProductModel? get streamProduct;

  /// Create a copy of BidStreamItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidStreamItemImplCopyWith<_$BidStreamItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidProduct _$BidProductFromJson(Map<String, dynamic> json) {
  return _BidProduct.fromJson(json);
}

/// @nodoc
mixin _$BidProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_available")
  int? get deliveryAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "self_pickup")
  int? get selfPickup => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_type")
  String? get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_time")
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_price")
  String? get deliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_discount")
  String? get deliveryDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_radius")
  String? get deliveryRadius => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get featured => throw _privateConstructorUsedError;
  String? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_length_cm")
  String? get deliveryLengthCm => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_width_cm")
  String? get deliveryWidthCm => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_height_cm")
  String? get deliveryHeightCm => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_weight_kg")
  String? get deliveryWeightKg => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_methods")
  String? get deliveryMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_type")
  String? get saleType => throw _privateConstructorUsedError;

  /// Serializes this BidProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidProductCopyWith<BidProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidProductCopyWith<$Res> {
  factory $BidProductCopyWith(
          BidProduct value, $Res Function(BidProduct) then) =
      _$BidProductCopyWithImpl<$Res, BidProduct>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "category_id") int? categoryId,
      String? code,
      String? unit,
      @JsonKey(name: "delivery_available") int? deliveryAvailable,
      @JsonKey(name: "self_pickup") int? selfPickup,
      @JsonKey(name: "delivery_type") String? deliveryType,
      @JsonKey(name: "delivery_time") String? deliveryTime,
      @JsonKey(name: "delivery_price") String? deliveryPrice,
      @JsonKey(name: "delivery_discount") String? deliveryDiscount,
      @JsonKey(name: "delivery_radius") String? deliveryRadius,
      String? location,
      String? latitude,
      String? longitude,
      int? status,
      int? featured,
      String? meta,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "delivery_length_cm") String? deliveryLengthCm,
      @JsonKey(name: "delivery_width_cm") String? deliveryWidthCm,
      @JsonKey(name: "delivery_height_cm") String? deliveryHeightCm,
      @JsonKey(name: "delivery_weight_kg") String? deliveryWeightKg,
      @JsonKey(name: "delivery_methods") String? deliveryMethods,
      @JsonKey(name: "sale_type") String? saleType});
}

/// @nodoc
class _$BidProductCopyWithImpl<$Res, $Val extends BidProduct>
    implements $BidProductCopyWith<$Res> {
  _$BidProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? code = freezed,
    Object? unit = freezed,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? deliveryMethods = freezed,
    Object? saleType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDiscount: freezed == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryRadius: freezed == deliveryRadius
          ? _value.deliveryRadius
          : deliveryRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLengthCm: freezed == deliveryLengthCm
          ? _value.deliveryLengthCm
          : deliveryLengthCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryWidthCm: freezed == deliveryWidthCm
          ? _value.deliveryWidthCm
          : deliveryWidthCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryHeightCm: freezed == deliveryHeightCm
          ? _value.deliveryHeightCm
          : deliveryHeightCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryWeightKg: freezed == deliveryWeightKg
          ? _value.deliveryWeightKg
          : deliveryWeightKg // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryMethods: freezed == deliveryMethods
          ? _value.deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as String?,
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidProductImplCopyWith<$Res>
    implements $BidProductCopyWith<$Res> {
  factory _$$BidProductImplCopyWith(
          _$BidProductImpl value, $Res Function(_$BidProductImpl) then) =
      __$$BidProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? description,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "category_id") int? categoryId,
      String? code,
      String? unit,
      @JsonKey(name: "delivery_available") int? deliveryAvailable,
      @JsonKey(name: "self_pickup") int? selfPickup,
      @JsonKey(name: "delivery_type") String? deliveryType,
      @JsonKey(name: "delivery_time") String? deliveryTime,
      @JsonKey(name: "delivery_price") String? deliveryPrice,
      @JsonKey(name: "delivery_discount") String? deliveryDiscount,
      @JsonKey(name: "delivery_radius") String? deliveryRadius,
      String? location,
      String? latitude,
      String? longitude,
      int? status,
      int? featured,
      String? meta,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "delivery_length_cm") String? deliveryLengthCm,
      @JsonKey(name: "delivery_width_cm") String? deliveryWidthCm,
      @JsonKey(name: "delivery_height_cm") String? deliveryHeightCm,
      @JsonKey(name: "delivery_weight_kg") String? deliveryWeightKg,
      @JsonKey(name: "delivery_methods") String? deliveryMethods,
      @JsonKey(name: "sale_type") String? saleType});
}

/// @nodoc
class __$$BidProductImplCopyWithImpl<$Res>
    extends _$BidProductCopyWithImpl<$Res, _$BidProductImpl>
    implements _$$BidProductImplCopyWith<$Res> {
  __$$BidProductImplCopyWithImpl(
      _$BidProductImpl _value, $Res Function(_$BidProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? code = freezed,
    Object? unit = freezed,
    Object? deliveryAvailable = freezed,
    Object? selfPickup = freezed,
    Object? deliveryType = freezed,
    Object? deliveryTime = freezed,
    Object? deliveryPrice = freezed,
    Object? deliveryDiscount = freezed,
    Object? deliveryRadius = freezed,
    Object? location = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? featured = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryLengthCm = freezed,
    Object? deliveryWidthCm = freezed,
    Object? deliveryHeightCm = freezed,
    Object? deliveryWeightKg = freezed,
    Object? deliveryMethods = freezed,
    Object? saleType = freezed,
  }) {
    return _then(_$BidProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAvailable: freezed == deliveryAvailable
          ? _value.deliveryAvailable
          : deliveryAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      selfPickup: freezed == selfPickup
          ? _value.selfPickup
          : selfPickup // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDiscount: freezed == deliveryDiscount
          ? _value.deliveryDiscount
          : deliveryDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryRadius: freezed == deliveryRadius
          ? _value.deliveryRadius
          : deliveryRadius // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryLengthCm: freezed == deliveryLengthCm
          ? _value.deliveryLengthCm
          : deliveryLengthCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryWidthCm: freezed == deliveryWidthCm
          ? _value.deliveryWidthCm
          : deliveryWidthCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryHeightCm: freezed == deliveryHeightCm
          ? _value.deliveryHeightCm
          : deliveryHeightCm // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryWeightKg: freezed == deliveryWeightKg
          ? _value.deliveryWeightKg
          : deliveryWeightKg // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryMethods: freezed == deliveryMethods
          ? _value.deliveryMethods
          : deliveryMethods // ignore: cast_nullable_to_non_nullable
              as String?,
      saleType: freezed == saleType
          ? _value.saleType
          : saleType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidProductImpl implements _BidProduct {
  const _$BidProductImpl(
      {this.id,
      this.name,
      this.type,
      this.description,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "category_id") this.categoryId,
      this.code,
      this.unit,
      @JsonKey(name: "delivery_available") this.deliveryAvailable,
      @JsonKey(name: "self_pickup") this.selfPickup,
      @JsonKey(name: "delivery_type") this.deliveryType,
      @JsonKey(name: "delivery_time") this.deliveryTime,
      @JsonKey(name: "delivery_price") this.deliveryPrice,
      @JsonKey(name: "delivery_discount") this.deliveryDiscount,
      @JsonKey(name: "delivery_radius") this.deliveryRadius,
      this.location,
      this.latitude,
      this.longitude,
      this.status,
      this.featured,
      this.meta,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "delivery_length_cm") this.deliveryLengthCm,
      @JsonKey(name: "delivery_width_cm") this.deliveryWidthCm,
      @JsonKey(name: "delivery_height_cm") this.deliveryHeightCm,
      @JsonKey(name: "delivery_weight_kg") this.deliveryWeightKg,
      @JsonKey(name: "delivery_methods") this.deliveryMethods,
      @JsonKey(name: "sale_type") this.saleType});

  factory _$BidProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? description;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  final String? code;
  @override
  final String? unit;
  @override
  @JsonKey(name: "delivery_available")
  final int? deliveryAvailable;
  @override
  @JsonKey(name: "self_pickup")
  final int? selfPickup;
  @override
  @JsonKey(name: "delivery_type")
  final String? deliveryType;
  @override
  @JsonKey(name: "delivery_time")
  final String? deliveryTime;
  @override
  @JsonKey(name: "delivery_price")
  final String? deliveryPrice;
  @override
  @JsonKey(name: "delivery_discount")
  final String? deliveryDiscount;
  @override
  @JsonKey(name: "delivery_radius")
  final String? deliveryRadius;
  @override
  final String? location;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final int? status;
  @override
  final int? featured;
  @override
  final String? meta;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "delivery_length_cm")
  final String? deliveryLengthCm;
  @override
  @JsonKey(name: "delivery_width_cm")
  final String? deliveryWidthCm;
  @override
  @JsonKey(name: "delivery_height_cm")
  final String? deliveryHeightCm;
  @override
  @JsonKey(name: "delivery_weight_kg")
  final String? deliveryWeightKg;
  @override
  @JsonKey(name: "delivery_methods")
  final String? deliveryMethods;
  @override
  @JsonKey(name: "sale_type")
  final String? saleType;

  @override
  String toString() {
    return 'BidProduct(id: $id, name: $name, type: $type, description: $description, userId: $userId, categoryId: $categoryId, code: $code, unit: $unit, deliveryAvailable: $deliveryAvailable, selfPickup: $selfPickup, deliveryType: $deliveryType, deliveryTime: $deliveryTime, deliveryPrice: $deliveryPrice, deliveryDiscount: $deliveryDiscount, deliveryRadius: $deliveryRadius, location: $location, latitude: $latitude, longitude: $longitude, status: $status, featured: $featured, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, deliveryLengthCm: $deliveryLengthCm, deliveryWidthCm: $deliveryWidthCm, deliveryHeightCm: $deliveryHeightCm, deliveryWeightKg: $deliveryWeightKg, deliveryMethods: $deliveryMethods, saleType: $saleType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.deliveryAvailable, deliveryAvailable) ||
                other.deliveryAvailable == deliveryAvailable) &&
            (identical(other.selfPickup, selfPickup) ||
                other.selfPickup == selfPickup) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            (identical(other.deliveryDiscount, deliveryDiscount) ||
                other.deliveryDiscount == deliveryDiscount) &&
            (identical(other.deliveryRadius, deliveryRadius) ||
                other.deliveryRadius == deliveryRadius) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryLengthCm, deliveryLengthCm) ||
                other.deliveryLengthCm == deliveryLengthCm) &&
            (identical(other.deliveryWidthCm, deliveryWidthCm) ||
                other.deliveryWidthCm == deliveryWidthCm) &&
            (identical(other.deliveryHeightCm, deliveryHeightCm) ||
                other.deliveryHeightCm == deliveryHeightCm) &&
            (identical(other.deliveryWeightKg, deliveryWeightKg) ||
                other.deliveryWeightKg == deliveryWeightKg) &&
            (identical(other.deliveryMethods, deliveryMethods) ||
                other.deliveryMethods == deliveryMethods) &&
            (identical(other.saleType, saleType) ||
                other.saleType == saleType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        type,
        description,
        userId,
        categoryId,
        code,
        unit,
        deliveryAvailable,
        selfPickup,
        deliveryType,
        deliveryTime,
        deliveryPrice,
        deliveryDiscount,
        deliveryRadius,
        location,
        latitude,
        longitude,
        status,
        featured,
        meta,
        createdAt,
        updatedAt,
        deliveryLengthCm,
        deliveryWidthCm,
        deliveryHeightCm,
        deliveryWeightKg,
        deliveryMethods,
        saleType
      ]);

  /// Create a copy of BidProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidProductImplCopyWith<_$BidProductImpl> get copyWith =>
      __$$BidProductImplCopyWithImpl<_$BidProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidProductImplToJson(
      this,
    );
  }
}

abstract class _BidProduct implements BidProduct {
  const factory _BidProduct(
      {final int? id,
      final String? name,
      final String? type,
      final String? description,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "category_id") final int? categoryId,
      final String? code,
      final String? unit,
      @JsonKey(name: "delivery_available") final int? deliveryAvailable,
      @JsonKey(name: "self_pickup") final int? selfPickup,
      @JsonKey(name: "delivery_type") final String? deliveryType,
      @JsonKey(name: "delivery_time") final String? deliveryTime,
      @JsonKey(name: "delivery_price") final String? deliveryPrice,
      @JsonKey(name: "delivery_discount") final String? deliveryDiscount,
      @JsonKey(name: "delivery_radius") final String? deliveryRadius,
      final String? location,
      final String? latitude,
      final String? longitude,
      final int? status,
      final int? featured,
      final String? meta,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "delivery_length_cm") final String? deliveryLengthCm,
      @JsonKey(name: "delivery_width_cm") final String? deliveryWidthCm,
      @JsonKey(name: "delivery_height_cm") final String? deliveryHeightCm,
      @JsonKey(name: "delivery_weight_kg") final String? deliveryWeightKg,
      @JsonKey(name: "delivery_methods") final String? deliveryMethods,
      @JsonKey(name: "sale_type") final String? saleType}) = _$BidProductImpl;

  factory _BidProduct.fromJson(Map<String, dynamic> json) =
      _$BidProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get description;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  String? get code;
  @override
  String? get unit;
  @override
  @JsonKey(name: "delivery_available")
  int? get deliveryAvailable;
  @override
  @JsonKey(name: "self_pickup")
  int? get selfPickup;
  @override
  @JsonKey(name: "delivery_type")
  String? get deliveryType;
  @override
  @JsonKey(name: "delivery_time")
  String? get deliveryTime;
  @override
  @JsonKey(name: "delivery_price")
  String? get deliveryPrice;
  @override
  @JsonKey(name: "delivery_discount")
  String? get deliveryDiscount;
  @override
  @JsonKey(name: "delivery_radius")
  String? get deliveryRadius;
  @override
  String? get location;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  int? get status;
  @override
  int? get featured;
  @override
  String? get meta;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "delivery_length_cm")
  String? get deliveryLengthCm;
  @override
  @JsonKey(name: "delivery_width_cm")
  String? get deliveryWidthCm;
  @override
  @JsonKey(name: "delivery_height_cm")
  String? get deliveryHeightCm;
  @override
  @JsonKey(name: "delivery_weight_kg")
  String? get deliveryWeightKg;
  @override
  @JsonKey(name: "delivery_methods")
  String? get deliveryMethods;
  @override
  @JsonKey(name: "sale_type")
  String? get saleType;

  /// Create a copy of BidProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidProductImplCopyWith<_$BidProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BidStreamLink _$BidStreamLinkFromJson(Map<String, dynamic> json) {
  return _BidStreamLink.fromJson(json);
}

/// @nodoc
mixin _$BidStreamLink {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this BidStreamLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidStreamLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidStreamLinkCopyWith<BidStreamLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidStreamLinkCopyWith<$Res> {
  factory $BidStreamLinkCopyWith(
          BidStreamLink value, $Res Function(BidStreamLink) then) =
      _$BidStreamLinkCopyWithImpl<$Res, BidStreamLink>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$BidStreamLinkCopyWithImpl<$Res, $Val extends BidStreamLink>
    implements $BidStreamLinkCopyWith<$Res> {
  _$BidStreamLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidStreamLink
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
abstract class _$$BidStreamLinkImplCopyWith<$Res>
    implements $BidStreamLinkCopyWith<$Res> {
  factory _$$BidStreamLinkImplCopyWith(
          _$BidStreamLinkImpl value, $Res Function(_$BidStreamLinkImpl) then) =
      __$$BidStreamLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$BidStreamLinkImplCopyWithImpl<$Res>
    extends _$BidStreamLinkCopyWithImpl<$Res, _$BidStreamLinkImpl>
    implements _$$BidStreamLinkImplCopyWith<$Res> {
  __$$BidStreamLinkImplCopyWithImpl(
      _$BidStreamLinkImpl _value, $Res Function(_$BidStreamLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidStreamLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$BidStreamLinkImpl(
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
class _$BidStreamLinkImpl implements _BidStreamLink {
  const _$BidStreamLinkImpl({this.url, this.label, this.active});

  factory _$BidStreamLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidStreamLinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'BidStreamLink(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidStreamLinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of BidStreamLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStreamLinkImplCopyWith<_$BidStreamLinkImpl> get copyWith =>
      __$$BidStreamLinkImplCopyWithImpl<_$BidStreamLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidStreamLinkImplToJson(
      this,
    );
  }
}

abstract class _BidStreamLink implements BidStreamLink {
  const factory _BidStreamLink(
      {final String? url,
      final String? label,
      final bool? active}) = _$BidStreamLinkImpl;

  factory _BidStreamLink.fromJson(Map<String, dynamic> json) =
      _$BidStreamLinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;

  /// Create a copy of BidStreamLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidStreamLinkImplCopyWith<_$BidStreamLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
