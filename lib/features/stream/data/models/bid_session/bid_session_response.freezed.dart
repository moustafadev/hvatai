// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BidSessionResponse _$BidSessionResponseFromJson(Map<String, dynamic> json) {
  return _BidSessionResponse.fromJson(json);
}

/// @nodoc
mixin _$BidSessionResponse {
  bool get success => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BidSessionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidSessionResponseCopyWith<BidSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidSessionResponseCopyWith<$Res> {
  factory $BidSessionResponseCopyWith(
          BidSessionResponse value, $Res Function(BidSessionResponse) then) =
      _$BidSessionResponseCopyWithImpl<$Res, BidSessionResponse>;
  @useResult
  $Res call({bool success, Map<String, dynamic>? data, String? message});
}

/// @nodoc
class _$BidSessionResponseCopyWithImpl<$Res, $Val extends BidSessionResponse>
    implements $BidSessionResponseCopyWith<$Res> {
  _$BidSessionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidSessionResponseImplCopyWith<$Res>
    implements $BidSessionResponseCopyWith<$Res> {
  factory _$$BidSessionResponseImplCopyWith(_$BidSessionResponseImpl value,
          $Res Function(_$BidSessionResponseImpl) then) =
      __$$BidSessionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Map<String, dynamic>? data, String? message});
}

/// @nodoc
class __$$BidSessionResponseImplCopyWithImpl<$Res>
    extends _$BidSessionResponseCopyWithImpl<$Res, _$BidSessionResponseImpl>
    implements _$$BidSessionResponseImplCopyWith<$Res> {
  __$$BidSessionResponseImplCopyWithImpl(_$BidSessionResponseImpl _value,
      $Res Function(_$BidSessionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BidSessionResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidSessionResponseImpl implements _BidSessionResponse {
  const _$BidSessionResponseImpl(
      {required this.success, final Map<String, dynamic>? data, this.message})
      : _data = data;

  factory _$BidSessionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidSessionResponseImplFromJson(json);

  @override
  final bool success;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'BidSessionResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidSessionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success,
      const DeepCollectionEquality().hash(_data), message);

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidSessionResponseImplCopyWith<_$BidSessionResponseImpl> get copyWith =>
      __$$BidSessionResponseImplCopyWithImpl<_$BidSessionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidSessionResponseImplToJson(
      this,
    );
  }
}

abstract class _BidSessionResponse implements BidSessionResponse {
  const factory _BidSessionResponse(
      {required final bool success,
      final Map<String, dynamic>? data,
      final String? message}) = _$BidSessionResponseImpl;

  factory _BidSessionResponse.fromJson(Map<String, dynamic> json) =
      _$BidSessionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Map<String, dynamic>? get data;
  @override
  String? get message;

  /// Create a copy of BidSessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidSessionResponseImplCopyWith<_$BidSessionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
