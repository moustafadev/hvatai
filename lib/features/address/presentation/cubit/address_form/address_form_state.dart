part of 'address_form_cubit.dart';


@freezed
class AddressFormState with _$AddressFormState {
  const factory AddressFormState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(0) int lastUpdated,
    @Default(UserRegistrationData()) UserRegistrationData user,
    @Default(AddressFormMode.add) AddressFormMode mode,
  }) = _AddressFormState;
}
