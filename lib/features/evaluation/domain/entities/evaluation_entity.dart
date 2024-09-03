import 'package:isar/isar.dart';

part 'evaluation_entity.g.dart';

@Collection(accessor: 'evaluations')
class EvaluationEntity {
  final int id;
  final int examId;
  final int clubId;
  final int athleteId;
  final int coachId;
  final List<QuestionEvaluationEntity> evaluations;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const EvaluationEntity({
    this.id = 0,
    this.examId = 0,
    this.clubId = 0,
    this.athleteId = 0,
    this.coachId = 0,
    this.evaluations = const [],
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class QuestionEvaluationEntity {
  final int questionId;
  final String? answer;
  final int? score;
  final String? questionName;

  const QuestionEvaluationEntity({
    this.questionId = 0,
    this.answer,
    this.score,
    this.questionName,
  });
}
