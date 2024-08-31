import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    @Default(0) int id,
    @Default(0) int programId,
    int? mediaId,
    @Default(0) int order,
    @Default('Dot Exercise 0') String name,
    String? description,
    ExerciseUnitValueModel? repetition,
    ExerciseUnitValueModel? sets,
    ExerciseUnitValueModel? rest,
    ExerciseUnitValueModel? tempo,
    ExerciseUnitValueModel? intensity,
    MediaModel? media,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ExerciseModel;

  const ExerciseModel._();

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  static ExerciseModel fromEntity(ExerciseEntity entity) {
    return ExerciseModel(
      id: entity.id,
      programId: entity.programId,
      mediaId: entity.mediaId,
      order: entity.order,
      name: entity.name,
      description: entity.description,
      repetition: entity.repetition != null
          ? ExerciseUnitValueModel.fromEntity(entity.repetition!)
          : null,
      sets: entity.sets != null
          ? ExerciseUnitValueModel.fromEntity(entity.sets!)
          : null,
      rest: entity.rest != null
          ? ExerciseUnitValueModel.fromEntity(entity.rest!)
          : null,
      tempo: entity.tempo != null
          ? ExerciseUnitValueModel.fromEntity(entity.tempo!)
          : null,
      intensity: entity.intensity != null
          ? ExerciseUnitValueModel.fromEntity(entity.intensity!)
          : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  ExerciseEntity toEntity() {
    return ExerciseEntity(
      id: id,
      programId: programId,
      mediaId: mediaId,
      order: order,
      name: name,
      description: description,
      repetition: repetition?.toEntity(),
      sets: sets?.toEntity(),
      rest: rest?.toEntity(),
      tempo: tempo?.toEntity(),
      intensity: intensity?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static ExerciseModel fake() {
    return ExerciseModel(
      id: Random().nextInt(100),
      programId: Random().nextInt(100),
      mediaId: Random().nextInt(100),
      order: Random().nextInt(100),
      name: 'asdasd',
      description: 'asdasd',
      repetition: ExerciseUnitValueModel.fake(),
      sets: ExerciseUnitValueModel.fake(),
      rest: ExerciseUnitValueModel.fake(),
      tempo: ExerciseUnitValueModel.fake(),
      intensity: ExerciseUnitValueModel.fake(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      media: MediaModel.fake(),
    );
  }
}

@freezed
class ExerciseUnitValueModel with _$ExerciseUnitValueModel {
  factory ExerciseUnitValueModel({
    String? unit,
    @Default(0) int value,
  }) = _ExerciseUnitValueModel;

  ExerciseUnitValueModel._();

  factory ExerciseUnitValueModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseUnitValueModelFromJson(json);

  static ExerciseUnitValueModel fromEntity(ExerciseUnitValueEntity entity) {
    return ExerciseUnitValueModel(
      unit: entity.unit,
      value: entity.value,
    );
  }

  ExerciseUnitValueEntity toEntity() {
    return ExerciseUnitValueEntity(
      unit: unit,
      value: value,
    );
  }

  static ExerciseUnitValueModel fake() {
    return ExerciseUnitValueModel(
      unit: 'asdfa',
      value: Random().nextInt(100),
    );
  }
}
