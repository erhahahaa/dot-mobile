import 'dart:math';

import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    @Default(1) int repetition,
    @Default(1) int sets,
    @Default(0) int rest,
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
      repetition: entity.repetition,
      sets: entity.sets,
      rest: entity.rest,
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
      name: BoneMock.name,
      description: BoneMock.subtitle,
      repetition: Random().nextInt(100),
      sets: Random().nextInt(100),
      rest: Random().nextInt(100),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
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
      repetition: repetition,
      sets: sets,
      rest: rest,
      media: media?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
