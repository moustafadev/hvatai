import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/locator.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

class PusherManager {
  PusherClient? _pusher;

  /// Create and connect to Pusher with fresh token
  PusherClient initializePusher() {
    final token = locator<AppLocal>().getToken();

    _pusher = PusherClient(
      options: PusherOptions(
        key: 'uokyfuuczemhtftlo3uk',
        host: 'khvatai.ru',
        wsPort: 8443, // Used when encrypted is false
        wssPort: 8443, // <-- ADD THIS LINE. Used when encrypted is true
        encrypted: true,
        cluster: '',
        enableLogging: true,
        autoConnect: true,
        authOptions: PusherAuthOptions(
          '${ServerConfig.domen}api/broadcasting/auth',
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
        ),
        parameters: {
          'client': 'pusher-client-socket-dart',
          'protocol': '7',
          'version': '0.0.2',
          'flash': 'false',
        },
      ),
    );
    return _pusher!;
  }

  /// Disconnect and clean up
  void dispose() {
    _pusher?.disconnect();
    _pusher = null;
  }
}
