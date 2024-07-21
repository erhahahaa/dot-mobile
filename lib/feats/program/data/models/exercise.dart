import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class ProgramExerciseModel with _$ProgramExerciseModel {
  const factory ProgramExerciseModel({
    @Default(0) int id,
    @Default(0) int programId,
    int? mediaId,
    @Default('Dot Exercise 0') String name,
    String? description,
    @Default(1) int repetition,
    @Default(1) int sets,
    @Default(0) int rest,
    MediaModel? media,
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
      name: entity.name,
      description: entity.description,
      repetition: entity.repetition,
      sets: entity.sets,
      rest: entity.rest,
      media: entity.media != null ? MediaModel.fromEntity(entity.media!) : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension ProgramExerciseModelX on ProgramExerciseModel {
  ProgramExerciseEntity toEntity() {
    return ProgramExerciseEntity(
      id: id,
      programId: programId,
      mediaId: mediaId,
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
