// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcaster_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BroadcasterStreamState {
// LiveKit
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isPublishing => throw _privateConstructorUsedError;
  LocalVideoTrack? get videoTrack => throw _privateConstructorUsedError;
  LocalAudioTrack? get audioTrack =>
      throw _privateConstructorUsedError; // Room & Participants
  Room? get room => throw _privateConstructorUsedError;
  LocalParticipant? get localParticipant =>
      throw _privateConstructorUsedError; // Pusher
  bool get isPusherConnected =>
      throw _privateConstructorUsedError; // Stream data
  StreamDataModel get stream => throw _privateConstructorUsedError;
  int get viewerCount => throw _privateConstructorUsedError;
  int get streamSeconds =>
      throw _privateConstructorUsedError; // Comments (RAW API MODELS)
  List<StreamCommentModel> get comments => throw _privateConstructorUsedError;
  String get commentText => throw _privateConstructorUsedError;
  bool get isLoadingComments => throw _privateConstructorUsedError;
  bool get isSendingComment => throw _privateConstructorUsedError;
  int get commentsPage => throw _privateConstructorUsedError;
  int get commentsPerPage => throw _privateConstructorUsedError;
  bool get commentsHasMore =>
      throw _privateConstructorUsedError; // Bids (RAW API MODELS)
  List<BidStreamItem> get bids => throw _privateConstructorUsedError;
  bool get isLoadingBids => throw _privateConstructorUsedError;
  bool get isPlacingBid => throw _privateConstructorUsedError;
  int get bidsPage => throw _privateConstructorUsedError;
  int get bidsPerPage => throw _privateConstructorUsedError;
  bool get bidsHasMore => throw _privateConstructorUsedError; // Errors
  String get errorMessage => throw _privateConstructorUsedError;
  String get commentsError => throw _privateConstructorUsedError;
  String get sendCommentError => throw _privateConstructorUsedError;
  String get bidsError => throw _privateConstructorUsedError;
  String get addBidError =>
      throw _privateConstructorUsedError; // Initialization
  bool get isInitializing => throw _privateConstructorUsedError;

  /// Create a copy of BroadcasterStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BroadcasterStreamStateCopyWith<BroadcasterStreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcasterStreamStateCopyWith<$Res> {
  factory $BroadcasterStreamStateCopyWith(BroadcasterStreamState value,
          $Res Function(BroadcasterStreamState) then) =
      _$BroadcasterStreamStateCopyWithImpl<$Res, BroadcasterStreamState>;
  @useResult
  $Res call(
      {bool isConnected,
      bool isPublishing,
      LocalVideoTrack? videoTrack,
      LocalAudioTrack? audioTrack,
      Room? room,
      LocalParticipant? localParticipant,
      bool isPusherConnected,
      StreamDataModel stream,
      int viewerCount,
      int streamSeconds,
      List<StreamCommentModel> comments,
      String commentText,
      bool isLoadingComments,
      bool isSendingComment,
      int commentsPage,
      int commentsPerPage,
      bool commentsHasMore,
      List<BidStreamItem> bids,
      bool isLoadingBids,
      bool isPlacingBid,
      int bidsPage,
      int bidsPerPage,
      bool bidsHasMore,
      String errorMessage,
      String commentsError,
      String sendCommentError,
      String bidsError,
      String addBidError,
      bool isInitializing});

  $StreamDataModelCopyWith<$Res> get stream;
}

