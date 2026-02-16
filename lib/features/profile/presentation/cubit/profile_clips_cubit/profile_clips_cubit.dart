import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/create_clip/data/models/clip_model/clip_model.dart';
import 'package:hvatai/features/create_clip/domain/usecases/delete_clip_usecase.dart';
import 'package:hvatai/features/create_clip/domain/usecases/get_user_clips_usecase.dart';
import 'package:hvatai/features/create_clip/domain/usecases/update_clip_usecase.dart';
import 'package:video_thumbnail/video_thumbnail.dart' as video_thumbnail;

part 'profile_clips_state.dart';
part 'profile_clips_cubit.freezed.dart';

class ProfileClipsCubit extends Cubit<ProfileClipsState> {
  final GetUserClipsUsecase _getUserClipsUsecase;
  final UpdateClipUsecase _updateClipUsecase;
  final DeleteClipUsecase _deleteClipUsecase;

  ProfileClipsCubit(
    this._getUserClipsUsecase,
    this._updateClipUsecase,
    this._deleteClipUsecase,
  ) : super(const ProfileClipsState());

  Future<void> loadUserClips(int userId) async {
    // Skip if already loaded and clips exist (unless we need to refresh)
    if (!state.isLoadingClips && state.clips.isNotEmpty) {
      return;
    }

    emit(state.copyWith(isLoadingClips: true, errorMessageClips: ''));
    final result = await _getUserClipsUsecase(userId);
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingClips: false,
        errorMessageClips: failure,
      )),
      (response) async {
        emit(state.copyWith(
          isLoadingClips: false,
          clips: response.data,
          clipsPagination: response.pagination,
          errorMessageClips: '',
        ));

        // Generate thumbnails for clips that don't have cached thumbnails
        await _generateThumbnailsForClips(response.data);
      },
    );
  }

  Future<void> _generateThumbnailsForClips(List<ClipModel> clips) async {
    final Map<int, Uint8List> newThumbnails = Map.from(state.clipThumbnails);
    bool hasNewThumbnails = false;

    for (final clip in clips) {
      // Skip if thumbnail already cached
      if (newThumbnails.containsKey(clip.id) || clip.videoUrl.isEmpty) {
        continue;
      }

      try {
        final thumbnail = await video_thumbnail.VideoThumbnail.thumbnailData(
          video: clip.videoUrl,
          imageFormat: video_thumbnail.ImageFormat.JPEG,
          timeMs: 1000,
          quality: 75,
        );

        if (thumbnail != null) {
          newThumbnails[clip.id] = thumbnail;
          hasNewThumbnails = true;
        }
      } catch (e) {
        debugPrint('Error generating thumbnail for clip ${clip.id}: $e');
      }
    }

    if (hasNewThumbnails) {
      emit(state.copyWith(clipThumbnails: newThumbnails));
    }
  }

  Uint8List? getClipThumbnail(int clipId) {
    return state.clipThumbnails[clipId];
  }

  void clearThumbnails() {
    emit(state.copyWith(clipThumbnails: const {}));
  }

  void openClipSettings(ClipModel clip) {
    emit(state.copyWith(
      editingClip: clip,
      editingClipName: clip.name,
      editingClipStatus: clip.status,
      isUpdatingClip: false,
      isDeletingClip: false,
    ));
  }

  void closeClipSettings() {
    emit(state.copyWith(
      editingClip: null,
      editingClipName: '',
      editingClipStatus: false,
      isUpdatingClip: false,
      isDeletingClip: false,
    ));
  }

  void updateEditingClipName(String name) {
    emit(state.copyWith(editingClipName: name));
  }

  void updateEditingClipStatus(bool status) {
    emit(state.copyWith(editingClipStatus: status));
  }

  Future<void> saveClip() async {
    final clip = state.editingClip;
    if (clip == null || state.editingClipName.trim().isEmpty) {
      return;
    }

    emit(state.copyWith(isUpdatingClip: true));

    final result = await _updateClipUsecase(
      UpdateClipParams(
        clipId: clip.id,
        name: state.editingClipName.trim(),
        status: state.editingClipStatus,
      ),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isUpdatingClip: false));
        showFloatingMessageError(failure);
      },
      (updatedClip) {
        // Update the clip in the list
        final updatedClips = state.clips.map((c) {
          if (c.id == clip.id) {
            return updatedClip;
          }
          return c;
        }).toList();

        emit(state.copyWith(
          clips: updatedClips,
          isUpdatingClip: false,
          editingClip: null,
          editingClipName: '',
          editingClipStatus: false,
        ));
        showFloatingMessageSuccess('Клип успешно обновлен');
      },
    );
  }

  Future<void> deleteClip() async {
    final clip = state.editingClip;
    if (clip == null) {
      return;
    }

    emit(state.copyWith(isDeletingClip: true));

    final result = await _deleteClipUsecase(clip.id);

    result.fold(
      (failure) {
        emit(state.copyWith(isDeletingClip: false));
        showFloatingMessageError(failure);
      },
      (_) {
        // Remove the clip from the list
        final updatedClips = state.clips.where((c) => c.id != clip.id).toList();

        // Remove thumbnail from cache
        final updatedThumbnails =
            Map<int, Uint8List>.from(state.clipThumbnails);
        updatedThumbnails.remove(clip.id);

        emit(state.copyWith(
          clips: updatedClips,
          clipThumbnails: updatedThumbnails,
          isDeletingClip: false,
          editingClip: null,
          editingClipName: '',
          editingClipStatus: false,
        ));
        showFloatingMessageSuccess('Клип успешно удален');
      },
    );
  }

  @override
  Future<void> close() async {
    clearThumbnails();
    return super.close();
  }
}
