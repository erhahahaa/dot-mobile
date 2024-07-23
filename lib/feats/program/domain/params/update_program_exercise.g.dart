// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_program_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProgramExerciseParamsImpl _$$UpdateProgramExerciseParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgramExerciseParamsImpl(
      programId: (json['programId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      repetition: (json['repetition'] as num?)?.toInt() ?? 0,
      sets: (json['sets'] as num?)?.toInt() ?? 0,
      rest: (json['rest'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UpdateProgramExerciseParamsImplToJson(
        _$UpdateProgramExerciseParamsImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'name': instance.name,
      'description': instance.description,
      'repetition': instance.repetition,
      'sets': instance.sets,
      'rest': instance.rest,
    };
