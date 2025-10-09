import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/stream/data/models/bid_stream_response.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/domain/usecases/add_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/end_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_bids_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/leave_stream_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/send_stream_comment_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/start_stream_usecase.dart';

import '../stream.dart'; // where UserRole is declared

part 'live_stream_state.dart';
part 'live_stream_cubit.freezed.dart';

class LiveStreamCubit extends Cubit<LiveStreamState> {
  LiveStreamCubit(
    this._getComments,
    this._sendComment,
    this._leaveUsecase,
    this._getBids,
    this._addBidUsecase,
    this._endUsecase,
    this._startStreamUsecase,
  ) : super(const LiveStreamState(
          role: UserRole.viewer,
          localReady: false,
          isInitializing: false,
          joined: false,
          streamSeconds: 0,
          commentText: '',
          isLoadingComments: false,
          isSendingComment: false,
          commentsPage: 1,
          commentsPerPage: 50,
          commentsHasMore: true,
          errorMessage: '',
          commentsError: '',
          sendCommentError: '',
        ));

  final GetStreamCommentsUsecase _getComments;
  final SendStreamCommentUsecase _sendComment;
  final LeaveStreamUsecase _leaveUsecase;
  final EndStreamUsecase _endUsecase;
  final GetStreamBidsUsecase _getBids;
  final AddStreamBidUsecase _addBidUsecase;
  final StartStreamUsecase _startStreamUsecase; // 3. Add the field

  Timer? _timer;
  TextEditingController controller = TextEditingController();

  /// Generic stream initializer (used by the screen for RTMP/HLS flow).
  Future<void> initializeLiveKit({
    required UserRole role,
    required int viewerCount,
    required int initialSeconds,
    required String channelName, // kept for analytics/logs
    required int streamId,
  }) async {
    emit(state.copyWith(
      role: role,
      isInitializing: true,
      streamSeconds: initialSeconds,
      viewerCount: viewerCount,
      errorMessage: '',
    ));

    _startTimer(); // drive the on-screen timer

    emit(state.copyWith(
      isInitializing: false,
      // legacy flags kept for UI compatibility
      localReady: role == UserRole.broadcaster,
      joined: true,
    ));
  }

