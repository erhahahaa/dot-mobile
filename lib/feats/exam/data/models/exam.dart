import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam.freezed.dart';
part 'exam.g.dart';

@freezed
class ExamModel with _$ExamModel {
  const factory ExamModel({
    @Default(0) int id,
    @Default(0) int clubId,
    int? imageId,
    @Default('DOT Summer Exams') String title,
    @Default('Description about exam') String description,
    DateTime? dueAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ExamModel;

  factory ExamModel.fromJson(Map<String, dynamic> json) =>
      _$ExamModelFromJson(json);

  static ExamModel fromEntity(ExamEntity entity) {
    return ExamModel(
      id: entity.id,
      clubId: entity.clubId,
      title: entity.title,
      description: entity.description,
      dueAt: entity.dueAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension ExamModelX on ExamModel {
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
