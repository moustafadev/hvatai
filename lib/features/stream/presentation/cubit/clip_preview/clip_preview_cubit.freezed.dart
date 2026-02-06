// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clip_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClipPreviewState {
  bool get isSaving => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get saveSuccessMessage => throw _privateConstructorUsedError;

  /// Create a copy of ClipPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClipPreviewStateCopyWith<ClipPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipPreviewStateCopyWith<$Res> {
  factory $ClipPreviewStateCopyWith(
          ClipPreviewState value, $Res Function(ClipPreviewState) then) =
      _$ClipPreviewStateCopyWithImpl<$Res, ClipPreviewState>;
  @useResult
  $Res call({bool isSaving, String errorMessage, String saveSuccessMessage});
}

/// @nodoc
class _$ClipPreviewStateCopyWithImpl<$Res, $Val extends ClipPreviewState>
    implements $ClipPreviewStateCopyWith<$Res> {
  _$ClipPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClipPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
    Object? errorMessage = null,
    Object? saveSuccessMessage = null,
  }) {
    return _then(_value.copyWith(
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      saveSuccessMessage: null == saveSuccessMessage
          ? _value.saveSuccessMessage
          : saveSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClipPreviewStateImplCopyWith<$Res>
    implements $ClipPreviewStateCopyWith<$Res> {
  factory _$$ClipPreviewStateImplCopyWith(_$ClipPreviewStateImpl value,
          $Res Function(_$ClipPreviewStateImpl) then) =
      __$$ClipPreviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSaving, String errorMessage, String saveSuccessMessage});
}

/// @nodoc
class __$$ClipPreviewStateImplCopyWithImpl<$Res>
    extends _$ClipPreviewStateCopyWithImpl<$Res, _$ClipPreviewStateImpl>
    implements _$$ClipPreviewStateImplCopyWith<$Res> {
  __$$ClipPreviewStateImplCopyWithImpl(_$ClipPreviewStateImpl _value,
      $Res Function(_$ClipPreviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClipPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
    Object? errorMessage = null,
    Object? saveSuccessMessage = null,
  }) {
    return _then(_$ClipPreviewStateImpl(
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      saveSuccessMessage: null == saveSuccessMessage
          ? _value.saveSuccessMessage
          : saveSuccessMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClipPreviewStateImpl
    with DiagnosticableTreeMixin
    implements _ClipPreviewState {
  const _$ClipPreviewStateImpl(
      {this.isSaving = false,
      this.errorMessage = '',
      this.saveSuccessMessage = ''});

  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String saveSuccessMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClipPreviewState(isSaving: $isSaving, errorMessage: $errorMessage, saveSuccessMessage: $saveSuccessMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClipPreviewState'))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('saveSuccessMessage', saveSuccessMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipPreviewStateImpl &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.saveSuccessMessage, saveSuccessMessage) ||
                other.saveSuccessMessage == saveSuccessMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSaving, errorMessage, saveSuccessMessage);

  /// Create a copy of ClipPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipPreviewStateImplCopyWith<_$ClipPreviewStateImpl> get copyWith =>
      __$$ClipPreviewStateImplCopyWithImpl<_$ClipPreviewStateImpl>(
          this, _$identity);
}

abstract class _ClipPreviewState implements ClipPreviewState {
  const factory _ClipPreviewState(
      {final bool isSaving,
      final String errorMessage,
      final String saveSuccessMessage}) = _$ClipPreviewStateImpl;

  @override
  bool get isSaving;
  @override
  String get errorMessage;
  @override
  String get saveSuccessMessage;

  /// Create a copy of ClipPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClipPreviewStateImplCopyWith<_$ClipPreviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
