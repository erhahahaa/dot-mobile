// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_program_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProgramParamsImpl _$$UpdateProgramParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgramParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      exercises: (json['exercises'] as List<dynamic>?)
              ?.map((e) => UpdateProgramExerciseParams.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UpdateProgramParamsImplToJson(
        _$UpdateProgramParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'exercises': instance.exercises,
    };
