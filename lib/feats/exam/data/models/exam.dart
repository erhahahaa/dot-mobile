import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

@freezed
class ExamModel with _$ExamModel {
  const factory ExamModel({
    @Default(0) int id,
    @JsonKey(name: 'club_id') @Default(0) int clubId,
    @Default('') String title,
    @Default('') String description,
    @JsonKey(name: 'due_at') DateTime? dueAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ExamModel;

  factory ExamModel.fromJson(Map<String, dynamic> json) =>
      _$ExamModelFromJson(json);

  static ExamModel fromEntity(ExamEntity entity) {
    return ExamModel(
      id: entity.id,
      clubId: entity.clubId ?? 0,
      title: entity.title ?? '',
      description: entity.description ?? '',
      dueAt: entity.dueAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension ExamModelX on ExamModel {
  //toEntity
  ExamEntity toEntity() {
    return ExamEntity(
      id: id,
      clubId: clubId,
      title: title,
      description: description,
      dueAt: dueAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
