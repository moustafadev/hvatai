// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_request.freezed.dart';
part 'otp_request.g.dart';

@freezed
class OtpRequestResponse with _$OtpRequestResponse {
  const factory OtpRequestResponse({
    @Default('') String message,
    @JsonKey(name: 'otp') @Default('') String otp,
    @JsonKey(name: 'user_id') @Default(0) int userId,
  }) = _OtpRequestResponse;

  factory OtpRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestResponseFromJson(json);
}
