import 'package:flutter/foundation.dart';

class EventBus {
  static final EventBus _instance = EventBus._internal();
  factory EventBus() => _instance;
  EventBus._internal();

  final Map<Type, List<Function>> _listeners = {};

  void subscribe<T>(Function(T) listener) {
    _listeners[T] ??= [];
    _listeners[T]!.add(listener);
  }

  void unsubscribe<T>(Function(T) listener) {
    _listeners[T]?.remove(listener);
  }

  void publish<T>(T event) {
    _listeners[T]?.forEach((listener) => listener(event));
  }
}
