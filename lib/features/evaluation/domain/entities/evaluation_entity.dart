import 'package:isar/isar.dart';

part 'evaluation_entity.g.dart';

@Collection(accessor: 'evaluations')
class EvaluationEntity {
  final int id;
  int examId;
  int clubId;
  int athleteId;
  int coachId;
  List<QuestionEvaluationEntity> evaluations;
  DateTime? createdAt;
  DateTime? updatedAt;

  EvaluationEntity({
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
  int questionId;
  String? answer;
  int? score;
  String? questionName;

  QuestionEvaluationEntity({
    this.questionId = 0,
    this.answer,
    this.score,
    this.questionName,
  });
}