  // ================== COMMENTS ==================
  Future<void> loadInitialComments({required int streamId}) async {
    emit(state.copyWith(
      isLoadingComments: true,
      commentsError: '',
      commentsPage: 1,
      commentsHasMore: true,
      comments: const [],
    ));

    final res = await _getComments(GetStreamCommentsParams(
      streamId: streamId,
      page: 1,
      perPage: state.commentsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingComments: false,
        commentsError: err,
      )),
      (pageData) {
        final items = pageData.data?.data ?? <StreamCommentModel>[];
        final hasMore = (pageData.data?.nextPageUrl != null) &&
            (pageData.data!.currentPage! < (pageData.data!.lastPage ?? 1));

        emit(state.copyWith(
          isLoadingComments: false,
          comments: items,
          commentsPage: 1,
          commentsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> loadMoreComments({required int streamId}) async {
    if (state.isLoadingComments || !state.commentsHasMore) return;

    emit(state.copyWith(isLoadingComments: true, commentsError: ''));

    final nextPage = state.commentsPage + 1;

    final res = await _getComments(GetStreamCommentsParams(
      streamId: streamId,
      page: nextPage,
      perPage: state.commentsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingComments: false,
        commentsError: err,
      )),
      (pageData) {
        final items = pageData.data?.data ?? <StreamCommentModel>[];
        final current = List<StreamCommentModel>.from(state.comments)
          ..addAll(items);

        final hasMore = (pageData.data?.nextPageUrl != null) &&
            (pageData.data!.currentPage! < (pageData.data!.lastPage ?? 1));

        emit(state.copyWith(
          isLoadingComments: false,
          comments: current,
          commentsPage: nextPage,
          commentsHasMore: hasMore,
        ));
      },
    );
  }

  void updateCommentText(String text) {
    emit(state.copyWith(commentText: text));
  }

  Future<String?> startStreamAndGetToken({required int streamId}) async {
    emit(state.copyWith(isInitializing: true, errorMessage: ''));

    final result = await _startStreamUsecase(streamId);

    return result.fold(
      (error) {
        // Handle failure
        emit(state.copyWith(
          isInitializing: false,
          errorMessage: 'Failed to start stream: $error',
        ));
        return null;
      },
      (startStreamModel) {
        // Handle success
        emit(state.copyWith(isInitializing: false));
        // IMPORTANT: Replace 'token' with the actual property name in your StartStreamModel
        // For example: startStreamModel.livekitToken or startStreamModel.data.token
        return startStreamModel.livekit.token;
      },
    );
  }

  Future<void> sendCommentToServer({
    required int streamId,
    String type = 'comment',
  }) async {
    final text = state.commentText.trim();
    controller.clear();

    emit(state.copyWith(
      isSendingComment: true,
      sendCommentError: '',
      commentText: '',
    ));

    final res = await _sendComment(SendStreamCommentParams(
      streamId: streamId,
      message: text,
    ));

    res.fold(
      (err) {
        emit(state.copyWith(
          isSendingComment: false,
          sendCommentError: err,
        ));
      },
      (created) {
        emit(state.copyWith(isSendingComment: false));
      },
    );
  }

  void addIncomingComment(StreamCommentModel model) {
    final next = List<StreamCommentModel>.from(state.comments)..add(model);
    emit(state.copyWith(comments: next));
  }

  // ================== BIDS ==================
  Future<void> loadInitialBids({required int streamId}) async {
    emit(state.copyWith(
      isLoadingBids: true,
      bidsError: '',
      bidsPage: 1,
      bidsHasMore: true,
      bids: const [],
    ));

    final res = await _getBids(GetStreamBidsParams(
      streamId: streamId,
      page: 1,
      perPage: state.bidsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingBids: false,
        bidsError: err,
      )),
      (pageData) {
        final items = pageData.data.data;
        final currentPage = pageData.data.currentPage;
        final lastPage = pageData.data.lastPage ?? 1;
        final hasMore =
            (pageData.data.nextPageUrl != null) && (currentPage < lastPage);

        emit(state.copyWith(
          isLoadingBids: false,
          bids: items,
          bidsPage: 1,
          bidsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> loadMoreBids({required int streamId}) async {
    if (state.isLoadingBids || !state.bidsHasMore) return;

    emit(state.copyWith(isLoadingBids: true, bidsError: ''));

    final nextPage = state.bidsPage + 1;

    final res = await _getBids(GetStreamBidsParams(
      streamId: streamId,
      page: nextPage,
      perPage: state.bidsPerPage,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isLoadingBids: false,
        bidsError: err,
      )),
      (pageData) {
        final items = pageData.data.data;
        final merged = List<BidStreamItem>.from(state.bids)..addAll(items);

        final currentPage = pageData.data.currentPage;
        final lastPage = pageData.data.lastPage ?? 1;
        final hasMore =
            (pageData.data.nextPageUrl != null) && (currentPage < lastPage);

        emit(state.copyWith(
          isLoadingBids: false,
          bids: merged,
          bidsPage: nextPage,
          bidsHasMore: hasMore,
        ));
      },
    );
  }

  Future<void> placeBid({
    required int streamId,
    required int productId,
    required String bidAmount,
  }) async {
    emit(state.copyWith(
      isPlacingBid: true,
      addBidError: '',
    ));

    final res = await _addBidUsecase(AddStreamBidParams(
      streamId: streamId,
      productId: productId,
      bidAmount: bidAmount,
    ));

    res.fold(
      (err) => emit(state.copyWith(
        isPlacingBid: false,
        addBidError: err,
      )),
      (createdBid) {
        final updated = List<BidStreamItem>.from(state.bids)
          ..insert(0, createdBid);
        emit(state.copyWith(
          isPlacingBid: false,
          bids: updated,
        ));
      },
    );
  }

  void addIncomingBid(BidStreamItem item) {
    final updated = List<BidStreamItem>.from(state.bids)..insert(0, item);
    emit(state.copyWith(bids: updated));
  }

  void updateViewerCount(int viewerCount) {
    emit(state.copyWith(viewerCount: viewerCount));
  }

  // ================== Timer & cleanup ==================
  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      emit(state.copyWith(streamSeconds: state.streamSeconds + 1));
    });
  }

  Future<bool> leaveStream({required int streamId}) async {
    final result = await _leaveUsecase(LeaveStreamParams(streamId: streamId));
    return await result.fold(
      (err) async => false,
      (ok) async => true,
    );
  }

  Future<bool> endStream({required int streamId}) async {
    final result = await _endUsecase(EndStreamParams(streamId: streamId));
    return await result.fold(
      (err) async => false,
      (ok) async => true,
    );
  }

  @override
  Future<void> close() async {
    _timer?.cancel();
    return super.close();
  }
}
