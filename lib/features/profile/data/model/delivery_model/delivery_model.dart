import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
class DeliveryModel with _$DeliveryModel {
  const factory DeliveryModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? street,
    String? city,
    @JsonKey(name: 'Floor') String? floor,
    @JsonKey(name: 'Front_door') String? frontDoor,
    @JsonKey(name: 'Intercom_code') String? intercomCode,
    @JsonKey(name: 'Apartment') String? apartment,
    @JsonKey(name: 'is_primary') int? isPrimary,
    String? latitude,
    String? longitude,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryModelFromJson(json);
}
