part of 'delivery_address_cubit.dart';

@freezed
class DeliveryAddressState with _$DeliveryAddressState {
  const factory DeliveryAddressState({
    @Default(AddressModel()) AddressModel address,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int lastUpdated,
    @Default([]) List<AddressModel> deliveryModel,
  }) = _DeliveryAddressState;
}
