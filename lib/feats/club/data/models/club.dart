import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club.freezed.dart';
part 'club.g.dart';

@freezed
class ClubModel with _$ClubModel {
  const factory ClubModel({
    @Default(0) int id,
    @JsonKey(name: 'creator_id') @Default(0) int creatorId,
    @Default('Indo Sports') String name,
    @Default('Sport Club') String description,
    @Default("https://api.dicebear.com/9.x/adventurer/png") String image,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ClubModel;

  factory ClubModel.fromJson(Map<String, dynamic> json) =>
      _$ClubModelFromJson(json);

  static ClubModel fromEntity(ClubEntity entity) {
    return ClubModel(
      id: entity.id,
      creatorId: entity.creatorId ?? 0,
      name: entity.name ?? '',
      description: entity.description ?? '',
      image: entity.image ?? '',
      createdAt: entity.createdAt,
    );
  }
}

extension ClubModelX on ClubModel {
  //toEntity
  ClubEntity toEntity() {
    return ClubEntity(
      id: id,
      creatorId: creatorId,
      name: name,
      description: description,
      image: image,
      createdAt: createdAt,
    );
  }
}
