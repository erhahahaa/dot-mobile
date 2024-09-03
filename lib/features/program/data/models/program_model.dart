import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'program_model.freezed.dart';
part 'program_model.g.dart';

@freezed
class ProgramModel extends ProgramEntity with _$ProgramModel {
  const factory ProgramModel({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('DOT Sport') String name,
    DateTime? startDate,
    DateTime? endDate,
    MediaModel? media,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProgramModel;

  const ProgramModel._();

  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);

  static ProgramModel fromEntity(ProgramEntity entity) {
    return ProgramModel(
      id: entity.id,
      clubId: entity.clubId,
      name: entity.name,
      startDate: entity.startDate,
      endDate: entity.endDate,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  ProgramEntity toEntity() {
    return ProgramEntity(
      id: id,
      clubId: clubId,
      name: name,
      startDate: startDate,
      endDate: endDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static ProgramModel fake() {
    return ProgramModel(
      id: Random().nextInt(100),
      clubId: Random().nextInt(100),
      name: BoneMock.name,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      media: MediaModel.fake(),
    );
  }
}
