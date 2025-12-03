part of 'add_address_cubit.dart';

@freezed
class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    @Default(AddressModel()) AddressModel address,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int lastUpdated,
  }) = _AddAddressState;
}
