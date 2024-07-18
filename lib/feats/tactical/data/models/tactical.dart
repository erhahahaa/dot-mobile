import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tactical.freezed.dart';
part 'tactical.g.dart';

@freezed
class TacticalModel with _$TacticalModel {
  const factory TacticalModel({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
    @Default('') String description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TacticalModel;

  factory TacticalModel.fromJson(Map<String, dynamic> json) =>
      _$TacticalModelFromJson(json);

  static TacticalModel fromEntity(TacticalEntity entity) {
    return TacticalModel(
      id: entity.id,
      clubId: entity.clubId ?? 0,
      sportType: entity.sportType ?? '',
      name: entity.name ?? '',
      description: entity.description ?? '',
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension TacticalModelX on TacticalModel {
  //toEntity
  TacticalEntity toEntity() {
    return TacticalEntity(
      id: id,
      clubId: clubId,
      sportType: sportType,
      name: name,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
