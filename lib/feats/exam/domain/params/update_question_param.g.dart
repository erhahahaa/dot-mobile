// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionParamsImpl _$$UpdateQuestionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.essay,
      content: json['content'] as String? ?? '',
      answer: json['answer'] as String? ?? '',
    );

Map<String, dynamic> _$$UpdateQuestionParamsImplToJson(
        _$UpdateQuestionParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
