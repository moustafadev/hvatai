part of 'delivery_address_cubit.dart';

@freezed
class DeliveryAddressState with _$DeliveryAddressState {
  const factory DeliveryAddressState({
    required UserRegistrationData user,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _DeliveryAddressState;
}
