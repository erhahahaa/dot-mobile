// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exercise_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateExerciseParamsImpl _$$UpdateExerciseParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateExerciseParamsImpl(
      id: (json['id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      programId: (json['programId'] as num).toInt(),
      mediaId: (json['mediaId'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      repetition: ExerciseUnitValueModel.fromJson(
          json['repetition'] as Map<String, dynamic>),
      sets:
          ExerciseUnitValueModel.fromJson(json['sets'] as Map<String, dynamic>),
      rest:
          ExerciseUnitValueModel.fromJson(json['rest'] as Map<String, dynamic>),
      tempo: ExerciseUnitValueModel.fromJson(
          json['tempo'] as Map<String, dynamic>),
      intensity: ExerciseUnitValueModel.fromJson(
          json['intensity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateExerciseParamsImplToJson(
        _$UpdateExerciseParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
