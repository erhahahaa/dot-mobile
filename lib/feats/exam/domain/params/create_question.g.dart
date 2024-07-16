// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionParamsImpl _$$CreateQuestionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionParamsImpl(
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.essay,
      content: json['content'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateQuestionParamsImplToJson(
        _$CreateQuestionParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'examId': instance.examId,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'content': instance.content,
      'answer': instance.answer,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multipleChoice',
  QuestionType.trueFalse: 'trueFalse',
  QuestionType.shortAnswer: 'shortAnswer',
  QuestionType.essay: 'essay',
};
