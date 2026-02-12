import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/favorites/domain/usecases/toggle_favorite_usecase.dart';

part 'toggle_favorite_cubit.freezed.dart';
part 'toggle_favorite_state.dart';

class ToggleFavoriteCubit extends Cubit<ToggleFavoriteState> {
  final ToggleFavoriteUsecase _toggleFavoriteUsecase;

  ToggleFavoriteCubit(this._toggleFavoriteUsecase)
      : super(const ToggleFavoriteState());

  /// Check if an item is favorited
  bool isFavorited(String type, int id) {
    final typeSet = state.favoritedByType[type] ?? {};
    return typeSet.contains(id);
  }

  /// Toggle favorite for an item with optimistic update
  Future<void> toggleFavorite(String type, int id) async {
    final isCurrentlyFavorited = isFavorited(type, id);
    final updatedByType = Map<String, Set<int>>.from(state.favoritedByType);
    final typeSet = Set<int>.from(updatedByType[type] ?? {});

    // Optimistically update UI immediately
    if (isCurrentlyFavorited) {
      typeSet.remove(id);
    } else {
      typeSet.add(id);
    }
    updatedByType[type] = typeSet;

    emit(state.copyWith(favoritedByType: updatedByType));

    // Make API call in background
    final result = await _toggleFavoriteUsecase(
      ToggleFavoriteParams(type: type, id: id),
    );

    result.fold(
      (error) {
        // Rollback: restore previous favorite state
        final rollbackByType = Map<String, Set<int>>.from(state.favoritedByType);
        final rollbackTypeSet = Set<int>.from(rollbackByType[type] ?? {});
        if (isCurrentlyFavorited) {
          rollbackTypeSet.add(id);
        } else {
          rollbackTypeSet.remove(id);
        }
        rollbackByType[type] = rollbackTypeSet;
        emit(state.copyWith(favoritedByType: rollbackByType));
        showFloatingMessageError(error);
      },
      (_) {
        // Success: state already updated optimistically
      },
    );
  }
}
