import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    String? brand,
    @JsonKey(name: 'last_four') String? lastFour,
    @JsonKey(name: 'expiry_month') String? expiryMonth,
    @JsonKey(name: 'expiry_year') String? expiryYear,
    @JsonKey(name: 'card_number') String? cardNumber,
    @JsonKey(name: 'expiry_date') String? expiryDate,
    String? cvv,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    int? id,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}
