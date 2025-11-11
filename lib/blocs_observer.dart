import 'dart:developer';

import 'package:bloc/bloc.dart';

class BlocsObserver implements BlocObserver {
  static const int _maxLines = 1000;

  String _truncateToMaxLines(String message) {
    final length = message.length;
    if (length <= _maxLines) {
      return message;
    }
    return message.substring(0, _maxLines);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    final message = 'Change: ${bloc.runtimeType} Change => $change';
    log(_truncateToMaxLines(message));
  }

  @override
  void onClose(BlocBase bloc) {
    final message = 'Closed: ${bloc.runtimeType}';
    log(_truncateToMaxLines(message));
  }

  @override
  void onCreate(BlocBase bloc) {
    final message = 'Created: $bloc';
    log(_truncateToMaxLines(message));
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final message = 'Error: ${bloc.runtimeType} $error // $stackTrace';
    log(_truncateToMaxLines(message));
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    final message = '${bloc.runtimeType} => $event';
    log(_truncateToMaxLines(message));
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
