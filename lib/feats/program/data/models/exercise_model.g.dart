// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramExerciseModelImpl _$$ProgramExerciseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramExerciseModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      programId: (json['programId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'Dot Exercise 0',
      description: json['description'] as String?,
      repetition: json['repetition'] == null
          ? null
          : ProgramUnitValueModel.fromJson(
              json['repetition'] as Map<String, dynamic>),
      sets: json['sets'] == null
          ? null
          : ProgramUnitValueModel.fromJson(
              json['sets'] as Map<String, dynamic>),
      rest: json['rest'] == null
          ? null
          : ProgramUnitValueModel.fromJson(
              json['rest'] as Map<String, dynamic>),
      tempo: json['tempo'] == null
          ? null
          : ProgramUnitValueModel.fromJson(
              json['tempo'] as Map<String, dynamic>),
      intensity: json['intensity'] == null
          ? null
          : ProgramUnitValueModel.fromJson(
              json['intensity'] as Map<String, dynamic>),
      media: json['media'] == null
          ? null
          : MediaEmbedModel.fromJson(json['media'] as Map<String, dynamic>),
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
      'order': instance.order,
      'name': instance.name,
      'description': instance.description,
      'repetition': instance.repetition,
      'sets': instance.sets,
      'rest': instance.rest,
      'tempo': instance.tempo,
      'intensity': instance.intensity,
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$ProgramUnitValueModelImpl _$$ProgramUnitValueModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramUnitValueModelImpl(
      unit: json['unit'] as String?,
      value: (json['value'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProgramUnitValueModelImplToJson(
        _$ProgramUnitValueModelImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'value': instance.value,
    };
