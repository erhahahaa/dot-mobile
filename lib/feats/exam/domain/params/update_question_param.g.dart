// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionParamsImpl _$$UpdateQuestionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      order: (json['order'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']) ??
          QuestionType.essay,
      question: json['question'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) =>
                  QuestionOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UpdateQuestionParamsImplToJson(
        _$UpdateQuestionParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'examId': instance.examId,
      'mediaId': instance.mediaId,
      'type': _$QuestionTypeEnumMap[instance.type]!,
      'question': instance.question,
      'options': instance.options,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multipleChoice: 'multipleChoice',
  QuestionType.trueFalse: 'trueFalse',
  QuestionType.shortAnswer: 'shortAnswer',
  QuestionType.essay: 'essay',
};
