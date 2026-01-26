import 'package:equatable/equatable.dart';

enum AcceptInviteError {
  none,
  codeNotFound,
  codeAlreadyUsed,
}

class AcceptInviteState extends Equatable {
  const AcceptInviteState({
    this.code = '',
    this.isLoading = false,
    this.error = AcceptInviteError.none,
    this.isSuccess = false,
  });

  final String code;
  final bool isLoading;
  final AcceptInviteError error;
  final bool isSuccess;

  bool get hasError => error != AcceptInviteError.none;

  String get errorMessage {
    switch (error) {
      case AcceptInviteError.codeNotFound:
        return 'Код не найден. Проверьте правильнось написания';
      case AcceptInviteError.codeAlreadyUsed:
        return 'Этот код уже был активирован для вашего аккаунта';
      case AcceptInviteError.none:
        return '';
    }
  }

  AcceptInviteState copyWith({
    String? code,
    bool? isLoading,
    AcceptInviteError? error,
    bool? isSuccess,
  }) {
    return AcceptInviteState(
      code: code ?? this.code,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object?> get props => [code, isLoading, error, isSuccess];
}