/// @nodoc
class _$BroadcasterStreamStateCopyWithImpl<$Res,
        $Val extends BroadcasterStreamState>
    implements $BroadcasterStreamStateCopyWith<$Res> {
  _$BroadcasterStreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BroadcasterStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isPublishing = null,
    Object? videoTrack = freezed,
    Object? audioTrack = freezed,
    Object? room = freezed,
    Object? localParticipant = freezed,
    Object? isPusherConnected = null,
    Object? stream = null,
    Object? viewerCount = null,
    Object? streamSeconds = null,
    Object? comments = null,
    Object? commentText = null,
    Object? isLoadingComments = null,
    Object? isSendingComment = null,
    Object? commentsPage = null,
    Object? commentsPerPage = null,
    Object? commentsHasMore = null,
    Object? bids = null,
    Object? isLoadingBids = null,
    Object? isPlacingBid = null,
    Object? bidsPage = null,
    Object? bidsPerPage = null,
    Object? bidsHasMore = null,
    Object? errorMessage = null,
    Object? commentsError = null,
    Object? sendCommentError = null,
    Object? bidsError = null,
    Object? addBidError = null,
    Object? isInitializing = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishing: null == isPublishing
          ? _value.isPublishing
          : isPublishing // ignore: cast_nullable_to_non_nullable
              as bool,
      videoTrack: freezed == videoTrack
          ? _value.videoTrack
          : videoTrack // ignore: cast_nullable_to_non_nullable
              as LocalVideoTrack?,
      audioTrack: freezed == audioTrack
          ? _value.audioTrack
          : audioTrack // ignore: cast_nullable_to_non_nullable
              as LocalAudioTrack?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      localParticipant: freezed == localParticipant
          ? _value.localParticipant
          : localParticipant // ignore: cast_nullable_to_non_nullable
              as LocalParticipant?,
      isPusherConnected: null == isPusherConnected
          ? _value.isPusherConnected
          : isPusherConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidStreamItem>,
      isLoadingBids: null == isLoadingBids
          ? _value.isLoadingBids
          : isLoadingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlacingBid: null == isPlacingBid
          ? _value.isPlacingBid
          : isPlacingBid // ignore: cast_nullable_to_non_nullable
              as bool,
      bidsPage: null == bidsPage
          ? _value.bidsPage
          : bidsPage // ignore: cast_nullable_to_non_nullable
              as int,
      bidsPerPage: null == bidsPerPage
          ? _value.bidsPerPage
          : bidsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      bidsHasMore: null == bidsHasMore
          ? _value.bidsHasMore
          : bidsHasMore // ignore: cast_nullable_to_non_nullable
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
      bidsError: null == bidsError
          ? _value.bidsError
          : bidsError // ignore: cast_nullable_to_non_nullable
              as String,
      addBidError: null == addBidError
          ? _value.addBidError
          : addBidError // ignore: cast_nullable_to_non_nullable
              as String,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of BroadcasterStreamState
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
abstract class _$$BroadcasterStreamStateImplCopyWith<$Res>
    implements $BroadcasterStreamStateCopyWith<$Res> {
  factory _$$BroadcasterStreamStateImplCopyWith(
          _$BroadcasterStreamStateImpl value,
          $Res Function(_$BroadcasterStreamStateImpl) then) =
      __$$BroadcasterStreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isConnected,
      bool isPublishing,
      LocalVideoTrack? videoTrack,
      LocalAudioTrack? audioTrack,
      Room? room,
      LocalParticipant? localParticipant,
      bool isPusherConnected,
      StreamDataModel stream,
      int viewerCount,
      int streamSeconds,
      List<StreamCommentModel> comments,
      String commentText,
      bool isLoadingComments,
      bool isSendingComment,
      int commentsPage,
      int commentsPerPage,
      bool commentsHasMore,
      List<BidStreamItem> bids,
      bool isLoadingBids,
      bool isPlacingBid,
      int bidsPage,
      int bidsPerPage,
      bool bidsHasMore,
      String errorMessage,
      String commentsError,
      String sendCommentError,
      String bidsError,
      String addBidError,
      bool isInitializing});

  @override
  $StreamDataModelCopyWith<$Res> get stream;
}

