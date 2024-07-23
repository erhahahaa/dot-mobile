// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProgramParamsImpl _$$CreateProgramParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProgramParamsImpl(
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      exercises: (json['exercises'] as List<dynamic>?)
              ?.map((e) => CreateProgramExerciseParams.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreateProgramParamsImplToJson(
        _$CreateProgramParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'name': instance.name,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'exercises': instance.exercises,
    };
