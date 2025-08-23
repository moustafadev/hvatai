// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiveStreamState {
  UserRole get role => throw _privateConstructorUsedError; // Agora / presence
  bool get localReady => throw _privateConstructorUsedError;
  int? get remoteUid => throw _privateConstructorUsedError;
  bool get isInitializing => throw _privateConstructorUsedError;
  bool get joined => throw _privateConstructorUsedError; // Timer
  int get streamSeconds => throw _privateConstructorUsedError; // Comments
  List<Comment> get comments => throw _privateConstructorUsedError;
  String get commentText => throw _privateConstructorUsedError; // Errors
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiveStreamStateCopyWith<LiveStreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveStreamStateCopyWith<$Res> {
  factory $LiveStreamStateCopyWith(
          LiveStreamState value, $Res Function(LiveStreamState) then) =
      _$LiveStreamStateCopyWithImpl<$Res, LiveStreamState>;
  @useResult
  $Res call(
      {UserRole role,
      bool localReady,
      int? remoteUid,
      bool isInitializing,
      bool joined,
      int streamSeconds,
      List<Comment> comments,
      String commentText,
      String errorMessage});
}

/// @nodoc
class _$LiveStreamStateCopyWithImpl<$Res, $Val extends LiveStreamState>
    implements $LiveStreamStateCopyWith<$Res> {
  _$LiveStreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? localReady = null,
    Object? remoteUid = freezed,
    Object? isInitializing = null,
    Object? joined = null,
    Object? streamSeconds = null,
    Object? comments = null,
    Object? commentText = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      localReady: null == localReady
          ? _value.localReady
          : localReady // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool,
      streamSeconds: null == streamSeconds
          ? _value.streamSeconds
          : streamSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiveStreamStateImplCopyWith<$Res>
    implements $LiveStreamStateCopyWith<$Res> {
  factory _$$LiveStreamStateImplCopyWith(_$LiveStreamStateImpl value,
          $Res Function(_$LiveStreamStateImpl) then) =
      __$$LiveStreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRole role,
      bool localReady,
      int? remoteUid,
      bool isInitializing,
      bool joined,
      int streamSeconds,
      List<Comment> comments,
      String commentText,
      String errorMessage});
}

/// @nodoc
class __$$LiveStreamStateImplCopyWithImpl<$Res>
    extends _$LiveStreamStateCopyWithImpl<$Res, _$LiveStreamStateImpl>
    implements _$$LiveStreamStateImplCopyWith<$Res> {
  __$$LiveStreamStateImplCopyWithImpl(
      _$LiveStreamStateImpl _value, $Res Function(_$LiveStreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? localReady = null,
    Object? remoteUid = freezed,
    Object? isInitializing = null,
    Object? joined = null,
    Object? streamSeconds = null,
    Object? comments = null,
    Object? commentText = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LiveStreamStateImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      localReady: null == localReady
          ? _value.localReady
          : localReady // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool,
      streamSeconds: null == streamSeconds
          ? _value.streamSeconds
          : streamSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LiveStreamStateImpl
    with DiagnosticableTreeMixin
    implements _LiveStreamState {
  const _$LiveStreamStateImpl(
      {required this.role,
      this.localReady = false,
      this.remoteUid,
      this.isInitializing = false,
      this.joined = false,
      this.streamSeconds = 0,
      final List<Comment> comments = const <Comment>[],
      this.commentText = '',
      this.errorMessage = ''})
      : _comments = comments;

  @override
  final UserRole role;
// Agora / presence
  @override
  @JsonKey()
  final bool localReady;
  @override
  final int? remoteUid;
  @override
  @JsonKey()
  final bool isInitializing;
  @override
  @JsonKey()
  final bool joined;
// Timer
  @override
  @JsonKey()
  final int streamSeconds;
// Comments
  final List<Comment> _comments;
// Comments
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final String commentText;
// Errors
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LiveStreamState(role: $role, localReady: $localReady, remoteUid: $remoteUid, isInitializing: $isInitializing, joined: $joined, streamSeconds: $streamSeconds, comments: $comments, commentText: $commentText, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LiveStreamState'))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('localReady', localReady))
      ..add(DiagnosticsProperty('remoteUid', remoteUid))
      ..add(DiagnosticsProperty('isInitializing', isInitializing))
      ..add(DiagnosticsProperty('joined', joined))
      ..add(DiagnosticsProperty('streamSeconds', streamSeconds))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('commentText', commentText))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveStreamStateImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.localReady, localReady) ||
                other.localReady == localReady) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.joined, joined) || other.joined == joined) &&
            (identical(other.streamSeconds, streamSeconds) ||
                other.streamSeconds == streamSeconds) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      localReady,
      remoteUid,
      isInitializing,
      joined,
      streamSeconds,
      const DeepCollectionEquality().hash(_comments),
      commentText,
      errorMessage);

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveStreamStateImplCopyWith<_$LiveStreamStateImpl> get copyWith =>
      __$$LiveStreamStateImplCopyWithImpl<_$LiveStreamStateImpl>(
          this, _$identity);
}

abstract class _LiveStreamState implements LiveStreamState {
  const factory _LiveStreamState(
      {required final UserRole role,
      final bool localReady,
      final int? remoteUid,
      final bool isInitializing,
      final bool joined,
      final int streamSeconds,
      final List<Comment> comments,
      final String commentText,
      final String errorMessage}) = _$LiveStreamStateImpl;

  @override
  UserRole get role; // Agora / presence
  @override
  bool get localReady;
  @override
  int? get remoteUid;
  @override
  bool get isInitializing;
  @override
  bool get joined; // Timer
  @override
  int get streamSeconds; // Comments
  @override
  List<Comment> get comments;
  @override
  String get commentText; // Errors
  @override
  String get errorMessage;

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveStreamStateImplCopyWith<_$LiveStreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
