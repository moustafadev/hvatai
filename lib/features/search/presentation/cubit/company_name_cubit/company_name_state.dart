import 'package:equatable/equatable.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';

class CompanyNameState extends Equatable {
  const CompanyNameState({
    this.isLoading = false,
    this.errorMessage = '',
    this.user,
    this.isSubscribed = false,
    this.isToggleLoading = false,
  });

  final bool isLoading;
  final String errorMessage;
  final UserDataModel? user;
  final bool isSubscribed;
  final bool isToggleLoading;

  CompanyNameState copyWith({
    bool? isLoading,
    String? errorMessage,
    UserDataModel? user,
    bool? isSubscribed,
    bool? isToggleLoading,
  }) {
    return CompanyNameState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
      isSubscribed: isSubscribed ?? this.isSubscribed,
      isToggleLoading: isToggleLoading ?? this.isToggleLoading,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        isLoading,
        errorMessage,
        user,
        isSubscribed,
        isToggleLoading,
      ];
}
