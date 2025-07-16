part of 'delivery_address_cubit.dart';

@freezed
class UpdateDeliveryAddressState with _$UpdateDeliveryAddressState {
  const factory UpdateDeliveryAddressState({
    @Default('') String country,
    @Default('') String city,
    @Default('') String street,
    @Default('') String house,
    @Default('') String apartment,
    @Default('') String entrance,
    @Default('') String index,
    @Default(true) bool doNewAddress,
  }) = _UpdateDeliveryAddressState;
}
