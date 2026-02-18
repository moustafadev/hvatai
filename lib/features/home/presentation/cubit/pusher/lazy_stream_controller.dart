import 'dart:async';
import 'package:flutter/foundation.dart';

/// A lazy stream controller that creates the underlying StreamController
/// only when first accessed, and auto-disposes when no listeners remain.
class LazyStreamController<T> {
  StreamController<T>? _controller;
  int _listenerCount = 0;
  final Duration _disposeDelay;
  final String? _debugName;

  /// Creates a lazy stream controller.
  ///
  /// [disposeDelay] - Time to wait before disposing after last listener cancels.
  /// [debugName] - Optional name for debug logging.
  LazyStreamController({
    Duration disposeDelay = const Duration(seconds: 5),
    String? debugName,
  })  : _disposeDelay = disposeDelay,
        _debugName = debugName;

  /// Gets the stream, creating the controller if needed.
  Stream<T> get stream {
    _controller ??= StreamController<T>.broadcast(
      onListen: _onListen,
      onCancel: _onCancel,
    );
    return _controller!.stream;
  }

  /// Whether the controller has any listeners.
  bool get hasListener => _controller?.hasListener ?? false;

  /// Whether the controller is closed.
  bool get isClosed => _controller?.isClosed ?? false;

  /// Adds an event to the stream if there are listeners.
  void add(T event) {
    if (_controller != null && _controller!.hasListener) {
      _controller!.add(event);
    }
  }

  /// Adds an event to the stream only if the controller exists and has listeners.
  /// Returns true if the event was added.
  bool tryAdd(T event) {
    if (_controller != null && _controller!.hasListener) {
      _controller!.add(event);
      return true;
    }
    return false;
  }

  void _onListen() {
    _listenerCount++;
    if (_debugName != null) {
      debugPrint('[$_debugName] Listener added (count: $_listenerCount)');
    }
  }

  void _onCancel() {
    _listenerCount--;
    if (_debugName != null) {
      debugPrint('[$_debugName] Listener removed (count: $_listenerCount)');
    }
    _tryDispose();
  }

  void _tryDispose() {
    Future.delayed(_disposeDelay, () {
      if (_listenerCount == 0 && _controller != null) {
        _controller!.close();
        _controller = null;
        if (_debugName != null) {
          debugPrint('[$_debugName] Disposed (no listeners)');
        }
      }
    });
  }

  /// Closes the controller immediately.
  void close() {
    _controller?.close();
    _controller = null;
    _listenerCount = 0;
  }
}

/// Extension to create multiple lazy streams easily
class LazyStreamManager {
  final Map<String, LazyStreamController<dynamic>> _controllers = {};
  final Duration _defaultDisposeDelay;
  final bool _enableDebugLogs;

  LazyStreamManager({
    Duration defaultDisposeDelay = const Duration(seconds: 5),
    bool enableDebugLogs = false,
  })  : _defaultDisposeDelay = defaultDisposeDelay,
        _enableDebugLogs = enableDebugLogs;

  /// Gets or creates a lazy stream controller for the given key.
  LazyStreamController<T> getController<T>(String key) {
    if (!_controllers.containsKey(key)) {
      _controllers[key] = LazyStreamController<T>(
        disposeDelay: _defaultDisposeDelay,
        debugName: _enableDebugLogs ? key : null,
      );
    }
    return _controllers[key] as LazyStreamController<T>;
  }

  /// Gets the stream for the given key.
  Stream<T> getStream<T>(String key) => getController<T>(key).stream;

  /// Adds an event to the stream if there are listeners.
  void add<T>(String key, T event) {
    final controller = _controllers[key];
    if (controller != null) {
      (controller as LazyStreamController<T>).add(event);
    }
  }

  /// Tries to add an event. Returns true if added.
  bool tryAdd<T>(String key, T event) {
    final controller = _controllers[key];
    if (controller != null) {
      return (controller as LazyStreamController<T>).tryAdd(event);
    }
    return false;
  }

  /// Closes all controllers.
  void closeAll() {
    for (final controller in _controllers.values) {
      controller.close();
    }
    _controllers.clear();
  }

  /// Closes a specific controller.
  void close(String key) {
    _controllers[key]?.close();
    _controllers.remove(key);
  }
}
