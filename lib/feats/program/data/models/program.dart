import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program.freezed.dart';
part 'program.g.dart';

@freezed
class ProgramModel with _$ProgramModel {
  const factory ProgramModel({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProgramModel;

  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);

  static ProgramModel fromEntity(ProgramEntity entity) {
    return ProgramModel(
      id: entity.id,
      clubId: entity.clubId ?? 0,
      sportType: entity.sportType ?? '',
      name: entity.name ?? '',
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension ProgramModelX on ProgramModel {
  //toEntity
  ProgramEntity toEntity() {
    return ProgramEntity(
      id: id,
      clubId: clubId,
      sportType: sportType,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
