// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewer_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewerStreamState {
// LiveKit
  bool get isConnected => throw _privateConstructorUsedError;
  VideoTrack? get remoteVideoTrack => throw _privateConstructorUsedError;
  RemoteAudioTrack? get remoteAudioTrack =>
      throw _privateConstructorUsedError; // Room & Participants
  Room? get room => throw _privateConstructorUsedError;
  RemoteParticipant? get remoteParticipant =>
      throw _privateConstructorUsedError; // Pusher
  bool get isPusherConnected =>
      throw _privateConstructorUsedError; // Stream data
  StreamDataModel get stream => throw _privateConstructorUsedError;
  JoinStreamData? get joinData => throw _privateConstructorUsedError;
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
  String get addBidError => throw _privateConstructorUsedError;
  StreamProductModel? get activeStreamProduct =>
      throw _privateConstructorUsedError;
  int? get currentStreamProductId => throw _privateConstructorUsedError;
  DateTime? get currentBidEndTime => throw _privateConstructorUsedError;
  int? get currentBidRemainingSeconds => throw _privateConstructorUsedError;
  int? get currentBidTotalBids => throw _privateConstructorUsedError;
  BidWinnerEvent? get currentWinner => throw _privateConstructorUsedError;
  bool get isSelectingWinner => throw _privateConstructorUsedError;
  int get currentUserId => throw _privateConstructorUsedError; // Initialization
  bool get isInitializing =>
      throw _privateConstructorUsedError; // Stream status
  bool get isStreamEnded => throw _privateConstructorUsedError; // Audio
  bool get isAudioMuted => throw _privateConstructorUsedError; // Subscriptions
  bool get isSubscribed => throw _privateConstructorUsedError;
  bool get isLoadingSubscription => throw _privateConstructorUsedError;
  bool get isTogglingSubscription => throw _privateConstructorUsedError;

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewerStreamStateCopyWith<ViewerStreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewerStreamStateCopyWith<$Res> {
  factory $ViewerStreamStateCopyWith(
          ViewerStreamState value, $Res Function(ViewerStreamState) then) =
      _$ViewerStreamStateCopyWithImpl<$Res, ViewerStreamState>;
  @useResult
  $Res call(
      {bool isConnected,
      VideoTrack? remoteVideoTrack,
      RemoteAudioTrack? remoteAudioTrack,
      Room? room,
      RemoteParticipant? remoteParticipant,
      bool isPusherConnected,
      StreamDataModel stream,
      JoinStreamData? joinData,
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
      StreamProductModel? activeStreamProduct,
      int? currentStreamProductId,
      DateTime? currentBidEndTime,
      int? currentBidRemainingSeconds,
      int? currentBidTotalBids,
      BidWinnerEvent? currentWinner,
      bool isSelectingWinner,
      int currentUserId,
      bool isInitializing,
      bool isStreamEnded,
      bool isAudioMuted,
      bool isSubscribed,
      bool isLoadingSubscription,
      bool isTogglingSubscription});

  $StreamDataModelCopyWith<$Res> get stream;
  $JoinStreamDataCopyWith<$Res>? get joinData;
  $StreamProductModelCopyWith<$Res>? get activeStreamProduct;
  $BidWinnerEventCopyWith<$Res>? get currentWinner;
}