/// @nodoc
class __$$BroadcasterStreamStateImplCopyWithImpl<$Res>
    extends _$BroadcasterStreamStateCopyWithImpl<$Res,
        _$BroadcasterStreamStateImpl>
    implements _$$BroadcasterStreamStateImplCopyWith<$Res> {
  __$$BroadcasterStreamStateImplCopyWithImpl(
      _$BroadcasterStreamStateImpl _value,
      $Res Function(_$BroadcasterStreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BroadcasterStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isPublishing = null,
    Object? videoTrack = freezed,
    Object? audioTrack = freezed,
    Object? room = freezed,
    Object? localParticipant = freezed,
    Object? isPusherConnected = null,
    Object? stream = null,
    Object? viewerCount = null,
    Object? streamSeconds = null,
    Object? comments = null,
    Object? commentText = null,
    Object? isLoadingComments = null,
    Object? isSendingComment = null,
    Object? commentsPage = null,
    Object? commentsPerPage = null,
    Object? commentsHasMore = null,
    Object? bids = null,
    Object? isLoadingBids = null,
    Object? isPlacingBid = null,
    Object? bidsPage = null,
    Object? bidsPerPage = null,
    Object? bidsHasMore = null,
    Object? errorMessage = null,
    Object? commentsError = null,
    Object? sendCommentError = null,
    Object? bidsError = null,
    Object? addBidError = null,
    Object? isInitializing = null,
  }) {
    return _then(_$BroadcasterStreamStateImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublishing: null == isPublishing
          ? _value.isPublishing
          : isPublishing // ignore: cast_nullable_to_non_nullable
              as bool,
      videoTrack: freezed == videoTrack
          ? _value.videoTrack
          : videoTrack // ignore: cast_nullable_to_non_nullable
              as LocalVideoTrack?,
      audioTrack: freezed == audioTrack
          ? _value.audioTrack
          : audioTrack // ignore: cast_nullable_to_non_nullable
              as LocalAudioTrack?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      localParticipant: freezed == localParticipant
          ? _value.localParticipant
          : localParticipant // ignore: cast_nullable_to_non_nullable
              as LocalParticipant?,
      isPusherConnected: null == isPusherConnected
          ? _value.isPusherConnected
          : isPusherConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      bids: null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidStreamItem>,
      isLoadingBids: null == isLoadingBids
          ? _value.isLoadingBids
          : isLoadingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlacingBid: null == isPlacingBid
          ? _value.isPlacingBid
          : isPlacingBid // ignore: cast_nullable_to_non_nullable
              as bool,
      bidsPage: null == bidsPage
          ? _value.bidsPage
          : bidsPage // ignore: cast_nullable_to_non_nullable
              as int,
      bidsPerPage: null == bidsPerPage
          ? _value.bidsPerPage
          : bidsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      bidsHasMore: null == bidsHasMore
          ? _value.bidsHasMore
          : bidsHasMore // ignore: cast_nullable_to_non_nullable
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
      bidsError: null == bidsError
          ? _value.bidsError
          : bidsError // ignore: cast_nullable_to_non_nullable
              as String,
      addBidError: null == addBidError
          ? _value.addBidError
          : addBidError // ignore: cast_nullable_to_non_nullable
              as String,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BroadcasterStreamStateImpl
    with DiagnosticableTreeMixin
    implements _BroadcasterStreamState {
  const _$BroadcasterStreamStateImpl(
      {this.isConnected = false,
      this.isPublishing = false,
      this.videoTrack,
      this.audioTrack,
      this.room,
      this.localParticipant,
      this.isPusherConnected = false,
      required this.stream,
      this.viewerCount = 0,
      this.streamSeconds = 0,
      final List<StreamCommentModel> comments = const <StreamCommentModel>[],
      this.commentText = '',
      this.isLoadingComments = false,
      this.isSendingComment = false,
      this.commentsPage = 1,
      this.commentsPerPage = 50,
      this.commentsHasMore = true,
      final List<BidStreamItem> bids = const <BidStreamItem>[],
      this.isLoadingBids = false,
      this.isPlacingBid = false,
      this.bidsPage = 1,
      this.bidsPerPage = 20,
      this.bidsHasMore = true,
      this.errorMessage = '',
      this.commentsError = '',
      this.sendCommentError = '',
      this.bidsError = '',
      this.addBidError = '',
      this.isInitializing = false})
      : _comments = comments,
        _bids = bids;

// LiveKit
  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final bool isPublishing;
  @override
  final LocalVideoTrack? videoTrack;
  @override
  final LocalAudioTrack? audioTrack;
// Room & Participants
  @override
  final Room? room;
  @override
  final LocalParticipant? localParticipant;
// Pusher
  @override
  @JsonKey()
  final bool isPusherConnected;
// Stream data
  @override
  final StreamDataModel stream;
  @override
  @JsonKey()
  final int viewerCount;
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
// Bids (RAW API MODELS)
  final List<BidStreamItem> _bids;
// Bids (RAW API MODELS)
  @override
  @JsonKey()
  List<BidStreamItem> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  @JsonKey()
  final bool isLoadingBids;
  @override
  @JsonKey()
  final bool isPlacingBid;
  @override
  @JsonKey()
  final int bidsPage;
  @override
  @JsonKey()
  final int bidsPerPage;
  @override
  @JsonKey()
  final bool bidsHasMore;
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
  @JsonKey()
  final String bidsError;
  @override
  @JsonKey()
  final String addBidError;
// Initialization
  @override
  @JsonKey()
  final bool isInitializing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BroadcasterStreamState(isConnected: $isConnected, isPublishing: $isPublishing, videoTrack: $videoTrack, audioTrack: $audioTrack, room: $room, localParticipant: $localParticipant, isPusherConnected: $isPusherConnected, stream: $stream, viewerCount: $viewerCount, streamSeconds: $streamSeconds, comments: $comments, commentText: $commentText, isLoadingComments: $isLoadingComments, isSendingComment: $isSendingComment, commentsPage: $commentsPage, commentsPerPage: $commentsPerPage, commentsHasMore: $commentsHasMore, bids: $bids, isLoadingBids: $isLoadingBids, isPlacingBid: $isPlacingBid, bidsPage: $bidsPage, bidsPerPage: $bidsPerPage, bidsHasMore: $bidsHasMore, errorMessage: $errorMessage, commentsError: $commentsError, sendCommentError: $sendCommentError, bidsError: $bidsError, addBidError: $addBidError, isInitializing: $isInitializing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BroadcasterStreamState'))
      ..add(DiagnosticsProperty('isConnected', isConnected))
      ..add(DiagnosticsProperty('isPublishing', isPublishing))
      ..add(DiagnosticsProperty('videoTrack', videoTrack))
      ..add(DiagnosticsProperty('audioTrack', audioTrack))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('localParticipant', localParticipant))
      ..add(DiagnosticsProperty('isPusherConnected', isPusherConnected))
      ..add(DiagnosticsProperty('stream', stream))
      ..add(DiagnosticsProperty('viewerCount', viewerCount))
      ..add(DiagnosticsProperty('streamSeconds', streamSeconds))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('commentText', commentText))
      ..add(DiagnosticsProperty('isLoadingComments', isLoadingComments))
      ..add(DiagnosticsProperty('isSendingComment', isSendingComment))
      ..add(DiagnosticsProperty('commentsPage', commentsPage))
      ..add(DiagnosticsProperty('commentsPerPage', commentsPerPage))
      ..add(DiagnosticsProperty('commentsHasMore', commentsHasMore))
      ..add(DiagnosticsProperty('bids', bids))
      ..add(DiagnosticsProperty('isLoadingBids', isLoadingBids))
      ..add(DiagnosticsProperty('isPlacingBid', isPlacingBid))
      ..add(DiagnosticsProperty('bidsPage', bidsPage))
      ..add(DiagnosticsProperty('bidsPerPage', bidsPerPage))
      ..add(DiagnosticsProperty('bidsHasMore', bidsHasMore))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('commentsError', commentsError))
      ..add(DiagnosticsProperty('sendCommentError', sendCommentError))
      ..add(DiagnosticsProperty('bidsError', bidsError))
      ..add(DiagnosticsProperty('addBidError', addBidError))
      ..add(DiagnosticsProperty('isInitializing', isInitializing));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroadcasterStreamStateImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.isPublishing, isPublishing) ||
                other.isPublishing == isPublishing) &&
            (identical(other.videoTrack, videoTrack) ||
                other.videoTrack == videoTrack) &&
            (identical(other.audioTrack, audioTrack) ||
                other.audioTrack == audioTrack) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.localParticipant, localParticipant) ||
                other.localParticipant == localParticipant) &&
            (identical(other.isPusherConnected, isPusherConnected) ||
                other.isPusherConnected == isPusherConnected) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
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
            const DeepCollectionEquality().equals(other._bids, _bids) &&
            (identical(other.isLoadingBids, isLoadingBids) ||
                other.isLoadingBids == isLoadingBids) &&
            (identical(other.isPlacingBid, isPlacingBid) ||
                other.isPlacingBid == isPlacingBid) &&
            (identical(other.bidsPage, bidsPage) ||
                other.bidsPage == bidsPage) &&
            (identical(other.bidsPerPage, bidsPerPage) ||
                other.bidsPerPage == bidsPerPage) &&
            (identical(other.bidsHasMore, bidsHasMore) ||
                other.bidsHasMore == bidsHasMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.commentsError, commentsError) ||
                other.commentsError == commentsError) &&
            (identical(other.sendCommentError, sendCommentError) ||
                other.sendCommentError == sendCommentError) &&
            (identical(other.bidsError, bidsError) ||
                other.bidsError == bidsError) &&
            (identical(other.addBidError, addBidError) ||
                other.addBidError == addBidError) &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isConnected,
        isPublishing,
        videoTrack,
        audioTrack,
        room,
        localParticipant,
        isPusherConnected,
        stream,
        viewerCount,
        streamSeconds,
        const DeepCollectionEquality().hash(_comments),
        commentText,
        isLoadingComments,
        isSendingComment,
        commentsPage,
        commentsPerPage,
        commentsHasMore,
        const DeepCollectionEquality().hash(_bids),
        isLoadingBids,
        isPlacingBid,
        bidsPage,
        bidsPerPage,
        bidsHasMore,
        errorMessage,
        commentsError,
        sendCommentError,
        bidsError,
        addBidError,
        isInitializing
      ]);

  /// Create a copy of BroadcasterStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BroadcasterStreamStateImplCopyWith<_$BroadcasterStreamStateImpl>
      get copyWith => __$$BroadcasterStreamStateImplCopyWithImpl<
          _$BroadcasterStreamStateImpl>(this, _$identity);
}

