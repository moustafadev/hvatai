part of 'name_cubit.dart';

@freezed
class NameState with _$NameState {
  const factory NameState({
    @Default('') String name,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _NameState;
}
