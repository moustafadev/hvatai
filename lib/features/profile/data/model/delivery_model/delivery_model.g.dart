// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryModelImpl _$$DeliveryModelImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      street: json['street'] as String?,
      city: json['city'] as String?,
      floor: json['Floor'] as String?,
      frontDoor: json['Front_door'] as String?,
      intercomCode: json['Intercom_code'] as String?,
      apartment: json['Apartment'] as String?,
      isPrimary: (json['is_primary'] as num?)?.toInt(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$DeliveryModelImplToJson(_$DeliveryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'street': instance.street,
      'city': instance.city,
      'Floor': instance.floor,
      'Front_door': instance.frontDoor,
      'Intercom_code': instance.intercomCode,
      'Apartment': instance.apartment,
      'is_primary': instance.isPrimary,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
