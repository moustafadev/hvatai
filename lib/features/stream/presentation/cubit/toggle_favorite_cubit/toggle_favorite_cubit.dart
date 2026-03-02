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
  void seedStream(
    int streamId, {
    required bool isFavorited,
    required int initialCount,
  }) {
    final newFavIds = Set<int>.from(state.favoritedStreamIds);
    final newCounts = Map<int, int>.from(state.streamFavoriteCounts);

    if (isFavorited) {
      newFavIds.add(streamId);
    }

    newCounts[streamId] = initialCount;

    emit(state.copyWith(
      favoritedStreamIds: newFavIds,
      streamFavoriteCounts: newCounts,
    ));
  }

  Future<void> toggleStreamFavorite(int streamId) async {
    final prevIds = Set<int>.from(state.favoritedStreamIds);
    final prevCounts = Map<int, int>.from(state.streamFavoriteCounts);

    final wasFav = prevIds.contains(streamId);

    final newIds = Set<int>.from(prevIds);
    final newCounts = Map<int, int>.from(prevCounts);

    final currentCount = newCounts[streamId] ?? 0;

    if (wasFav) {
      newIds.remove(streamId);
      newCounts[streamId] = (currentCount - 1).clamp(0, 999999);
    } else {
      newIds.add(streamId);
      newCounts[streamId] = currentCount + 1;
    }

    emit(state.copyWith(
      favoritedStreamIds: newIds,
      streamFavoriteCounts: newCounts,
    ));

    final result = await _toggleFavoriteUsecase(
      ToggleFavoriteParams(type: 'stream', id: streamId),
    );

    result.fold(
      (error) {
        // rollback
        emit(state.copyWith(
          favoritedStreamIds: prevIds,
          streamFavoriteCounts: prevCounts,
        ));
        showFloatingMessageError(error);
      },
      (_) {},
    );
  }

  /// call on logout
  void clear() => emit(const ToggleFavoriteState());
}
