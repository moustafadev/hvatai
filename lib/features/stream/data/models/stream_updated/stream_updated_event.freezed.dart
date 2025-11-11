// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_updated_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreamUpdatedEvent _$StreamUpdatedEventFromJson(Map<String, dynamic> json) {
  return _StreamUpdatedEvent.fromJson(json);
}

/// @nodoc
mixin _$StreamUpdatedEvent {
  StreamDataModel get stream => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_type')
  String get updateType => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this StreamUpdatedEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamUpdatedEventCopyWith<StreamUpdatedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamUpdatedEventCopyWith<$Res> {
  factory $StreamUpdatedEventCopyWith(
          StreamUpdatedEvent value, $Res Function(StreamUpdatedEvent) then) =
      _$StreamUpdatedEventCopyWithImpl<$Res, StreamUpdatedEvent>;
  @useResult
  $Res call(
      {StreamDataModel stream,
      @JsonKey(name: 'update_type') String updateType,
      int timestamp});

  $StreamDataModelCopyWith<$Res> get stream;
}

/// @nodoc
class _$StreamUpdatedEventCopyWithImpl<$Res, $Val extends StreamUpdatedEvent>
    implements $StreamUpdatedEventCopyWith<$Res> {
  _$StreamUpdatedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? updateType = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      updateType: null == updateType
          ? _value.updateType
          : updateType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamDataModelCopyWith<$Res> get stream {
    return $StreamDataModelCopyWith<$Res>(_value.stream, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamUpdatedEventImplCopyWith<$Res>
    implements $StreamUpdatedEventCopyWith<$Res> {
  factory _$$StreamUpdatedEventImplCopyWith(_$StreamUpdatedEventImpl value,
          $Res Function(_$StreamUpdatedEventImpl) then) =
      __$$StreamUpdatedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StreamDataModel stream,
      @JsonKey(name: 'update_type') String updateType,
      int timestamp});

  @override
  $StreamDataModelCopyWith<$Res> get stream;
}

/// @nodoc
class __$$StreamUpdatedEventImplCopyWithImpl<$Res>
    extends _$StreamUpdatedEventCopyWithImpl<$Res, _$StreamUpdatedEventImpl>
    implements _$$StreamUpdatedEventImplCopyWith<$Res> {
  __$$StreamUpdatedEventImplCopyWithImpl(_$StreamUpdatedEventImpl _value,
      $Res Function(_$StreamUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? updateType = null,
    Object? timestamp = null,
  }) {
    return _then(_$StreamUpdatedEventImpl(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      updateType: null == updateType
          ? _value.updateType
          : updateType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamUpdatedEventImpl implements _StreamUpdatedEvent {
  const _$StreamUpdatedEventImpl(
      {required this.stream,
      @JsonKey(name: 'update_type') required this.updateType,
      required this.timestamp});

  factory _$StreamUpdatedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamUpdatedEventImplFromJson(json);

  @override
  final StreamDataModel stream;
  @override
  @JsonKey(name: 'update_type')
  final String updateType;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'StreamUpdatedEvent(stream: $stream, updateType: $updateType, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamUpdatedEventImpl &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.updateType, updateType) ||
                other.updateType == updateType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stream, updateType, timestamp);

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamUpdatedEventImplCopyWith<_$StreamUpdatedEventImpl> get copyWith =>
      __$$StreamUpdatedEventImplCopyWithImpl<_$StreamUpdatedEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamUpdatedEventImplToJson(
      this,
    );
  }
}

abstract class _StreamUpdatedEvent implements StreamUpdatedEvent {
  const factory _StreamUpdatedEvent(
      {required final StreamDataModel stream,
      @JsonKey(name: 'update_type') required final String updateType,
      required final int timestamp}) = _$StreamUpdatedEventImpl;

  factory _StreamUpdatedEvent.fromJson(Map<String, dynamic> json) =
      _$StreamUpdatedEventImpl.fromJson;

  @override
  StreamDataModel get stream;
  @override
  @JsonKey(name: 'update_type')
  String get updateType;
  @override
  int get timestamp;

  /// Create a copy of StreamUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamUpdatedEventImplCopyWith<_$StreamUpdatedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
