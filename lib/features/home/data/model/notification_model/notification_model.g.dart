// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      companyName: json['companyName'] as String?,
      timeNotification: json['timeNotification'] as String?,
      titleNotification: json['titleNotification'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'timeNotification': instance.timeNotification,
      'titleNotification': instance.titleNotification,
    };
