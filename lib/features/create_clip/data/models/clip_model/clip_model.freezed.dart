// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClipModel _$ClipModelFromJson(Map<String, dynamic> json) {
  return _ClipModel.fromJson(json);
}

/// @nodoc
mixin _$ClipModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_path')
  String get videoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String get videoUrl => throw _privateConstructorUsedError;
  ClipStreamModel? get stream => throw _privateConstructorUsedError;
  ClipUserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ClipModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipModelCopyWith<ClipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipModelCopyWith<$Res> {
  factory $ClipModelCopyWith(ClipModel value, $Res Function(ClipModel) then) =
      _$ClipModelCopyWithImpl<$Res, ClipModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool status,
      @JsonKey(name: 'video_path') String videoPath,
      @JsonKey(name: 'video_url') String videoUrl,
      ClipStreamModel? stream,
      ClipUserModel? user,
      @JsonKey(name: 'is_favorite') bool? isFavorited,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $ClipStreamModelCopyWith<$Res>? get stream;
  $ClipUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ClipModelCopyWithImpl<$Res, $Val extends ClipModel>
    implements $ClipModelCopyWith<$Res> {
  _$ClipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? videoPath = null,
    Object? videoUrl = null,
    Object? stream = freezed,
    Object? user = freezed,
    Object? isFavorited = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      videoPath: null == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as ClipStreamModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ClipUserModel?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipStreamModelCopyWith<$Res>? get stream {
    if (_value.stream == null) {
      return null;
    }

    return $ClipStreamModelCopyWith<$Res>(_value.stream!, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ClipUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClipModelImplCopyWith<$Res>
    implements $ClipModelCopyWith<$Res> {
  factory _$$ClipModelImplCopyWith(
          _$ClipModelImpl value, $Res Function(_$ClipModelImpl) then) =
      __$$ClipModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool status,
      @JsonKey(name: 'video_path') String videoPath,
      @JsonKey(name: 'video_url') String videoUrl,
      ClipStreamModel? stream,
      ClipUserModel? user,
      @JsonKey(name: 'is_favorite') bool? isFavorited,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $ClipStreamModelCopyWith<$Res>? get stream;
  @override
  $ClipUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ClipModelImplCopyWithImpl<$Res>
    extends _$ClipModelCopyWithImpl<$Res, _$ClipModelImpl>
    implements _$$ClipModelImplCopyWith<$Res> {
  __$$ClipModelImplCopyWithImpl(
      _$ClipModelImpl _value, $Res Function(_$ClipModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? videoPath = null,
    Object? videoUrl = null,
    Object? stream = freezed,
    Object? user = freezed,
    Object? isFavorited = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ClipModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      videoPath: null == videoPath
          ? _value.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as ClipStreamModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ClipUserModel?,
      isFavorited: freezed == isFavorited
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipModelImpl implements _ClipModel {
  const _$ClipModelImpl(
      {this.id = 0,
      this.name = '',
      this.status = false,
      @JsonKey(name: 'video_path') this.videoPath = '',
      @JsonKey(name: 'video_url') this.videoUrl = '',
      this.stream,
      this.user,
      @JsonKey(name: 'is_favorite') this.isFavorited,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$ClipModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey(name: 'video_path')
  final String videoPath;
  @override
  @JsonKey(name: 'video_url')
  final String videoUrl;
  @override
  final ClipStreamModel? stream;
  @override
  final ClipUserModel? user;
  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorited;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ClipModel(id: $id, name: $name, status: $status, videoPath: $videoPath, videoUrl: $videoUrl, stream: $stream, user: $user, isFavorited: $isFavorited, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.videoPath, videoPath) ||
                other.videoPath == videoPath) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isFavorited, isFavorited) ||
                other.isFavorited == isFavorited) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, videoPath,
      videoUrl, stream, user, isFavorited, createdAt);

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipModelImplCopyWith<_$ClipModelImpl> get copyWith =>
      __$$ClipModelImplCopyWithImpl<_$ClipModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipModelImplToJson(
      this,
    );
  }
}

abstract class _ClipModel implements ClipModel {
  const factory _ClipModel(
          {final int id,
          final String name,
          final bool status,
          @JsonKey(name: 'video_path') final String videoPath,
          @JsonKey(name: 'video_url') final String videoUrl,
          final ClipStreamModel? stream,
          final ClipUserModel? user,
          @JsonKey(name: 'is_favorite') final bool? isFavorited,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$ClipModelImpl;

  factory _ClipModel.fromJson(Map<String, dynamic> json) =
      _$ClipModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get status;
  @override
  @JsonKey(name: 'video_path')
  String get videoPath;
  @override
  @JsonKey(name: 'video_url')
  String get videoUrl;
  @override
  ClipStreamModel? get stream;
  @override
  ClipUserModel? get user;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorited;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of ClipModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipModelImplCopyWith<_$ClipModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipStreamModel _$ClipStreamModelFromJson(Map<String, dynamic> json) {
  return _ClipStreamModel.fromJson(json);
}

/// @nodoc
mixin _$ClipStreamModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;

  /// Serializes this ClipStreamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipStreamModelCopyWith<ClipStreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipStreamModelCopyWith<$Res> {
  factory $ClipStreamModelCopyWith(
          ClipStreamModel value, $Res Function(ClipStreamModel) then) =
      _$ClipStreamModelCopyWithImpl<$Res, ClipStreamModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      @JsonKey(name: 'is_public') bool isPublic});
}

/// @nodoc
class _$ClipStreamModelCopyWithImpl<$Res, $Val extends ClipStreamModel>
    implements $ClipStreamModelCopyWith<$Res> {
  _$ClipStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipStreamModelImplCopyWith<$Res>
    implements $ClipStreamModelCopyWith<$Res> {
  factory _$$ClipStreamModelImplCopyWith(_$ClipStreamModelImpl value,
          $Res Function(_$ClipStreamModelImpl) then) =
      __$$ClipStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      @JsonKey(name: 'is_public') bool isPublic});
}

/// @nodoc
class __$$ClipStreamModelImplCopyWithImpl<$Res>
    extends _$ClipStreamModelCopyWithImpl<$Res, _$ClipStreamModelImpl>
    implements _$$ClipStreamModelImplCopyWith<$Res> {
  __$$ClipStreamModelImplCopyWithImpl(
      _$ClipStreamModelImpl _value, $Res Function(_$ClipStreamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? isPublic = null,
  }) {
    return _then(_$ClipStreamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipStreamModelImpl implements _ClipStreamModel {
  const _$ClipStreamModelImpl(
      {this.id = 0,
      this.title = '',
      this.status = '',
      @JsonKey(name: 'is_public') this.isPublic = false});

  factory _$ClipStreamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipStreamModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;

  @override
  String toString() {
    return 'ClipStreamModel(id: $id, title: $title, status: $status, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipStreamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, status, isPublic);

  /// Create a copy of ClipStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipStreamModelImplCopyWith<_$ClipStreamModelImpl> get copyWith =>
      __$$ClipStreamModelImplCopyWithImpl<_$ClipStreamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipStreamModelImplToJson(
      this,
    );
  }
}

abstract class _ClipStreamModel implements ClipStreamModel {
  const factory _ClipStreamModel(
      {final int id,
      final String title,
      final String status,
      @JsonKey(name: 'is_public') final bool isPublic}) = _$ClipStreamModelImpl;

  factory _ClipStreamModel.fromJson(Map<String, dynamic> json) =
      _$ClipStreamModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;

  /// Create a copy of ClipStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipStreamModelImplCopyWith<_$ClipStreamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipUserModel _$ClipUserModelFromJson(Map<String, dynamic> json) {
  return _ClipUserModel.fromJson(json);
}

/// @nodoc
mixin _$ClipUserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this ClipUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipUserModelCopyWith<ClipUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipUserModelCopyWith<$Res> {
  factory $ClipUserModelCopyWith(
          ClipUserModel value, $Res Function(ClipUserModel) then) =
      _$ClipUserModelCopyWithImpl<$Res, ClipUserModel>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$ClipUserModelCopyWithImpl<$Res, $Val extends ClipUserModel>
    implements $ClipUserModelCopyWith<$Res> {
  _$ClipUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipUserModelImplCopyWith<$Res>
    implements $ClipUserModelCopyWith<$Res> {
  factory _$$ClipUserModelImplCopyWith(
          _$ClipUserModelImpl value, $Res Function(_$ClipUserModelImpl) then) =
      __$$ClipUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$ClipUserModelImplCopyWithImpl<$Res>
    extends _$ClipUserModelCopyWithImpl<$Res, _$ClipUserModelImpl>
    implements _$$ClipUserModelImplCopyWith<$Res> {
  __$$ClipUserModelImplCopyWithImpl(
      _$ClipUserModelImpl _value, $Res Function(_$ClipUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$ClipUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipUserModelImpl implements _ClipUserModel {
  const _$ClipUserModelImpl({this.id = 0, this.name = '', this.image});

  factory _$ClipUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipUserModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'ClipUserModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of ClipUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipUserModelImplCopyWith<_$ClipUserModelImpl> get copyWith =>
      __$$ClipUserModelImplCopyWithImpl<_$ClipUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipUserModelImplToJson(
      this,
    );
  }
}

abstract class _ClipUserModel implements ClipUserModel {
  const factory _ClipUserModel(
      {final int id,
      final String name,
      final String? image}) = _$ClipUserModelImpl;

  factory _ClipUserModel.fromJson(Map<String, dynamic> json) =
      _$ClipUserModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of ClipUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipUserModelImplCopyWith<_$ClipUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipsResponseModel _$ClipsResponseModelFromJson(Map<String, dynamic> json) {
  return _ClipsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ClipsResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ClipModel> get data => throw _privateConstructorUsedError;
  ClipsPaginationModel? get pagination => throw _privateConstructorUsedError;

  /// Serializes this ClipsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipsResponseModelCopyWith<ClipsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipsResponseModelCopyWith<$Res> {
  factory $ClipsResponseModelCopyWith(
          ClipsResponseModel value, $Res Function(ClipsResponseModel) then) =
      _$ClipsResponseModelCopyWithImpl<$Res, ClipsResponseModel>;
  @useResult
  $Res call(
      {bool success,
      String message,
      List<ClipModel> data,
      ClipsPaginationModel? pagination});

  $ClipsPaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ClipsResponseModelCopyWithImpl<$Res, $Val extends ClipsResponseModel>
    implements $ClipsResponseModelCopyWith<$Res> {
  _$ClipsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ClipModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ClipsPaginationModel?,
    ) as $Val);
  }

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipsPaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $ClipsPaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClipsResponseModelImplCopyWith<$Res>
    implements $ClipsResponseModelCopyWith<$Res> {
  factory _$$ClipsResponseModelImplCopyWith(_$ClipsResponseModelImpl value,
          $Res Function(_$ClipsResponseModelImpl) then) =
      __$$ClipsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      List<ClipModel> data,
      ClipsPaginationModel? pagination});

  @override
  $ClipsPaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$ClipsResponseModelImplCopyWithImpl<$Res>
    extends _$ClipsResponseModelCopyWithImpl<$Res, _$ClipsResponseModelImpl>
    implements _$$ClipsResponseModelImplCopyWith<$Res> {
  __$$ClipsResponseModelImplCopyWithImpl(_$ClipsResponseModelImpl _value,
      $Res Function(_$ClipsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$ClipsResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ClipModel>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ClipsPaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipsResponseModelImpl implements _ClipsResponseModel {
  const _$ClipsResponseModelImpl(
      {this.success = false,
      this.message = '',
      final List<ClipModel> data = const [],
      this.pagination})
      : _data = data;

  factory _$ClipsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipsResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  final List<ClipModel> _data;
  @override
  @JsonKey()
  List<ClipModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final ClipsPaginationModel? pagination;

  @override
  String toString() {
    return 'ClipsResponseModel(success: $success, message: $message, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipsResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_data), pagination);

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipsResponseModelImplCopyWith<_$ClipsResponseModelImpl> get copyWith =>
      __$$ClipsResponseModelImplCopyWithImpl<_$ClipsResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ClipsResponseModel implements ClipsResponseModel {
  const factory _ClipsResponseModel(
      {final bool success,
      final String message,
      final List<ClipModel> data,
      final ClipsPaginationModel? pagination}) = _$ClipsResponseModelImpl;

  factory _ClipsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ClipsResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<ClipModel> get data;
  @override
  ClipsPaginationModel? get pagination;

  /// Create a copy of ClipsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipsResponseModelImplCopyWith<_$ClipsResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClipsPaginationModel _$ClipsPaginationModelFromJson(Map<String, dynamic> json) {
  return _ClipsPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$ClipsPaginationModel {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;

  /// Serializes this ClipsPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClipsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipsPaginationModelCopyWith<ClipsPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipsPaginationModelCopyWith<$Res> {
  factory $ClipsPaginationModelCopyWith(ClipsPaginationModel value,
          $Res Function(ClipsPaginationModel) then) =
      _$ClipsPaginationModelCopyWithImpl<$Res, ClipsPaginationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'last_page') int lastPage});
}

/// @nodoc
class _$ClipsPaginationModelCopyWithImpl<$Res,
        $Val extends ClipsPaginationModel>
    implements $ClipsPaginationModelCopyWith<$Res> {
  _$ClipsPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? lastPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipsPaginationModelImplCopyWith<$Res>
    implements $ClipsPaginationModelCopyWith<$Res> {
  factory _$$ClipsPaginationModelImplCopyWith(_$ClipsPaginationModelImpl value,
          $Res Function(_$ClipsPaginationModelImpl) then) =
      __$$ClipsPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'per_page') int perPage,
      int total,
      @JsonKey(name: 'last_page') int lastPage});
}

/// @nodoc
class __$$ClipsPaginationModelImplCopyWithImpl<$Res>
    extends _$ClipsPaginationModelCopyWithImpl<$Res, _$ClipsPaginationModelImpl>
    implements _$$ClipsPaginationModelImplCopyWith<$Res> {
  __$$ClipsPaginationModelImplCopyWithImpl(_$ClipsPaginationModelImpl _value,
      $Res Function(_$ClipsPaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? lastPage = null,
  }) {
    return _then(_$ClipsPaginationModelImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClipsPaginationModelImpl implements _ClipsPaginationModel {
  const _$ClipsPaginationModelImpl(
      {@JsonKey(name: 'current_page') this.currentPage = 1,
      @JsonKey(name: 'per_page') this.perPage = 15,
      this.total = 0,
      @JsonKey(name: 'last_page') this.lastPage = 1});

  factory _$ClipsPaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClipsPaginationModelImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;

  @override
  String toString() {
    return 'ClipsPaginationModel(currentPage: $currentPage, perPage: $perPage, total: $total, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipsPaginationModelImpl &&
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

  /// Create a copy of ClipsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipsPaginationModelImplCopyWith<_$ClipsPaginationModelImpl>
      get copyWith =>
          __$$ClipsPaginationModelImplCopyWithImpl<_$ClipsPaginationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClipsPaginationModelImplToJson(
      this,
    );
  }
}

abstract class _ClipsPaginationModel implements ClipsPaginationModel {
  const factory _ClipsPaginationModel(
          {@JsonKey(name: 'current_page') final int currentPage,
          @JsonKey(name: 'per_page') final int perPage,
          final int total,
          @JsonKey(name: 'last_page') final int lastPage}) =
      _$ClipsPaginationModelImpl;

  factory _ClipsPaginationModel.fromJson(Map<String, dynamic> json) =
      _$ClipsPaginationModelImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  int get total;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;

  /// Create a copy of ClipsPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipsPaginationModelImplCopyWith<_$ClipsPaginationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
