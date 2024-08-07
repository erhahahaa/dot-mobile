// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataModelImpl _$$NotificationDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataModelImpl(
      title: json['title'] as String?,
      body: json['body'] as String?,
      type: json['type'] as String?,
      uid: json['id'] as String?,
    );

Map<String, dynamic> _$$NotificationDataModelImplToJson(
        _$NotificationDataModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'type': instance.type,
      'id': instance.uid,
    };
