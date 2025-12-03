part of 'edit_address_cubit.dart';

@freezed
class EditAddressState with _$EditAddressState {
  const factory EditAddressState({
    required UserRegistrationData user,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int lastUpdated,
    @Default([]) List<UserRegistrationData> deliveryModel,
  }) = _EditAddressState;
}
