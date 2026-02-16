import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_favorite_usecase.dart';

part 'toggle_favorite_cubit.freezed.dart';
part 'toggle_favorite_state.dart';

class ToggleFavoriteCubit extends Cubit<ToggleFavoriteState> {
  final ToggleFavoriteUsecase _toggleFavoriteUsecase;

  ToggleFavoriteCubit(this._toggleFavoriteUsecase)
      : super(const ToggleFavoriteState());

  bool isFavorited(int streamId) => state.favoritedStreamIds.contains(streamId);

  /// seed from model once (only if server says true)
  void seedStream(int streamId, {required bool isFavorited}) {
    if (!isFavorited) return;
    if (state.favoritedStreamIds.contains(streamId)) return;
    emit(state.copyWith(
      favoritedStreamIds: {...state.favoritedStreamIds, streamId},
    ));
  }

  Future<void> toggleStreamFavorite(int streamId) async {
    final prev = Set<int>.from(state.favoritedStreamIds);
    final wasFav = prev.contains(streamId);

    // optimistic local update
    final next = Set<int>.from(prev);
    if (wasFav) {
      next.remove(streamId);
    } else {
      next.add(streamId);
    }
    emit(state.copyWith(favoritedStreamIds: next));

    // api
    final result = await _toggleFavoriteUsecase(
      ToggleFavoriteParams(type: 'stream', id: streamId),
    );

    result.fold(
      (error) {
        // rollback to prev
        emit(state.copyWith(favoritedStreamIds: prev));
        showFloatingMessageError(error);
      },
      (_) {
        // success: keep optimistic state
      },
    );
  }

  /// call on logout
  void clear() => emit(const ToggleFavoriteState());
}
