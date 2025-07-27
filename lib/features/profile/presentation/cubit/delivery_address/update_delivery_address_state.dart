part of 'update_delivery_address_cubit.dart';

@freezed
class UpdateDeliveryAddressState with _$UpdateDeliveryAddressState {
  const factory UpdateDeliveryAddressState({
    @Default(true) bool doNewAddress,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<UserRegistrationData> deliveryModel,
    @Default(0) int lastUpdated,
    required UserRegistrationData user,
  }) = _UpdateDeliveryAddressState;
}
