// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_images_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreviewImagesResponse _$PreviewImagesResponseFromJson(
    Map<String, dynamic> json) {
  return _PreviewImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$PreviewImagesResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PreviewImagesData? get data => throw _privateConstructorUsedError;

  /// Serializes this PreviewImagesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviewImagesResponseCopyWith<PreviewImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewImagesResponseCopyWith<$Res> {
  factory $PreviewImagesResponseCopyWith(PreviewImagesResponse value,
          $Res Function(PreviewImagesResponse) then) =
      _$PreviewImagesResponseCopyWithImpl<$Res, PreviewImagesResponse>;
  @useResult
  $Res call({bool? success, String? message, PreviewImagesData? data});

  $PreviewImagesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PreviewImagesResponseCopyWithImpl<$Res,
        $Val extends PreviewImagesResponse>
    implements $PreviewImagesResponseCopyWith<$Res> {
  _$PreviewImagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
              as PreviewImagesData?,
    ) as $Val);
  }

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreviewImagesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PreviewImagesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreviewImagesResponseImplCopyWith<$Res>
    implements $PreviewImagesResponseCopyWith<$Res> {
  factory _$$PreviewImagesResponseImplCopyWith(
          _$PreviewImagesResponseImpl value,
          $Res Function(_$PreviewImagesResponseImpl) then) =
      __$$PreviewImagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, PreviewImagesData? data});

  @override
  $PreviewImagesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PreviewImagesResponseImplCopyWithImpl<$Res>
    extends _$PreviewImagesResponseCopyWithImpl<$Res,
        _$PreviewImagesResponseImpl>
    implements _$$PreviewImagesResponseImplCopyWith<$Res> {
  __$$PreviewImagesResponseImplCopyWithImpl(_$PreviewImagesResponseImpl _value,
      $Res Function(_$PreviewImagesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PreviewImagesResponseImpl(
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
              as PreviewImagesData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewImagesResponseImpl implements _PreviewImagesResponse {
  const _$PreviewImagesResponseImpl({this.success, this.message, this.data});

  factory _$PreviewImagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewImagesResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final PreviewImagesData? data;

  @override
  String toString() {
    return 'PreviewImagesResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewImagesResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewImagesResponseImplCopyWith<_$PreviewImagesResponseImpl>
      get copyWith => __$$PreviewImagesResponseImplCopyWithImpl<
          _$PreviewImagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewImagesResponseImplToJson(
      this,
    );
  }
}

abstract class _PreviewImagesResponse implements PreviewImagesResponse {
  const factory _PreviewImagesResponse(
      {final bool? success,
      final String? message,
      final PreviewImagesData? data}) = _$PreviewImagesResponseImpl;

  factory _PreviewImagesResponse.fromJson(Map<String, dynamic> json) =
      _$PreviewImagesResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  PreviewImagesData? get data;

  /// Create a copy of PreviewImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewImagesResponseImplCopyWith<_$PreviewImagesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreviewImagesData _$PreviewImagesDataFromJson(Map<String, dynamic> json) {
  return _PreviewImagesData.fromJson(json);
}

/// @nodoc
mixin _$PreviewImagesData {
  int? get duration => throw _privateConstructorUsedError;
  int? get interval => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<PreviewImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this PreviewImagesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviewImagesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviewImagesDataCopyWith<PreviewImagesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewImagesDataCopyWith<$Res> {
  factory $PreviewImagesDataCopyWith(
          PreviewImagesData value, $Res Function(PreviewImagesData) then) =
      _$PreviewImagesDataCopyWithImpl<$Res, PreviewImagesData>;
  @useResult
  $Res call(
      {int? duration, int? interval, int? count, List<PreviewImage>? images});
}

/// @nodoc
class _$PreviewImagesDataCopyWithImpl<$Res, $Val extends PreviewImagesData>
    implements $PreviewImagesDataCopyWith<$Res> {
  _$PreviewImagesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewImagesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? interval = freezed,
    Object? count = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PreviewImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewImagesDataImplCopyWith<$Res>
    implements $PreviewImagesDataCopyWith<$Res> {
  factory _$$PreviewImagesDataImplCopyWith(_$PreviewImagesDataImpl value,
          $Res Function(_$PreviewImagesDataImpl) then) =
      __$$PreviewImagesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? duration, int? interval, int? count, List<PreviewImage>? images});
}

/// @nodoc
class __$$PreviewImagesDataImplCopyWithImpl<$Res>
    extends _$PreviewImagesDataCopyWithImpl<$Res, _$PreviewImagesDataImpl>
    implements _$$PreviewImagesDataImplCopyWith<$Res> {
  __$$PreviewImagesDataImplCopyWithImpl(_$PreviewImagesDataImpl _value,
      $Res Function(_$PreviewImagesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewImagesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? interval = freezed,
    Object? count = freezed,
    Object? images = freezed,
  }) {
    return _then(_$PreviewImagesDataImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PreviewImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewImagesDataImpl implements _PreviewImagesData {
  const _$PreviewImagesDataImpl(
      {this.duration,
      this.interval,
      this.count,
      final List<PreviewImage>? images})
      : _images = images;

  factory _$PreviewImagesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewImagesDataImplFromJson(json);

  @override
  final int? duration;
  @override
  final int? interval;
  @override
  final int? count;
  final List<PreviewImage>? _images;
  @override
  List<PreviewImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PreviewImagesData(duration: $duration, interval: $interval, count: $count, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewImagesDataImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, duration, interval, count,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of PreviewImagesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewImagesDataImplCopyWith<_$PreviewImagesDataImpl> get copyWith =>
      __$$PreviewImagesDataImplCopyWithImpl<_$PreviewImagesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewImagesDataImplToJson(
      this,
    );
  }
}

abstract class _PreviewImagesData implements PreviewImagesData {
  const factory _PreviewImagesData(
      {final int? duration,
      final int? interval,
      final int? count,
      final List<PreviewImage>? images}) = _$PreviewImagesDataImpl;

  factory _PreviewImagesData.fromJson(Map<String, dynamic> json) =
      _$PreviewImagesDataImpl.fromJson;

  @override
  int? get duration;
  @override
  int? get interval;
  @override
  int? get count;
  @override
  List<PreviewImage>? get images;

  /// Create a copy of PreviewImagesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewImagesDataImplCopyWith<_$PreviewImagesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreviewImage _$PreviewImageFromJson(Map<String, dynamic> json) {
  return _PreviewImage.fromJson(json);
}

/// @nodoc
mixin _$PreviewImage {
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp_seconds')
  int? get timestampSeconds => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PreviewImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreviewImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreviewImageCopyWith<PreviewImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewImageCopyWith<$Res> {
  factory $PreviewImageCopyWith(
          PreviewImage value, $Res Function(PreviewImage) then) =
      _$PreviewImageCopyWithImpl<$Res, PreviewImage>;
  @useResult
  $Res call(
      {String? timestamp,
      @JsonKey(name: 'timestamp_seconds') int? timestampSeconds,
      String? path,
      String? url});
}

/// @nodoc
class _$PreviewImageCopyWithImpl<$Res, $Val extends PreviewImage>
    implements $PreviewImageCopyWith<$Res> {
  _$PreviewImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampSeconds = freezed,
    Object? path = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      timestampSeconds: freezed == timestampSeconds
          ? _value.timestampSeconds
          : timestampSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviewImageImplCopyWith<$Res>
    implements $PreviewImageCopyWith<$Res> {
  factory _$$PreviewImageImplCopyWith(
          _$PreviewImageImpl value, $Res Function(_$PreviewImageImpl) then) =
      __$$PreviewImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? timestamp,
      @JsonKey(name: 'timestamp_seconds') int? timestampSeconds,
      String? path,
      String? url});
}

/// @nodoc
class __$$PreviewImageImplCopyWithImpl<$Res>
    extends _$PreviewImageCopyWithImpl<$Res, _$PreviewImageImpl>
    implements _$$PreviewImageImplCopyWith<$Res> {
  __$$PreviewImageImplCopyWithImpl(
      _$PreviewImageImpl _value, $Res Function(_$PreviewImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? timestampSeconds = freezed,
    Object? path = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PreviewImageImpl(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      timestampSeconds: freezed == timestampSeconds
          ? _value.timestampSeconds
          : timestampSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviewImageImpl implements _PreviewImage {
  const _$PreviewImageImpl(
      {this.timestamp,
      @JsonKey(name: 'timestamp_seconds') this.timestampSeconds,
      this.path,
      this.url});

  factory _$PreviewImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviewImageImplFromJson(json);

  @override
  final String? timestamp;
  @override
  @JsonKey(name: 'timestamp_seconds')
  final int? timestampSeconds;
  @override
  final String? path;
  @override
  final String? url;

  @override
  String toString() {
    return 'PreviewImage(timestamp: $timestamp, timestampSeconds: $timestampSeconds, path: $path, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewImageImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.timestampSeconds, timestampSeconds) ||
                other.timestampSeconds == timestampSeconds) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, timestampSeconds, path, url);

  /// Create a copy of PreviewImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewImageImplCopyWith<_$PreviewImageImpl> get copyWith =>
      __$$PreviewImageImplCopyWithImpl<_$PreviewImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviewImageImplToJson(
      this,
    );
  }
}

abstract class _PreviewImage implements PreviewImage {
  const factory _PreviewImage(
      {final String? timestamp,
      @JsonKey(name: 'timestamp_seconds') final int? timestampSeconds,
      final String? path,
      final String? url}) = _$PreviewImageImpl;

  factory _PreviewImage.fromJson(Map<String, dynamic> json) =
      _$PreviewImageImpl.fromJson;

  @override
  String? get timestamp;
  @override
  @JsonKey(name: 'timestamp_seconds')
  int? get timestampSeconds;
  @override
  String? get path;
  @override
  String? get url;

  /// Create a copy of PreviewImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewImageImplCopyWith<_$PreviewImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
