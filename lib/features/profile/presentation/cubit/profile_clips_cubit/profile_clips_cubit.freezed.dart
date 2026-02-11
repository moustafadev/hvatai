// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_clips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileClipsState {
  bool get isLoadingClips => throw _privateConstructorUsedError;
  String get errorMessageClips => throw _privateConstructorUsedError;
  List<ClipModel> get clips => throw _privateConstructorUsedError;
  ClipsPaginationModel? get clipsPagination =>
      throw _privateConstructorUsedError;
  Map<int, Uint8List> get clipThumbnails =>
      throw _privateConstructorUsedError; // Clip settings bottom sheet state
  ClipModel? get editingClip => throw _privateConstructorUsedError;
  String get editingClipName => throw _privateConstructorUsedError;
  bool get editingClipStatus => throw _privateConstructorUsedError;
  bool get isUpdatingClip => throw _privateConstructorUsedError;
  bool get isDeletingClip => throw _privateConstructorUsedError;

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileClipsStateCopyWith<ProfileClipsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileClipsStateCopyWith<$Res> {
  factory $ProfileClipsStateCopyWith(
          ProfileClipsState value, $Res Function(ProfileClipsState) then) =
      _$ProfileClipsStateCopyWithImpl<$Res, ProfileClipsState>;
  @useResult
  $Res call(
      {bool isLoadingClips,
      String errorMessageClips,
      List<ClipModel> clips,
      ClipsPaginationModel? clipsPagination,
      Map<int, Uint8List> clipThumbnails,
      ClipModel? editingClip,
      String editingClipName,
      bool editingClipStatus,
      bool isUpdatingClip,
      bool isDeletingClip});

  $ClipsPaginationModelCopyWith<$Res>? get clipsPagination;
  $ClipModelCopyWith<$Res>? get editingClip;
}

