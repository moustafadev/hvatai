// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num?)?.toInt(),
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      floor: json['floor'] as String?,
      apartment: json['apartment'] as String?,
      frontDoor: json['frontDoor'] as String?,
      intercomCode: json['intercomCode'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      isPrimary: (json['is_primary'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'floor': instance.floor,
      'apartment': instance.apartment,
      'frontDoor': instance.frontDoor,
      'intercomCode': instance.intercomCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_primary': instance.isPrimary,
    };
