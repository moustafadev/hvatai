import 'dart:io';
import 'package:path_provider/path_provider.dart';

class TempVideoCleaner {
  static const prefix = 'temp_file_khavati';

  static Future<void> cleanupAllMatching() async {
    final dir = await getTemporaryDirectory();

    final entities = dir.listSync(followLinks: false);

    for (final e in entities) {
      if (e is! File) continue;

      final name = e.uri.pathSegments.isNotEmpty ? e.uri.pathSegments.last : '';
      final lower = name.toLowerCase();

      final match =
          lower.startsWith(prefix.toLowerCase()) && lower.endsWith('.mp4');
      if (!match) continue;

      try {
        await e.delete();
      } catch (_) {
        // ignore errors (file locked, etc.)
      }
    }
  }
}
