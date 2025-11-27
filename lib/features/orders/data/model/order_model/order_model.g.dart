// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      uuid: json['uuid'] as String?,
      id: (json['id'] as num?)?.toInt(),
      invoiceNumber: json['invoice_number'] as String?,
      totalAmount: json['total_amount'] as String?,
      status: json['status'] as String?,
      paymentStatus: json['payment_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      createdAt: json['created_at'] as String?,
      address: json['address'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderItemModel>[],
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'id': instance.id,
      'invoice_number': instance.invoiceNumber,
      'total_amount': instance.totalAmount,
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'payment_method': instance.paymentMethod,
      'created_at': instance.createdAt,
      'address': instance.address,
      'items': instance.items,
    };

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      productName: json['product_name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as num?,
      total: json['total'] as num?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
      'image': instance.image,
    };
