// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvaluationModelImpl _$$EvaluationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvaluationModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      athleteId: (json['athleteId'] as num?)?.toInt() ?? 0,
      coachId: (json['coachId'] as num?)?.toInt() ?? 0,
      evaluations: (json['evaluations'] as List<dynamic>?)
              ?.map((e) =>
                  QuestionEvaluationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exam: json['exam'] == null
          ? null
          : ExamModel.fromJson(json['exam'] as Map<String, dynamic>),
      athlete: json['athlete'] == null
          ? null
          : UserModel.fromJson(json['athlete'] as Map<String, dynamic>),
      coach: json['coach'] == null
          ? null
          : UserModel.fromJson(json['coach'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EvaluationModelImplToJson(
        _$EvaluationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'clubId': instance.clubId,
      'athleteId': instance.athleteId,
      'coachId': instance.coachId,
      'evaluations': instance.evaluations,
      'exam': instance.exam,
      'athlete': instance.athlete,
      'coach': instance.coach,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$QuestionEvaluationModelImpl _$$QuestionEvaluationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionEvaluationModelImpl(
      questionId: (json['questionId'] as num?)?.toInt() ?? 0,
      answer: json['answer'] as String?,
      score: (json['score'] as num?)?.toInt(),
      questionName: json['questionName'] as String?,
    );

Map<String, dynamic> _$$QuestionEvaluationModelImplToJson(
        _$QuestionEvaluationModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answer': instance.answer,
      'score': instance.score,
      'questionName': instance.questionName,
    };
