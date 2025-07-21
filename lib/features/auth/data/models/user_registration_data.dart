import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_data.freezed.dart';
part 'user_registration_data.g.dart';

@freezed
class UserRegistrationData with _$UserRegistrationData {
  const factory UserRegistrationData({
    // بيانات التسجيل
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? gender,

    // بيانات OTP

    String? token,

    // بيانات العنوان
    String? country,
    String? city,
    String? street,
    String? house,
    String? apartment,
    String? entrance,
    String? index,

    // بيانات الاهتمامات
    List<String>? interests,
    List<String>? detailedInterests,

    // شروط الاستخدام
    bool? isAbove18,
    bool? agreedToTerms,
  }) = _UserRegistrationData;

  factory UserRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationDataFromJson(json);
}