/// @nodoc
class _$ViewerStreamStateCopyWithImpl<$Res, $Val extends ViewerStreamState>
    implements $ViewerStreamStateCopyWith<$Res> {
  _$ViewerStreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? remoteVideoTrack = freezed,
    Object? remoteAudioTrack = freezed,
    Object? room = freezed,
    Object? remoteParticipant = freezed,
    Object? isPusherConnected = null,
    Object? stream = null,
    Object? joinData = freezed,
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
    Object? activeStreamProduct = freezed,
    Object? currentStreamProductId = freezed,
    Object? currentBidEndTime = freezed,
    Object? currentBidRemainingSeconds = freezed,
    Object? currentBidTotalBids = freezed,
    Object? currentWinner = freezed,
    Object? isSelectingWinner = null,
    Object? currentUserId = null,
    Object? isInitializing = null,
    Object? isStreamEnded = null,
    Object? isAudioMuted = null,
    Object? isSubscribed = null,
    Object? isLoadingSubscription = null,
    Object? isTogglingSubscription = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteVideoTrack: freezed == remoteVideoTrack
          ? _value.remoteVideoTrack
          : remoteVideoTrack // ignore: cast_nullable_to_non_nullable
              as VideoTrack?,
      remoteAudioTrack: freezed == remoteAudioTrack
          ? _value.remoteAudioTrack
          : remoteAudioTrack // ignore: cast_nullable_to_non_nullable
              as RemoteAudioTrack?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      remoteParticipant: freezed == remoteParticipant
          ? _value.remoteParticipant
          : remoteParticipant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipant?,
      isPusherConnected: null == isPusherConnected
          ? _value.isPusherConnected
          : isPusherConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
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
      activeStreamProduct: freezed == activeStreamProduct
          ? _value.activeStreamProduct
          : activeStreamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
      currentStreamProductId: freezed == currentStreamProductId
          ? _value.currentStreamProductId
          : currentStreamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBidEndTime: freezed == currentBidEndTime
          ? _value.currentBidEndTime
          : currentBidEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentBidRemainingSeconds: freezed == currentBidRemainingSeconds
          ? _value.currentBidRemainingSeconds
          : currentBidRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBidTotalBids: freezed == currentBidTotalBids
          ? _value.currentBidTotalBids
          : currentBidTotalBids // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWinner: freezed == currentWinner
          ? _value.currentWinner
          : currentWinner // ignore: cast_nullable_to_non_nullable
              as BidWinnerEvent?,
      isSelectingWinner: null == isSelectingWinner
          ? _value.isSelectingWinner
          : isSelectingWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isStreamEnded: null == isStreamEnded
          ? _value.isStreamEnded
          : isStreamEnded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubscription: null == isLoadingSubscription
          ? _value.isLoadingSubscription
          : isLoadingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      isTogglingSubscription: null == isTogglingSubscription
          ? _value.isTogglingSubscription
          : isTogglingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamDataModelCopyWith<$Res> get stream {
    return $StreamDataModelCopyWith<$Res>(_value.stream, (value) {
      return _then(_value.copyWith(stream: value) as $Val);
    });
  }

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamDataCopyWith<$Res>? get joinData {
    if (_value.joinData == null) {
      return null;
    }

    return $JoinStreamDataCopyWith<$Res>(_value.joinData!, (value) {
      return _then(_value.copyWith(joinData: value) as $Val);
    });
  }

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StreamProductModelCopyWith<$Res>? get activeStreamProduct {
    if (_value.activeStreamProduct == null) {
      return null;
    }

    return $StreamProductModelCopyWith<$Res>(_value.activeStreamProduct!,
        (value) {
      return _then(_value.copyWith(activeStreamProduct: value) as $Val);
    });
  }

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BidWinnerEventCopyWith<$Res>? get currentWinner {
    if (_value.currentWinner == null) {
      return null;
    }

    return $BidWinnerEventCopyWith<$Res>(_value.currentWinner!, (value) {
      return _then(_value.copyWith(currentWinner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ViewerStreamStateImplCopyWith<$Res>
    implements $ViewerStreamStateCopyWith<$Res> {
  factory _$$ViewerStreamStateImplCopyWith(_$ViewerStreamStateImpl value,
          $Res Function(_$ViewerStreamStateImpl) then) =
      __$$ViewerStreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isConnected,
      VideoTrack? remoteVideoTrack,
      RemoteAudioTrack? remoteAudioTrack,
      Room? room,
      RemoteParticipant? remoteParticipant,
      bool isPusherConnected,
      StreamDataModel stream,
      JoinStreamData? joinData,
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
      StreamProductModel? activeStreamProduct,
      int? currentStreamProductId,
      DateTime? currentBidEndTime,
      int? currentBidRemainingSeconds,
      int? currentBidTotalBids,
      BidWinnerEvent? currentWinner,
      bool isSelectingWinner,
      int currentUserId,
      bool isInitializing,
      bool isStreamEnded,
      bool isAudioMuted,
      bool isSubscribed,
      bool isLoadingSubscription,
      bool isTogglingSubscription});

  @override
  $StreamDataModelCopyWith<$Res> get stream;
  @override
  $JoinStreamDataCopyWith<$Res>? get joinData;
  @override
  $StreamProductModelCopyWith<$Res>? get activeStreamProduct;
  @override
  $BidWinnerEventCopyWith<$Res>? get currentWinner;
}

/// @nodoc
class __$$ViewerStreamStateImplCopyWithImpl<$Res>
    extends _$ViewerStreamStateCopyWithImpl<$Res, _$ViewerStreamStateImpl>
    implements _$$ViewerStreamStateImplCopyWith<$Res> {
  __$$ViewerStreamStateImplCopyWithImpl(_$ViewerStreamStateImpl _value,
      $Res Function(_$ViewerStreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? remoteVideoTrack = freezed,
    Object? remoteAudioTrack = freezed,
    Object? room = freezed,
    Object? remoteParticipant = freezed,
    Object? isPusherConnected = null,
    Object? stream = null,
    Object? joinData = freezed,
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
    Object? activeStreamProduct = freezed,
    Object? currentStreamProductId = freezed,
    Object? currentBidEndTime = freezed,
    Object? currentBidRemainingSeconds = freezed,
    Object? currentBidTotalBids = freezed,
    Object? currentWinner = freezed,
    Object? isSelectingWinner = null,
    Object? currentUserId = null,
    Object? isInitializing = null,
    Object? isStreamEnded = null,
    Object? isAudioMuted = null,
    Object? isSubscribed = null,
    Object? isLoadingSubscription = null,
    Object? isTogglingSubscription = null,
  }) {
    return _then(_$ViewerStreamStateImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteVideoTrack: freezed == remoteVideoTrack
          ? _value.remoteVideoTrack
          : remoteVideoTrack // ignore: cast_nullable_to_non_nullable
              as VideoTrack?,
      remoteAudioTrack: freezed == remoteAudioTrack
          ? _value.remoteAudioTrack
          : remoteAudioTrack // ignore: cast_nullable_to_non_nullable
              as RemoteAudioTrack?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      remoteParticipant: freezed == remoteParticipant
          ? _value.remoteParticipant
          : remoteParticipant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipant?,
      isPusherConnected: null == isPusherConnected
          ? _value.isPusherConnected
          : isPusherConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as StreamDataModel,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
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
      activeStreamProduct: freezed == activeStreamProduct
          ? _value.activeStreamProduct
          : activeStreamProduct // ignore: cast_nullable_to_non_nullable
              as StreamProductModel?,
      currentStreamProductId: freezed == currentStreamProductId
          ? _value.currentStreamProductId
          : currentStreamProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBidEndTime: freezed == currentBidEndTime
          ? _value.currentBidEndTime
          : currentBidEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentBidRemainingSeconds: freezed == currentBidRemainingSeconds
          ? _value.currentBidRemainingSeconds
          : currentBidRemainingSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      currentBidTotalBids: freezed == currentBidTotalBids
          ? _value.currentBidTotalBids
          : currentBidTotalBids // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWinner: freezed == currentWinner
          ? _value.currentWinner
          : currentWinner // ignore: cast_nullable_to_non_nullable
              as BidWinnerEvent?,
      isSelectingWinner: null == isSelectingWinner
          ? _value.isSelectingWinner
          : isSelectingWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      isInitializing: null == isInitializing
          ? _value.isInitializing
          : isInitializing // ignore: cast_nullable_to_non_nullable
              as bool,
      isStreamEnded: null == isStreamEnded
          ? _value.isStreamEnded
          : isStreamEnded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAudioMuted: null == isAudioMuted
          ? _value.isAudioMuted
          : isAudioMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubscribed: null == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSubscription: null == isLoadingSubscription
          ? _value.isLoadingSubscription
          : isLoadingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      isTogglingSubscription: null == isTogglingSubscription
          ? _value.isTogglingSubscription
          : isTogglingSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ViewerStreamStateImpl
    with DiagnosticableTreeMixin
    implements _ViewerStreamState {
  const _$ViewerStreamStateImpl(
      {this.isConnected = false,
      this.remoteVideoTrack,
      this.remoteAudioTrack,
      this.room,
      this.remoteParticipant,
      this.isPusherConnected = false,
      required this.stream,
      this.joinData,
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
      this.activeStreamProduct,
      this.currentStreamProductId,
      this.currentBidEndTime,
      this.currentBidRemainingSeconds,
      this.currentBidTotalBids,
      this.currentWinner,
      this.isSelectingWinner = false,
      this.currentUserId = 0,
      this.isInitializing = false,
      this.isStreamEnded = false,
      this.isAudioMuted = false,
      this.isSubscribed = false,
      this.isLoadingSubscription = false,
      this.isTogglingSubscription = false})
      : _comments = comments,
        _bids = bids;

// LiveKit
  @override
  @JsonKey()
  final bool isConnected;
  @override
  final VideoTrack? remoteVideoTrack;
  @override
  final RemoteAudioTrack? remoteAudioTrack;
// Room & Participants
  @override
  final Room? room;
  @override
  final RemoteParticipant? remoteParticipant;
// Pusher
  @override
  @JsonKey()
  final bool isPusherConnected;
// Stream data
  @override
  final StreamDataModel stream;
  @override
  final JoinStreamData? joinData;
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
  @override
  final StreamProductModel? activeStreamProduct;
  @override
  final int? currentStreamProductId;
  @override
  final DateTime? currentBidEndTime;
  @override
  final int? currentBidRemainingSeconds;
  @override
  final int? currentBidTotalBids;
  @override
  final BidWinnerEvent? currentWinner;
  @override
  @JsonKey()
  final bool isSelectingWinner;
  @override
  @JsonKey()
  final int currentUserId;
// Initialization
  @override
  @JsonKey()
  final bool isInitializing;
// Stream status
  @override
  @JsonKey()
  final bool isStreamEnded;
// Audio
  @override
  @JsonKey()
  final bool isAudioMuted;
// Subscriptions
  @override
  @JsonKey()
  final bool isSubscribed;
  @override
  @JsonKey()
  final bool isLoadingSubscription;
  @override
  @JsonKey()
  final bool isTogglingSubscription;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewerStreamState(isConnected: $isConnected, remoteVideoTrack: $remoteVideoTrack, remoteAudioTrack: $remoteAudioTrack, room: $room, remoteParticipant: $remoteParticipant, isPusherConnected: $isPusherConnected, stream: $stream, joinData: $joinData, viewerCount: $viewerCount, streamSeconds: $streamSeconds, comments: $comments, commentText: $commentText, isLoadingComments: $isLoadingComments, isSendingComment: $isSendingComment, commentsPage: $commentsPage, commentsPerPage: $commentsPerPage, commentsHasMore: $commentsHasMore, bids: $bids, isLoadingBids: $isLoadingBids, isPlacingBid: $isPlacingBid, bidsPage: $bidsPage, bidsPerPage: $bidsPerPage, bidsHasMore: $bidsHasMore, errorMessage: $errorMessage, commentsError: $commentsError, sendCommentError: $sendCommentError, bidsError: $bidsError, addBidError: $addBidError, activeStreamProduct: $activeStreamProduct, currentStreamProductId: $currentStreamProductId, currentBidEndTime: $currentBidEndTime, currentBidRemainingSeconds: $currentBidRemainingSeconds, currentBidTotalBids: $currentBidTotalBids, currentWinner: $currentWinner, isSelectingWinner: $isSelectingWinner, currentUserId: $currentUserId, isInitializing: $isInitializing, isStreamEnded: $isStreamEnded, isAudioMuted: $isAudioMuted, isSubscribed: $isSubscribed, isLoadingSubscription: $isLoadingSubscription, isTogglingSubscription: $isTogglingSubscription)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewerStreamState'))
      ..add(DiagnosticsProperty('isConnected', isConnected))
      ..add(DiagnosticsProperty('remoteVideoTrack', remoteVideoTrack))
      ..add(DiagnosticsProperty('remoteAudioTrack', remoteAudioTrack))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('remoteParticipant', remoteParticipant))
      ..add(DiagnosticsProperty('isPusherConnected', isPusherConnected))
      ..add(DiagnosticsProperty('stream', stream))
      ..add(DiagnosticsProperty('joinData', joinData))
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
      ..add(DiagnosticsProperty('activeStreamProduct', activeStreamProduct))
      ..add(
          DiagnosticsProperty('currentStreamProductId', currentStreamProductId))
      ..add(DiagnosticsProperty('currentBidEndTime', currentBidEndTime))
      ..add(DiagnosticsProperty(
          'currentBidRemainingSeconds', currentBidRemainingSeconds))
      ..add(DiagnosticsProperty('currentBidTotalBids', currentBidTotalBids))
      ..add(DiagnosticsProperty('currentWinner', currentWinner))
      ..add(DiagnosticsProperty('isSelectingWinner', isSelectingWinner))
      ..add(DiagnosticsProperty('currentUserId', currentUserId))
      ..add(DiagnosticsProperty('isInitializing', isInitializing))
      ..add(DiagnosticsProperty('isStreamEnded', isStreamEnded))
      ..add(DiagnosticsProperty('isAudioMuted', isAudioMuted))
      ..add(DiagnosticsProperty('isSubscribed', isSubscribed))
      ..add(DiagnosticsProperty('isLoadingSubscription', isLoadingSubscription))
      ..add(DiagnosticsProperty(
          'isTogglingSubscription', isTogglingSubscription));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewerStreamStateImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.remoteVideoTrack, remoteVideoTrack) ||
                other.remoteVideoTrack == remoteVideoTrack) &&
            (identical(other.remoteAudioTrack, remoteAudioTrack) ||
                other.remoteAudioTrack == remoteAudioTrack) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.remoteParticipant, remoteParticipant) ||
                other.remoteParticipant == remoteParticipant) &&
            (identical(other.isPusherConnected, isPusherConnected) ||
                other.isPusherConnected == isPusherConnected) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.joinData, joinData) ||
                other.joinData == joinData) &&
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
            (identical(other.activeStreamProduct, activeStreamProduct) ||
                other.activeStreamProduct == activeStreamProduct) &&
            (identical(other.currentStreamProductId, currentStreamProductId) ||
                other.currentStreamProductId == currentStreamProductId) &&
            (identical(other.currentBidEndTime, currentBidEndTime) ||
                other.currentBidEndTime == currentBidEndTime) &&
            (identical(other.currentBidRemainingSeconds,
                    currentBidRemainingSeconds) ||
                other.currentBidRemainingSeconds ==
                    currentBidRemainingSeconds) &&
            (identical(other.currentBidTotalBids, currentBidTotalBids) ||
                other.currentBidTotalBids == currentBidTotalBids) &&
            (identical(other.currentWinner, currentWinner) ||
                other.currentWinner == currentWinner) &&
            (identical(other.isSelectingWinner, isSelectingWinner) ||
                other.isSelectingWinner == isSelectingWinner) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.isInitializing, isInitializing) ||
                other.isInitializing == isInitializing) &&
            (identical(other.isStreamEnded, isStreamEnded) ||
                other.isStreamEnded == isStreamEnded) &&
            (identical(other.isAudioMuted, isAudioMuted) ||
                other.isAudioMuted == isAudioMuted) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.isLoadingSubscription, isLoadingSubscription) ||
                other.isLoadingSubscription == isLoadingSubscription) &&
            (identical(other.isTogglingSubscription, isTogglingSubscription) ||
                other.isTogglingSubscription == isTogglingSubscription));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isConnected,
        remoteVideoTrack,
        remoteAudioTrack,
        room,
        remoteParticipant,
        isPusherConnected,
        stream,
        joinData,
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
        activeStreamProduct,
        currentStreamProductId,
        currentBidEndTime,
        currentBidRemainingSeconds,
        currentBidTotalBids,
        currentWinner,
        isSelectingWinner,
        currentUserId,
        isInitializing,
        isStreamEnded,
        isAudioMuted,
        isSubscribed,
        isLoadingSubscription,
        isTogglingSubscription
      ]);

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewerStreamStateImplCopyWith<_$ViewerStreamStateImpl> get copyWith =>
      __$$ViewerStreamStateImplCopyWithImpl<_$ViewerStreamStateImpl>(
          this, _$identity);
}

