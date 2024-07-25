// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamModelImpl _$$ExamModelImplFromJson(Map<String, dynamic> json) =>
    _$ExamModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      imageId: (json['imageId'] as num?)?.toInt(),
      title: json['title'] as String? ?? 'DOT Summer Exams',
      description: json['description'] as String? ?? 'Description about exam',
      dueAt: json['dueAt'] == null
          ? null
          : DateTime.parse(json['dueAt'] as String),
      media: json['media'] == null
          ? null
          : MediaEmbedModel.fromJson(json['media'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ExamModelImplToJson(_$ExamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'imageId': instance.imageId,
      'title': instance.title,
      'description': instance.description,
      'dueAt': instance.dueAt?.toIso8601String(),
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
