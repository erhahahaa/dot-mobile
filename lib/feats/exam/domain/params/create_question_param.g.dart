// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionParamsImpl _$$CreateQuestionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionParamsImpl(
      order: (json['order'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.text,
      question: json['question'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  QuestionOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreateQuestionParamsImplToJson(
        _$CreateQuestionParamsImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'examId': instance.examId,
      'mediaId': instance.mediaId,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'question': instance.question,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.text: 'text',
  QuestionType.numeric: 'numeric',
};
