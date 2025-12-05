part of 'payment_method_cubit.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState({
    @Default([]) List<CardModel> cards,
    required CardModel addCard,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(true) bool doMainMethod,
  }) = _PaymentMethodState;
}
