// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateClubParamsImpl _$$UpdateClubParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateClubParamsImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String?,
      type: $enumDecode(_$SportTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$UpdateClubParamsImplToJson(
        _$UpdateClubParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'type': _$SportTypeEnumMap[instance.type]!,
    };

const _$SportTypeEnumMap = {
  SportType.volleyBall: 'volleyBall',
  SportType.basketBall: 'basketBall',
  SportType.soccer: 'soccer',
};
