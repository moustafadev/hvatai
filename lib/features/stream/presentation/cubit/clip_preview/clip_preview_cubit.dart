import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:video_player/video_player.dart';

part 'clip_preview_cubit.freezed.dart';
part 'clip_preview_state.dart';

class ClipPreviewCubit extends Cubit<ClipPreviewState> {
  ClipPreviewCubit({
    required String videoUrl,
    this.backgroundController,
    this.sharedController,
  })  : _videoUrl = videoUrl,
        super(const ClipPreviewState()) {
    // Auto-download when cubit is created
    downloadForEditing();
  }

  final String _videoUrl;
  final VideoPlayerController? backgroundController;
  final VideoPlayerController? sharedController;
  String? _tempVideoPath;

  Future<void> downloadForEditing() async {
    // If already downloaded, return
    if (state.tempVideoPath != null && state.tempVideoPath!.isNotEmpty) {
      return;
    }

    emit(state.copyWith(isDownloading: true, errorMessage: ''));

    try {
      // Resolve URL (support relative paths)
      var resolvedUrl = _videoUrl.trim();
      if (!resolvedUrl.startsWith('http://') &&
          !resolvedUrl.startsWith('https://')) {
        resolvedUrl = '${ServerConfig.domenStorage}$resolvedUrl';
      }

      // Build headers with token if available
      final appLocal = locator<AppLocal>();
      final token = appLocal.getToken();
      final headers = <String, String>{
        'Accept': '*/*',
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      };
      if (token != null && token.isNotEmpty && token != 'null') {
        headers['Authorization'] = 'Bearer $token';
      }

      // Download video to temporary directory
      final tempDir = await getTemporaryDirectory();
      final fileName =
          'temp_file_khavati_${DateTime.now().millisecondsSinceEpoch}.mp4';
      final tempPath = p.join(tempDir.path, fileName);
      final file = File(tempPath);

      final response = await http.get(
        Uri.parse(resolvedUrl),
        headers: headers,
      );
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      // Validate response has content
      if (response.bodyBytes.isEmpty) {
        throw Exception('Downloaded file is empty');
      }

      await file.writeAsBytes(response.bodyBytes);
      _tempVideoPath = tempPath;

      debugPrint('✅ Video downloaded temporarily: $tempPath');
      emit(state.copyWith(
        isDownloading: false,
        tempVideoPath: tempPath,
        errorMessage: '',
      ));
    } catch (e) {
      debugPrint('❌ Error downloading video for editing: $e');
      showFloatingMessageError('Ошибка загрузки видео');
      emit(state.copyWith(
        isDownloading: false,
        errorMessage: 'Error downloading video: $e',
      ));
    }
  }

  Future<void> saveToDownloads() async {
    emit(state.copyWith(isSaving: true, errorMessage: ''));

    try {
      // Resolve URL (support relative paths)
      var resolvedUrl = _videoUrl.trim();
      if (!resolvedUrl.startsWith('http://') &&
          !resolvedUrl.startsWith('https://')) {
        resolvedUrl = '${ServerConfig.domenStorage}$resolvedUrl';
      }

      // Build headers with token if available
      final appLocal = locator<AppLocal>();
      final token = appLocal.getToken();
      final headers = <String, String>{
        'Accept': '*/*',
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      };
      if (token != null && token.isNotEmpty && token != 'null') {
        headers['Authorization'] = 'Bearer $token';
      }

      // Download video
      final response = await http.get(
        Uri.parse(resolvedUrl),
        headers: headers,
      );
      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      // Validate response has content
      if (response.bodyBytes.isEmpty) {
        throw Exception('Downloaded file is empty');
      }

      // Save to downloads directory
      final dir = await getApplicationDocumentsDirectory();
      final targetPath = p.join(
        dir.path,
        'clip_${DateTime.now().millisecondsSinceEpoch}.mp4',
      );
      final file = File(targetPath);
      await file.writeAsBytes(response.bodyBytes);

      showFloatingMessageSuccess('Клип сохранён');
      emit(state.copyWith(
        isSaving: false,
        saveSuccessMessage: '',
      ));
    } catch (e) {
      debugPrint('clip save error: $e');
      showFloatingMessageError('Ошибка сохранения клипа');
      emit(state.copyWith(
        isSaving: false,
        errorMessage: '',
      ));
    }
  }

  void openEditor(BuildContext context, VideoPlayerController controller) {
    // Navigate with shared controller and video path
    // Pass tempVideoPath if available, otherwise pass the original URL
    context.push(
      AppRoutes.editVideo,
      extra: {
        'videoUrl': state.tempVideoPath ?? _videoUrl,
        'sharedController': controller,
        'tempVideoPath': state.tempVideoPath, // Pass temp path for cleanup
      },
    );
  }

  @override
  Future<void> close() {
    // Clean up temp file if exists
    if (_tempVideoPath != null) {
      try {
        final file = File(_tempVideoPath!);
        if (file.existsSync()) {
          file.deleteSync();
          debugPrint('🗑️ Deleted temp video file: $_tempVideoPath');
        }
      } catch (e) {
        debugPrint('⚠️ Error deleting temp video file: $e');
      }
    }
    return super.close();
  }
}
