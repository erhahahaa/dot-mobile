import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'evaluation_entity.g.dart';

@collection
class EvaluationEntity {
  Id id = Isar.autoIncrement;
  int examId;
  int clubId;
  int questionId;
  int athleteId;
  int coachId;
  String? answer;
  int? score;
  DateTime? createdAt;
  DateTime? updatedAt;

  // 1:1 relationship
  final exam = IsarLink<ExamEntity>();
  final club = IsarLink<ClubEntity>();
  final question = IsarLink<QuestionEntity>();
  final athlete = IsarLink<UserEntity>();
  final coach = IsarLink<UserEntity>();

  EvaluationEntity({
    this.id = Isar.autoIncrement,
    this.examId = 0,
    this.clubId = 0,
    this.questionId = 0,
    this.athleteId = 0,
    this.coachId = 0,
    this.answer,
    this.score,
    this.createdAt,
    this.updatedAt,
  });
}
