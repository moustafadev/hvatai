part of 'delivery_address_cubit.dart';

@freezed
class DeliveryAddressState with _$DeliveryAddressState {
  const factory DeliveryAddressState({
    @Default('') String country,
    @Default('') String city,
    @Default('') String street,
    @Default('') String house,
    @Default('') String apartment,
    @Default('') String entrance,
    @Default('') String index,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    required UserRegistrationData user,
  }) = _DeliveryAddressState;
}

extension DeliveryAddressStateMapper on DeliveryAddressState {
  DeliveryAddressParams toUserDeliveryAddressData() {
    return DeliveryAddressParams(
      street: street,
      house: house,
      apartment: apartment,
      entrance: entrance,
      index: index,
      city: city,
    );
  }
}