abstract class _ViewerStreamState implements ViewerStreamState {
  const factory _ViewerStreamState(
      {final bool isConnected,
      final VideoTrack? remoteVideoTrack,
      final RemoteAudioTrack? remoteAudioTrack,
      final Room? room,
      final RemoteParticipant? remoteParticipant,
      final bool isPusherConnected,
      required final StreamDataModel stream,
      final JoinStreamData? joinData,
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
      final StreamProductModel? activeStreamProduct,
      final int? currentStreamProductId,
      final DateTime? currentBidEndTime,
      final int? currentBidRemainingSeconds,
      final int? currentBidTotalBids,
      final BidWinnerEvent? currentWinner,
      final bool isSelectingWinner,
      final int currentUserId,
      final bool isInitializing,
      final bool isStreamEnded,
      final bool isAudioMuted,
      final bool isSubscribed,
      final bool isLoadingSubscription,
      final bool isTogglingSubscription}) = _$ViewerStreamStateImpl;

// LiveKit
  @override
  bool get isConnected;
  @override
  VideoTrack? get remoteVideoTrack;
  @override
  RemoteAudioTrack? get remoteAudioTrack; // Room & Participants
  @override
  Room? get room;
  @override
  RemoteParticipant? get remoteParticipant; // Pusher
  @override
  bool get isPusherConnected; // Stream data
  @override
  StreamDataModel get stream;
  @override
  JoinStreamData? get joinData;
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
  String get addBidError;
  @override
  StreamProductModel? get activeStreamProduct;
  @override
  int? get currentStreamProductId;
  @override
  DateTime? get currentBidEndTime;
  @override
  int? get currentBidRemainingSeconds;
  @override
  int? get currentBidTotalBids;
  @override
  BidWinnerEvent? get currentWinner;
  @override
  bool get isSelectingWinner;
  @override
  int get currentUserId; // Initialization
  @override
  bool get isInitializing; // Stream status
  @override
  bool get isStreamEnded; // Audio
  @override
  bool get isAudioMuted; // Subscriptions
  @override
  bool get isSubscribed;
  @override
  bool get isLoadingSubscription;
  @override
  bool get isTogglingSubscription;

  /// Create a copy of ViewerStreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewerStreamStateImplCopyWith<_$ViewerStreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
