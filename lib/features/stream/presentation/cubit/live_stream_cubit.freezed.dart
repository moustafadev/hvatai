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
  int get streamSeconds =>
      throw _privateConstructorUsedError; // Comments (RAW API MODELS)
  List<StreamCommentModel> get comments => throw _privateConstructorUsedError;
  String get commentText =>
      throw _privateConstructorUsedError; // Comments loading/paging
  bool get isLoadingComments => throw _privateConstructorUsedError;
  bool get isSendingComment => throw _privateConstructorUsedError;
  int get commentsPage => throw _privateConstructorUsedError;
  int get commentsPerPage => throw _privateConstructorUsedError;
  bool get commentsHasMore => throw _privateConstructorUsedError; // Errors
  String get errorMessage => throw _privateConstructorUsedError;
  String get commentsError => throw _privateConstructorUsedError;
  String get sendCommentError => throw _privateConstructorUsedError;

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
      List<StreamCommentModel> comments,
      String commentText,
      bool isLoadingComments,
      bool isSendingComment,
      int commentsPage,
      int commentsPerPage,
      bool commentsHasMore,
      String errorMessage,
      String commentsError,
      String sendCommentError});
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
    Object? isLoadingComments = null,
    Object? isSendingComment = null,
    Object? commentsPage = null,
    Object? commentsPerPage = null,
    Object? commentsHasMore = null,
    Object? errorMessage = null,
    Object? commentsError = null,
    Object? sendCommentError = null,
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
              as List<StreamCommentModel>,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingComments: null == isLoadingComments
          ? _value.isLoadingComments
          : isLoadingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingComment: null == isSendingComment
          ? _value.isSendingComment
          : isSendingComment // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsPage: null == commentsPage
          ? _value.commentsPage
          : commentsPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentsPerPage: null == commentsPerPage
          ? _value.commentsPerPage
          : commentsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentsHasMore: null == commentsHasMore
          ? _value.commentsHasMore
          : commentsHasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      commentsError: null == commentsError
          ? _value.commentsError
          : commentsError // ignore: cast_nullable_to_non_nullable
              as String,
      sendCommentError: null == sendCommentError
          ? _value.sendCommentError
          : sendCommentError // ignore: cast_nullable_to_non_nullable
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
      List<StreamCommentModel> comments,
      String commentText,
      bool isLoadingComments,
      bool isSendingComment,
      int commentsPage,
      int commentsPerPage,
      bool commentsHasMore,
      String errorMessage,
      String commentsError,
      String sendCommentError});
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
    Object? isLoadingComments = null,
    Object? isSendingComment = null,
    Object? commentsPage = null,
    Object? commentsPerPage = null,
    Object? commentsHasMore = null,
    Object? errorMessage = null,
    Object? commentsError = null,
    Object? sendCommentError = null,
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
              as List<StreamCommentModel>,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingComments: null == isLoadingComments
          ? _value.isLoadingComments
          : isLoadingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingComment: null == isSendingComment
          ? _value.isSendingComment
          : isSendingComment // ignore: cast_nullable_to_non_nullable
              as bool,
      commentsPage: null == commentsPage
          ? _value.commentsPage
          : commentsPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentsPerPage: null == commentsPerPage
          ? _value.commentsPerPage
          : commentsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      commentsHasMore: null == commentsHasMore
          ? _value.commentsHasMore
          : commentsHasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      commentsError: null == commentsError
          ? _value.commentsError
          : commentsError // ignore: cast_nullable_to_non_nullable
              as String,
      sendCommentError: null == sendCommentError
          ? _value.sendCommentError
          : sendCommentError // ignore: cast_nullable_to_non_nullable
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
      final List<StreamCommentModel> comments = const <StreamCommentModel>[],
      this.commentText = '',
      this.isLoadingComments = false,
      this.isSendingComment = false,
      this.commentsPage = 1,
      this.commentsPerPage = 50,
      this.commentsHasMore = true,
      this.errorMessage = '',
      this.commentsError = '',
      this.sendCommentError = ''})
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
// Comments (RAW API MODELS)
  final List<StreamCommentModel> _comments;
// Comments (RAW API MODELS)
  @override
  @JsonKey()
  List<StreamCommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final String commentText;
// Comments loading/paging
  @override
  @JsonKey()
  final bool isLoadingComments;
  @override
  @JsonKey()
  final bool isSendingComment;
  @override
  @JsonKey()
  final int commentsPage;
  @override
  @JsonKey()
  final int commentsPerPage;
  @override
  @JsonKey()
  final bool commentsHasMore;
// Errors
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String commentsError;
  @override
  @JsonKey()
  final String sendCommentError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LiveStreamState(role: $role, localReady: $localReady, remoteUid: $remoteUid, isInitializing: $isInitializing, joined: $joined, streamSeconds: $streamSeconds, comments: $comments, commentText: $commentText, isLoadingComments: $isLoadingComments, isSendingComment: $isSendingComment, commentsPage: $commentsPage, commentsPerPage: $commentsPerPage, commentsHasMore: $commentsHasMore, errorMessage: $errorMessage, commentsError: $commentsError, sendCommentError: $sendCommentError)';
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
      ..add(DiagnosticsProperty('isLoadingComments', isLoadingComments))
      ..add(DiagnosticsProperty('isSendingComment', isSendingComment))
      ..add(DiagnosticsProperty('commentsPage', commentsPage))
      ..add(DiagnosticsProperty('commentsPerPage', commentsPerPage))
      ..add(DiagnosticsProperty('commentsHasMore', commentsHasMore))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('commentsError', commentsError))
      ..add(DiagnosticsProperty('sendCommentError', sendCommentError));
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
            (identical(other.isLoadingComments, isLoadingComments) ||
                other.isLoadingComments == isLoadingComments) &&
            (identical(other.isSendingComment, isSendingComment) ||
                other.isSendingComment == isSendingComment) &&
            (identical(other.commentsPage, commentsPage) ||
                other.commentsPage == commentsPage) &&
            (identical(other.commentsPerPage, commentsPerPage) ||
                other.commentsPerPage == commentsPerPage) &&
            (identical(other.commentsHasMore, commentsHasMore) ||
                other.commentsHasMore == commentsHasMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.commentsError, commentsError) ||
                other.commentsError == commentsError) &&
            (identical(other.sendCommentError, sendCommentError) ||
                other.sendCommentError == sendCommentError));
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
      isLoadingComments,
      isSendingComment,
      commentsPage,
      commentsPerPage,
      commentsHasMore,
      errorMessage,
      commentsError,
      sendCommentError);

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
      final List<StreamCommentModel> comments,
      final String commentText,
      final bool isLoadingComments,
      final bool isSendingComment,
      final int commentsPage,
      final int commentsPerPage,
      final bool commentsHasMore,
      final String errorMessage,
      final String commentsError,
      final String sendCommentError}) = _$LiveStreamStateImpl;

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
  int get streamSeconds; // Comments (RAW API MODELS)
  @override
  List<StreamCommentModel> get comments;
  @override
  String get commentText; // Comments loading/paging
  @override
  bool get isLoadingComments;
  @override
  bool get isSendingComment;
  @override
  int get commentsPage;
  @override
  int get commentsPerPage;
  @override
  bool get commentsHasMore; // Errors
  @override
  String get errorMessage;
  @override
  String get commentsError;
  @override
  String get sendCommentError;

  /// Create a copy of LiveStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveStreamStateImplCopyWith<_$LiveStreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
