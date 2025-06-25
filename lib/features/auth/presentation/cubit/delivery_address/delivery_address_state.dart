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
  }) = _DeliveryAddressState;
}