/// @nodoc
class _$ProfileClipsStateCopyWithImpl<$Res, $Val extends ProfileClipsState>
    implements $ProfileClipsStateCopyWith<$Res> {
  _$ProfileClipsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingClips = null,
    Object? errorMessageClips = null,
    Object? clips = null,
    Object? clipsPagination = freezed,
    Object? clipThumbnails = null,
    Object? editingClip = freezed,
    Object? editingClipName = null,
    Object? editingClipStatus = null,
    Object? isUpdatingClip = null,
    Object? isDeletingClip = null,
  }) {
    return _then(_value.copyWith(
      isLoadingClips: null == isLoadingClips
          ? _value.isLoadingClips
          : isLoadingClips // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageClips: null == errorMessageClips
          ? _value.errorMessageClips
          : errorMessageClips // ignore: cast_nullable_to_non_nullable
              as String,
      clips: null == clips
          ? _value.clips
          : clips // ignore: cast_nullable_to_non_nullable
              as List<ClipModel>,
      clipsPagination: freezed == clipsPagination
          ? _value.clipsPagination
          : clipsPagination // ignore: cast_nullable_to_non_nullable
              as ClipsPaginationModel?,
      clipThumbnails: null == clipThumbnails
          ? _value.clipThumbnails
          : clipThumbnails // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
      editingClip: freezed == editingClip
          ? _value.editingClip
          : editingClip // ignore: cast_nullable_to_non_nullable
              as ClipModel?,
      editingClipName: null == editingClipName
          ? _value.editingClipName
          : editingClipName // ignore: cast_nullable_to_non_nullable
              as String,
      editingClipStatus: null == editingClipStatus
          ? _value.editingClipStatus
          : editingClipStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatingClip: null == isUpdatingClip
          ? _value.isUpdatingClip
          : isUpdatingClip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingClip: null == isDeletingClip
          ? _value.isDeletingClip
          : isDeletingClip // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipsPaginationModelCopyWith<$Res>? get clipsPagination {
    if (_value.clipsPagination == null) {
      return null;
    }

    return $ClipsPaginationModelCopyWith<$Res>(_value.clipsPagination!,
        (value) {
      return _then(_value.copyWith(clipsPagination: value) as $Val);
    });
  }

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClipModelCopyWith<$Res>? get editingClip {
    if (_value.editingClip == null) {
      return null;
    }

    return $ClipModelCopyWith<$Res>(_value.editingClip!, (value) {
      return _then(_value.copyWith(editingClip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileClipsStateImplCopyWith<$Res>
    implements $ProfileClipsStateCopyWith<$Res> {
  factory _$$ProfileClipsStateImplCopyWith(_$ProfileClipsStateImpl value,
          $Res Function(_$ProfileClipsStateImpl) then) =
      __$$ProfileClipsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingClips,
      String errorMessageClips,
      List<ClipModel> clips,
      ClipsPaginationModel? clipsPagination,
      Map<int, Uint8List> clipThumbnails,
      ClipModel? editingClip,
      String editingClipName,
      bool editingClipStatus,
      bool isUpdatingClip,
      bool isDeletingClip});

  @override
  $ClipsPaginationModelCopyWith<$Res>? get clipsPagination;
  @override
  $ClipModelCopyWith<$Res>? get editingClip;
}

/// @nodoc
class __$$ProfileClipsStateImplCopyWithImpl<$Res>
    extends _$ProfileClipsStateCopyWithImpl<$Res, _$ProfileClipsStateImpl>
    implements _$$ProfileClipsStateImplCopyWith<$Res> {
  __$$ProfileClipsStateImplCopyWithImpl(_$ProfileClipsStateImpl _value,
      $Res Function(_$ProfileClipsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingClips = null,
    Object? errorMessageClips = null,
    Object? clips = null,
    Object? clipsPagination = freezed,
    Object? clipThumbnails = null,
    Object? editingClip = freezed,
    Object? editingClipName = null,
    Object? editingClipStatus = null,
    Object? isUpdatingClip = null,
    Object? isDeletingClip = null,
  }) {
    return _then(_$ProfileClipsStateImpl(
      isLoadingClips: null == isLoadingClips
          ? _value.isLoadingClips
          : isLoadingClips // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessageClips: null == errorMessageClips
          ? _value.errorMessageClips
          : errorMessageClips // ignore: cast_nullable_to_non_nullable
              as String,
      clips: null == clips
          ? _value._clips
          : clips // ignore: cast_nullable_to_non_nullable
              as List<ClipModel>,
      clipsPagination: freezed == clipsPagination
          ? _value.clipsPagination
          : clipsPagination // ignore: cast_nullable_to_non_nullable
              as ClipsPaginationModel?,
      clipThumbnails: null == clipThumbnails
          ? _value._clipThumbnails
          : clipThumbnails // ignore: cast_nullable_to_non_nullable
              as Map<int, Uint8List>,
      editingClip: freezed == editingClip
          ? _value.editingClip
          : editingClip // ignore: cast_nullable_to_non_nullable
              as ClipModel?,
      editingClipName: null == editingClipName
          ? _value.editingClipName
          : editingClipName // ignore: cast_nullable_to_non_nullable
              as String,
      editingClipStatus: null == editingClipStatus
          ? _value.editingClipStatus
          : editingClipStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatingClip: null == isUpdatingClip
          ? _value.isUpdatingClip
          : isUpdatingClip // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeletingClip: null == isDeletingClip
          ? _value.isDeletingClip
          : isDeletingClip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileClipsStateImpl
    with DiagnosticableTreeMixin
    implements _ProfileClipsState {
  const _$ProfileClipsStateImpl(
      {this.isLoadingClips = false,
      this.errorMessageClips = '',
      final List<ClipModel> clips = const [],
      this.clipsPagination,
      final Map<int, Uint8List> clipThumbnails = const {},
      this.editingClip,
      this.editingClipName = '',
      this.editingClipStatus = false,
      this.isUpdatingClip = false,
      this.isDeletingClip = false})
      : _clips = clips,
        _clipThumbnails = clipThumbnails;

  @override
  @JsonKey()
  final bool isLoadingClips;
  @override
  @JsonKey()
  final String errorMessageClips;
  final List<ClipModel> _clips;
  @override
  @JsonKey()
  List<ClipModel> get clips {
    if (_clips is EqualUnmodifiableListView) return _clips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clips);
  }

  @override
  final ClipsPaginationModel? clipsPagination;
  final Map<int, Uint8List> _clipThumbnails;
  @override
  @JsonKey()
  Map<int, Uint8List> get clipThumbnails {
    if (_clipThumbnails is EqualUnmodifiableMapView) return _clipThumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_clipThumbnails);
  }

// Clip settings bottom sheet state
  @override
  final ClipModel? editingClip;
  @override
  @JsonKey()
  final String editingClipName;
  @override
  @JsonKey()
  final bool editingClipStatus;
  @override
  @JsonKey()
  final bool isUpdatingClip;
  @override
  @JsonKey()
  final bool isDeletingClip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileClipsState(isLoadingClips: $isLoadingClips, errorMessageClips: $errorMessageClips, clips: $clips, clipsPagination: $clipsPagination, clipThumbnails: $clipThumbnails, editingClip: $editingClip, editingClipName: $editingClipName, editingClipStatus: $editingClipStatus, isUpdatingClip: $isUpdatingClip, isDeletingClip: $isDeletingClip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileClipsState'))
      ..add(DiagnosticsProperty('isLoadingClips', isLoadingClips))
      ..add(DiagnosticsProperty('errorMessageClips', errorMessageClips))
      ..add(DiagnosticsProperty('clips', clips))
      ..add(DiagnosticsProperty('clipsPagination', clipsPagination))
      ..add(DiagnosticsProperty('clipThumbnails', clipThumbnails))
      ..add(DiagnosticsProperty('editingClip', editingClip))
      ..add(DiagnosticsProperty('editingClipName', editingClipName))
      ..add(DiagnosticsProperty('editingClipStatus', editingClipStatus))
      ..add(DiagnosticsProperty('isUpdatingClip', isUpdatingClip))
      ..add(DiagnosticsProperty('isDeletingClip', isDeletingClip));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileClipsStateImpl &&
            (identical(other.isLoadingClips, isLoadingClips) ||
                other.isLoadingClips == isLoadingClips) &&
            (identical(other.errorMessageClips, errorMessageClips) ||
                other.errorMessageClips == errorMessageClips) &&
            const DeepCollectionEquality().equals(other._clips, _clips) &&
            (identical(other.clipsPagination, clipsPagination) ||
                other.clipsPagination == clipsPagination) &&
            const DeepCollectionEquality()
                .equals(other._clipThumbnails, _clipThumbnails) &&
            (identical(other.editingClip, editingClip) ||
                other.editingClip == editingClip) &&
            (identical(other.editingClipName, editingClipName) ||
                other.editingClipName == editingClipName) &&
            (identical(other.editingClipStatus, editingClipStatus) ||
                other.editingClipStatus == editingClipStatus) &&
            (identical(other.isUpdatingClip, isUpdatingClip) ||
                other.isUpdatingClip == isUpdatingClip) &&
            (identical(other.isDeletingClip, isDeletingClip) ||
                other.isDeletingClip == isDeletingClip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingClips,
      errorMessageClips,
      const DeepCollectionEquality().hash(_clips),
      clipsPagination,
      const DeepCollectionEquality().hash(_clipThumbnails),
      editingClip,
      editingClipName,
      editingClipStatus,
      isUpdatingClip,
      isDeletingClip);

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileClipsStateImplCopyWith<_$ProfileClipsStateImpl> get copyWith =>
      __$$ProfileClipsStateImplCopyWithImpl<_$ProfileClipsStateImpl>(
          this, _$identity);
}

abstract class _ProfileClipsState implements ProfileClipsState {
  const factory _ProfileClipsState(
      {final bool isLoadingClips,
      final String errorMessageClips,
      final List<ClipModel> clips,
      final ClipsPaginationModel? clipsPagination,
      final Map<int, Uint8List> clipThumbnails,
      final ClipModel? editingClip,
      final String editingClipName,
      final bool editingClipStatus,
      final bool isUpdatingClip,
      final bool isDeletingClip}) = _$ProfileClipsStateImpl;

  @override
  bool get isLoadingClips;
  @override
  String get errorMessageClips;
  @override
  List<ClipModel> get clips;
  @override
  ClipsPaginationModel? get clipsPagination;
  @override
  Map<int, Uint8List> get clipThumbnails; // Clip settings bottom sheet state
  @override
  ClipModel? get editingClip;
  @override
  String get editingClipName;
  @override
  bool get editingClipStatus;
  @override
  bool get isUpdatingClip;
  @override
  bool get isDeletingClip;

  /// Create a copy of ProfileClipsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileClipsStateImplCopyWith<_$ProfileClipsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
