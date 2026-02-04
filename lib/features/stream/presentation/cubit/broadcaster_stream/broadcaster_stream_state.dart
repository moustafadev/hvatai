// broadcaster_stream_state.dart
part of 'broadcaster_stream_cubit.dart';

@freezed
class BroadcasterStreamState with _$BroadcasterStreamState {
  const factory BroadcasterStreamState({
    // LiveKit
    @Default(false) bool isConnected,
    @Default(false) bool isPublishing,
    LocalVideoTrack? videoTrack,
    LocalAudioTrack? audioTrack,

    // Room & Participants
    Room? room,
    LocalParticipant? localParticipant,

    // Pusher
    @Default(false) bool isPusherConnected,

    // Stream data
    required StreamDataModel stream,
    @Default(0) int viewerCount,
    @Default(0) int streamSeconds,
    @Default(0) int userTime,

    // Comments (RAW API MODELS)
    @Default(<StreamCommentModel>[]) List<StreamCommentModel> comments,
    @Default('') String commentText,
    @Default(false) bool isLoadingComments,
    @Default(false) bool isSendingComment,
    @Default(1) int commentsPage,
    @Default(50) int commentsPerPage,
    @Default(true) bool commentsHasMore,

    // Bids (RAW API MODELS)
    @Default(<BidStreamItem>[]) List<BidStreamItem> bids,
    @Default(false) bool isLoadingBids,
    @Default(false) bool isPlacingBid,
    @Default(1) int bidsPage,
    @Default(20) int bidsPerPage,
    @Default(true) bool bidsHasMore,

    // Errors
    @Default('') String errorMessage,
    @Default('') String commentsError,
    @Default('') String sendCommentError,
    @Default('') String bidsError,
    @Default('') String addBidError,
    StreamProductModel? activeStreamProduct,
    DateTime? currentBidEndTime,
    int? currentBidRemainingSeconds,
    int? currentStreamProductId,
    BidStreamItem? currentProductStreamBid,
    BidWinnerEvent? currentWinner,
    @Default(false) bool isSelectingWinner,

    // Initialization
    @Default(false) bool isInitializing,

    // Microphone
    @Default(false) bool isMicrophoneMuted,

    // Thumbnail capture
    GlobalKey? thumbnailKey,
  }) = _BroadcasterStreamState;
}
