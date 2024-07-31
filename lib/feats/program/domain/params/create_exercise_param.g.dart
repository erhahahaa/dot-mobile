// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exercise_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProgramExerciseParamsImpl _$$CreateProgramExerciseParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProgramExerciseParamsImpl(
      order: (json['order'] as num?)?.toInt() ?? 0,
      programId: (json['programId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      repetition: json['repetition'] == null
          ? const ProgramUnitValueModel()
          : ProgramUnitValueModel.fromJson(
              json['repetition'] as Map<String, dynamic>),
      sets: json['sets'] == null
          ? const ProgramUnitValueModel()
          : ProgramUnitValueModel.fromJson(
              json['sets'] as Map<String, dynamic>),
      rest: json['rest'] == null
          ? const ProgramUnitValueModel()
          : ProgramUnitValueModel.fromJson(
              json['rest'] as Map<String, dynamic>),
      tempo: json['tempo'] == null
          ? const ProgramUnitValueModel()
          : ProgramUnitValueModel.fromJson(
              json['tempo'] as Map<String, dynamic>),
      intensity: json['intensity'] == null
          ? const ProgramUnitValueModel()
          : ProgramUnitValueModel.fromJson(
              json['intensity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateProgramExerciseParamsImplToJson(
        _$CreateProgramExerciseParamsImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'programId': instance.programId,
      'mediaId': instance.mediaId,
      'name': instance.name,
      'description': instance.description,
      'repetition': instance.repetition,
      'sets': instance.sets,
      'rest': instance.rest,
      'tempo': instance.tempo,
      'intensity': instance.intensity,
    };
