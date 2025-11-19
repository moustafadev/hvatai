// viewer_stream_state.dart
part of 'viewer_stream_cubit.dart';

@freezed
class ViewerStreamState with _$ViewerStreamState {
  const factory ViewerStreamState({
    // LiveKit
    @Default(false) bool isConnected,
    VideoTrack? remoteVideoTrack,

    // Room & Participants
    Room? room,
    RemoteParticipant? remoteParticipant,

    // Pusher
    @Default(false) bool isPusherConnected,

    // Stream data
    required StreamDataModel stream,
    JoinStreamData? joinData,
    @Default(0) int viewerCount,
    @Default(0) int streamSeconds,

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
    int? currentStreamProductId,
    DateTime? currentBidEndTime,
    int? currentBidRemainingSeconds,
    int? currentBidTotalBids,
    BidWinnerEvent? currentWinner,
    @Default(false) bool isSelectingWinner,
    @Default(0) int currentUserId,

    // Initialization
    @Default(false) bool isInitializing,

    // Stream status
    @Default(false) bool isStreamEnded,
  }) = _ViewerStreamState;
}
