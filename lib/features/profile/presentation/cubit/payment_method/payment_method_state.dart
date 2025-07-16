part of 'payment_method_cubit.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState({
    @Default('') String cardNumber,
    @Default('') String cardName,
    @Default('') String cardDate,
    @Default('') String cardCvv,
    @Default(true) bool doMainMethod,
  }) = _PaymentMethodState;
}
