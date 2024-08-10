import 'dart:math';

import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
class ProgramExerciseModel with _$ProgramExerciseModel {
  const factory ProgramExerciseModel({
    @Default(0) int id,
    @Default(0) int programId,
    int? mediaId,
    @Default(0) int order,
    @Default('Dot Exercise 0') String name,
    String? description,
    ProgramUnitValueModel? repetition,
    ProgramUnitValueModel? sets,
    ProgramUnitValueModel? rest,
    ProgramUnitValueModel? tempo,
    ProgramUnitValueModel? intensity,
    MediaEmbedModel? media,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProgramExerciseModel;

  factory ProgramExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramExerciseModelFromJson(json);

  static ProgramExerciseModel fromEntity(ProgramExerciseEntity entity) {
    return ProgramExerciseModel(
      id: entity.id,
      programId: entity.programId,
      mediaId: entity.mediaId,
      order: entity.order,
      name: entity.name,
      description: entity.description,
      repetition: entity.repetition != null
          ? ProgramUnitValueModel.fromEntity(entity.repetition!)
          : null,
      sets: entity.sets != null
          ? ProgramUnitValueModel.fromEntity(entity.sets!)
          : null,
      rest: entity.rest != null
          ? ProgramUnitValueModel.fromEntity(entity.rest!)
          : null,
      tempo: entity.tempo != null
          ? ProgramUnitValueModel.fromEntity(entity.tempo!)
          : null,
      intensity: entity.intensity != null
          ? ProgramUnitValueModel.fromEntity(entity.intensity!)
          : null,
      media: entity.media != null
          ? MediaEmbedModel.fromEntity(entity.media!)
          : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static ProgramExerciseModel fake() {
    return ProgramExerciseModel(
      id: Random().nextInt(100),
      programId: Random().nextInt(100),
      mediaId: Random().nextInt(100),
      order: Random().nextInt(100),
      name: 'asdasd',
      description: 'asdasd',
      repetition: ProgramUnitValueModel.fake(),
      sets: ProgramUnitValueModel.fake(),
      rest: ProgramUnitValueModel.fake(),
      tempo: ProgramUnitValueModel.fake(),
      intensity: ProgramUnitValueModel.fake(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      media: MediaEmbedModel.fake(),
    );
  }
}

extension ProgramExerciseModelX on ProgramExerciseModel {
  ProgramExerciseEntity toEntity() {
    return ProgramExerciseEntity(
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
      media: media?.toEntity(),
      intensity: intensity?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@freezed
class ProgramUnitValueModel with _$ProgramUnitValueModel {
  const factory ProgramUnitValueModel({
    String? unit,
    @Default(0) int value,
  }) = _ProgramUnitValueModel;

  factory ProgramUnitValueModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramUnitValueModelFromJson(json);

  static ProgramUnitValueModel fromEntity(ProgramUnitValueEntity entity) {
    return ProgramUnitValueModel(
      unit: entity.unit,
      value: entity.value,
    );
  }

  static ProgramUnitValueModel fake() {
    return ProgramUnitValueModel(
      unit: 'asdfa',
      value: Random().nextInt(100),
    );
  }
}

extension ProgramUnitValueModelX on ProgramUnitValueModel {
  ProgramUnitValueEntity toEntity() {
    return ProgramUnitValueEntity(
      unit: unit,
      value: value,
    );
  }
}
