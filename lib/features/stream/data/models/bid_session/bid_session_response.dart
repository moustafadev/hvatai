// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid_session_response.freezed.dart';
part 'bid_session_response.g.dart';

@freezed
class BidSessionResponse with _$BidSessionResponse {
  const factory BidSessionResponse({
    required bool success,
    Map<String, dynamic>? data,
    String? message,
  }) = _BidSessionResponse;

  factory BidSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$BidSessionResponseFromJson(json);
}