abstract class _BroadcasterStreamState implements BroadcasterStreamState {
  const factory _BroadcasterStreamState(
      {final bool isConnected,
      final bool isPublishing,
      final LocalVideoTrack? videoTrack,
      final LocalAudioTrack? audioTrack,
      final Room? room,
      final LocalParticipant? localParticipant,
      final bool isPusherConnected,
      required final StreamDataModel stream,
      final int viewerCount,
      final int streamSeconds,
      final List<StreamCommentModel> comments,
      final String commentText,
      final bool isLoadingComments,
      final bool isSendingComment,
      final int commentsPage,
      final int commentsPerPage,
      final bool commentsHasMore,
      final List<BidStreamItem> bids,
      final bool isLoadingBids,
      final bool isPlacingBid,
      final int bidsPage,
      final int bidsPerPage,
      final bool bidsHasMore,
      final String errorMessage,
      final String commentsError,
      final String sendCommentError,
      final String bidsError,
      final String addBidError,
      final bool isInitializing}) = _$BroadcasterStreamStateImpl;

// LiveKit
  @override
  bool get isConnected;
  @override
  bool get isPublishing;
  @override
  LocalVideoTrack? get videoTrack;
  @override
  LocalAudioTrack? get audioTrack; // Room & Participants
  @override
  Room? get room;
  @override
  LocalParticipant? get localParticipant; // Pusher
  @override
  bool get isPusherConnected; // Stream data
  @override
  StreamDataModel get stream;
  @override
  int get viewerCount;
  @override
  int get streamSeconds; // Comments (RAW API MODELS)
  @override
  List<StreamCommentModel> get comments;
  @override
  String get commentText;
  @override
  bool get isLoadingComments;
  @override
  bool get isSendingComment;
  @override
  int get commentsPage;
  @override
  int get commentsPerPage;
  @override
  bool get commentsHasMore; // Bids (RAW API MODELS)
  @override
  List<BidStreamItem> get bids;
  @override
  bool get isLoadingBids;
  @override
  bool get isPlacingBid;
  @override
  int get bidsPage;
  @override
  int get bidsPerPage;
  @override
  bool get bidsHasMore; // Errors
  @override
  String get errorMessage;
  @override
  String get commentsError;
  @override
  String get sendCommentError;
  @override
  String get bidsError;
  @override
  String get addBidError; // Initialization
  @override
  bool get isInitializing;

  /// Create a copy of BroadcasterStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BroadcasterStreamStateImplCopyWith<_$BroadcasterStreamStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
