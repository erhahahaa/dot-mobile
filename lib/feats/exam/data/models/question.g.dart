// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.essay,
      content: json['content'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'examId': instance.examId,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'content': instance.content,
      'answer': instance.answer,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multipleChoice',
  QuestionType.trueFalse: 'trueFalse',
  QuestionType.shortAnswer: 'shortAnswer',
  QuestionType.essay: 'essay',
};
