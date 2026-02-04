import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/stream/domain/usecases/get_stream_comments_usecase.dart';
import 'package:hvatai/features/stream/data/models/stream_comment/stream_comment_model.dart';

part 'ended_stream_cubit.freezed.dart';
part 'ended_stream_state.dart';

class EndedStreamCubit extends Cubit<EndedStreamState> {
  EndedStreamCubit(this._getComments) : super(const EndedStreamState());

  final GetStreamCommentsUsecase _getComments;

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

  void toggleAudio() {
    emit(state.copyWith(isAudioMuted: !state.isAudioMuted));
  }
}
