// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramExerciseModelImpl _$$ProgramExerciseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramExerciseModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      programId: (json['programId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt(),
      name: json['name'] as String? ?? 'Dot Exercise 0',
      description: json['description'] as String?,
      repetition: (json['repetition'] as num?)?.toInt() ?? 1,
      sets: (json['sets'] as num?)?.toInt() ?? 1,
      rest: (json['rest'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProgramExerciseModelImplToJson(
        _$ProgramExerciseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'programId': instance.programId,
      'mediaId': instance.mediaId,
      'name': instance.name,
      'description': instance.description,
      'repetition': instance.repetition,
      'sets': instance.sets,
      'rest': instance.rest,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
