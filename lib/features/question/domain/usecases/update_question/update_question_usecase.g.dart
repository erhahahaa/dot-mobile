// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionParamsImpl _$$UpdateQuestionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionParamsImpl(
      id: (json['id'] as num).toInt(),
      order: (json['order'] as num).toInt(),
      examId: (json['examId'] as num).toInt(),
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => QuestionOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpdateQuestionParamsImplToJson(
        _$UpdateQuestionParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'examId': instance.examId,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'question': instance.question,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.text: 'text',
  QuestionType.numeric: 'numeric',
};
