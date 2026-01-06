// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_stream_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateStreamMediaModel _$UpdateStreamMediaModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateStreamMediaModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateStreamMediaModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  /// Serializes this UpdateStreamMediaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStreamMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStreamMediaModelCopyWith<UpdateStreamMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStreamMediaModelCopyWith<$Res> {
  factory $UpdateStreamMediaModelCopyWith(UpdateStreamMediaModel value,
          $Res Function(UpdateStreamMediaModel) then) =
      _$UpdateStreamMediaModelCopyWithImpl<$Res, UpdateStreamMediaModel>;
  @useResult
  $Res call(
      {String title, String description, String? thumbnailUrl, bool isPublic});
}

/// @nodoc
class _$UpdateStreamMediaModelCopyWithImpl<$Res,
        $Val extends UpdateStreamMediaModel>
    implements $UpdateStreamMediaModelCopyWith<$Res> {
  _$UpdateStreamMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStreamMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = freezed,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStreamMediaModelImplCopyWith<$Res>
    implements $UpdateStreamMediaModelCopyWith<$Res> {
  factory _$$UpdateStreamMediaModelImplCopyWith(
          _$UpdateStreamMediaModelImpl value,
          $Res Function(_$UpdateStreamMediaModelImpl) then) =
      __$$UpdateStreamMediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String description, String? thumbnailUrl, bool isPublic});
}

/// @nodoc
class __$$UpdateStreamMediaModelImplCopyWithImpl<$Res>
    extends _$UpdateStreamMediaModelCopyWithImpl<$Res,
        _$UpdateStreamMediaModelImpl>
    implements _$$UpdateStreamMediaModelImplCopyWith<$Res> {
  __$$UpdateStreamMediaModelImplCopyWithImpl(
      _$UpdateStreamMediaModelImpl _value,
      $Res Function(_$UpdateStreamMediaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateStreamMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = freezed,
    Object? isPublic = null,
  }) {
    return _then(_$UpdateStreamMediaModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStreamMediaModelImpl implements _UpdateStreamMediaModel {
  const _$UpdateStreamMediaModelImpl(
      {required this.title,
      required this.description,
      this.thumbnailUrl,
      this.isPublic = true});

  factory _$UpdateStreamMediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStreamMediaModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final bool isPublic;

  @override
  String toString() {
    return 'UpdateStreamMediaModel(title: $title, description: $description, thumbnailUrl: $thumbnailUrl, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStreamMediaModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, thumbnailUrl, isPublic);

  /// Create a copy of UpdateStreamMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStreamMediaModelImplCopyWith<_$UpdateStreamMediaModelImpl>
      get copyWith => __$$UpdateStreamMediaModelImplCopyWithImpl<
          _$UpdateStreamMediaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStreamMediaModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateStreamMediaModel implements UpdateStreamMediaModel {
  const factory _UpdateStreamMediaModel(
      {required final String title,
      required final String description,
      final String? thumbnailUrl,
      final bool isPublic}) = _$UpdateStreamMediaModelImpl;

  factory _UpdateStreamMediaModel.fromJson(Map<String, dynamic> json) =
      _$UpdateStreamMediaModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get thumbnailUrl;
  @override
  bool get isPublic;

  /// Create a copy of UpdateStreamMediaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStreamMediaModelImplCopyWith<_$UpdateStreamMediaModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
