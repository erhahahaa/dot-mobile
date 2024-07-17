// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateClubParamsImpl _$$CreateClubParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateClubParamsImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String? ??
          'https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg',
    );

Map<String, dynamic> _$$CreateClubParamsImplToJson(
        _$CreateClubParamsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
