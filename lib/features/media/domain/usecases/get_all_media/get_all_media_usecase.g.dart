// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_media_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllMediaParamsImpl _$$GetAllMediaParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllMediaParamsImpl(
      parent: $enumDecode(_$MediaParentEnumMap, json['parent']),
      clubId: (json['clubId'] as num).toInt(),
    );

Map<String, dynamic> _$$GetAllMediaParamsImplToJson(
        _$GetAllMediaParamsImpl instance) =>
    <String, dynamic>{
      'parent': _$MediaParentEnumMap[instance.parent]!,
      'clubId': instance.clubId,
    };

const _$MediaParentEnumMap = {
  MediaParent.club: 'club',
  MediaParent.program: 'program',
  MediaParent.exercise: 'exercise',
  MediaParent.exam: 'exam',
  MediaParent.question: 'question',
  MediaParent.tactical: 'tactical',
  MediaParent.user: 'user',
};
