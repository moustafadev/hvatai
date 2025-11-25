// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribed_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscribedUsersResponseImpl _$$SubscribedUsersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribedUsersResponseImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SubscribedUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SubscribedUser>[],
    );

Map<String, dynamic> _$$SubscribedUsersResponseImplToJson(
        _$SubscribedUsersResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$SubscribedUserImpl _$$SubscribedUserImplFromJson(Map<String, dynamic> json) =>
    _$SubscribedUserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SubscribedUserImplToJson(
        _$SubscribedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
    };
