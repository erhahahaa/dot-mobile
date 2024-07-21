import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class ClubModel with _$ClubModel {
  const factory ClubModel({
    @Default(0) int id,
    @Default(0) int creatorId,
    @Default('Indo Sports') String name,
    @Default('Sport Club') String description,
    @Default(SportType.basketBall) SportType type,
    MediaEmbedModel? media,
    @Default(0) int memberCount,
    DateTime? createdAt,
  }) = _ClubModel;

  factory ClubModel.fromJson(Map<String, dynamic> json) =>
      _$ClubModelFromJson(json);

  static ClubModel fromEntity(ClubEntity entity) {
    return ClubModel(
      id: entity.id,
      creatorId: entity.creatorId ?? 0,
      name: entity.name ?? '',
      description: entity.description ?? '',
      type: entity.type,
      media: entity.media != null
          ? MediaEmbedModel.fromEntity(entity.media!)
          : null,
      memberCount: entity.memberCount,
      createdAt: entity.createdAt,
    );
  }
}

extension ClubModelX on ClubModel {
  ClubEntity toEntity() {
    return ClubEntity(
      id: id,
      creatorId: creatorId,
      name: name,
      description: description,
      type: type,
      media: media?.toEntity(),
      memberCount: memberCount,
      createdAt: createdAt,
    );
  }
}
