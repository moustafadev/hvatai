import 'package:equatable/equatable.dart';

class PusherState extends Equatable {
  final bool isConnecting;
  final bool isConnected;
  final bool isSubscribed;
  final String? errorMessage;

  const PusherState({
    this.isConnecting = false,
    this.isConnected = false,
    this.isSubscribed = false,
    this.errorMessage,
  });

  PusherState copyWith({
    bool? isConnecting,
    bool? isConnected,
    bool? isSubscribed,
    String? errorMessage,
  }) {
    return PusherState(
      isConnecting: isConnecting ?? this.isConnecting,
      isConnected: isConnected ?? this.isConnected,
      isSubscribed: isSubscribed ?? this.isSubscribed,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [isConnecting, isConnected, isSubscribed, errorMessage];
}
