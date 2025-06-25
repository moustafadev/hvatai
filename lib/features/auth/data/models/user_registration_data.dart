import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_data.freezed.dart';

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? gender,
    String? country,
    String? city,
    String? street,
    String? house,
    String? apartment,
    String? entrance,
    String? index,
    @Default(false) bool isSignUpWithGoogle,
    List<String>? interests, // <== Add this
    List<String>? detailedInterests,
  }) = _UserRegistrationData;
}
