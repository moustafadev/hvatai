part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(false) bool isLoading,
    @Default('') String gender,
    @Default('') String country,
  }) = _EditProfileState;
}
