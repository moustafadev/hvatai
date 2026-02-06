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
import 'package:hvatai/core/widgets/video_thumbnail_player.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:video_player/video_player.dart';

part 'clip_preview_cubit.freezed.dart';
part 'clip_preview_state.dart';

class ClipPreviewCubit extends Cubit<ClipPreviewState> {
  ClipPreviewCubit({
    required String videoUrl,
    this.backgroundController,
  })  : _videoUrl = videoUrl,
        super(const ClipPreviewState());

  final String _videoUrl;
  final VideoPlayerController? backgroundController;

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

  void openEditor(BuildContext context) {
    // Resolve URL (support relative paths)
    var resolvedUrl = _videoUrl.trim();
    if (!resolvedUrl.startsWith('http://') &&
        !resolvedUrl.startsWith('https://')) {
      resolvedUrl = '${ServerConfig.domenStorage}$resolvedUrl';
    }

    // Pause background video to release MediaCodec resources
    backgroundController?.pause();
   // Navigate to edit screen without closing the bottom sheet
    context.push(
      AppRoutes.editVideo,
      extra: {
        'videoUrl': resolvedUrl,
      },
    );
  }
}
