// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      brand: json['brand'] as String?,
      lastFour: json['last_four'] as String?,
      expiryMonth: json['expiry_month'] as String?,
      expiryYear: json['expiry_year'] as String?,
      cardNumber: json['card_number'] as String?,
      expiryDate: json['expiry_date'] as String?,
      cvv: json['cvv'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'last_four': instance.lastFour,
      'expiry_month': instance.expiryMonth,
      'expiry_year': instance.expiryYear,
      'card_number': instance.cardNumber,
      'expiry_date': instance.expiryDate,
      'cvv': instance.cvv,
      'user_id': instance.userId,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
