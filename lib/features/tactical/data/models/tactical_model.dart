import 'dart:math' show Random;

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'tactical_model.freezed.dart';
part 'tactical_model.g.dart';

@freezed
class TacticalModel with _$TacticalModel {
  const factory TacticalModel({
    @Default(0) int id,
    @Default(0) int clubId,
    int? mediaId,
    @Default('SBY Tactical exhibition') String name,
    String? description,
    @Default(TacticalBoardModel()) TacticalBoardModel board,
    TacticalStrategicModel? strategic,
    @Default(false) bool isLive,
    MediaEmbedModel? media,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TacticalModel;

  const TacticalModel._();

  factory TacticalModel.fromJson(Map<String, dynamic> json) =>
      _$TacticalModelFromJson(json);

  static TacticalModel fromEntity(TacticalEntity entity) {
    return TacticalModel(
      id: entity.id,
      clubId: entity.clubId,
      mediaId: entity.mediaId,
      name: entity.name,
      description: entity.description,
      board: TacticalBoardModel.fromEntity(entity.board),
      strategic: entity.strategic != null
          ? TacticalStrategicModel.fromEntity(entity.strategic!)
          : null,
      isLive: entity.isLive,
      media: entity.media != null
          ? MediaEmbedModel.fromEntity(entity.media!)
          : null,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static TacticalModel fake() {
    return TacticalModel(
      id: Random().nextInt(100),
      name: BoneMock.name,
      description: BoneMock.subtitle,
      board: const TacticalBoardModel(
        width: 1000,
        height: 1000,
      ),
      media: MediaEmbedModel.fake(),
    );
  }
}

extension TacticalModelX on TacticalModel {
  TacticalEntity toEntity() {
    return TacticalEntity(
      id: id,
      clubId: clubId,
      mediaId: mediaId,
      name: name,
      description: description,
      board: board.toEntity(),
      strategic: strategic?.toEntity(),
      isLive: isLive,
      media: media?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@freezed
class TacticalBoardModel with _$TacticalBoardModel {
  const factory TacticalBoardModel({
    @Default(0) double width,
    @Default(0) double height,
  }) = _TacticalBoardModel;

  factory TacticalBoardModel.fromJson(Map<String, dynamic> json) =>
      _$TacticalBoardModelFromJson(json);

  static TacticalBoardModel fromEntity(TacticalBoardEntity entity) {
    return TacticalBoardModel(
      width: entity.width,
      height: entity.height,
    );
  }
}

extension TacticalBoardModelX on TacticalBoardModel {
  TacticalBoardEntity toEntity() {
    return TacticalBoardEntity(
      width: width,
      height: height,
    );
  }
}

@freezed
class TacticalStrategicModel with _$TacticalStrategicModel {
  const factory TacticalStrategicModel({
    @Default([]) List<PlayerModel> players,
    @Default([]) List<ArrowModel> arrows,
  }) = _TacticalStrategicModel;

  factory TacticalStrategicModel.fromJson(Map<String, dynamic> json) =>
      _$TacticalStrategicModelFromJson(json);

  static TacticalStrategicModel fromEntity(TacticalStrategicEntity entity) {
    return TacticalStrategicModel(
      players: entity.players.map((e) => PlayerModel.fromEntity(e)).toList(),
      arrows: entity.arrows.map((e) => ArrowModel.fromEntity(e)).toList(),
    );
  }
}

extension TacticalStrategicModelX on TacticalStrategicModel {
  TacticalStrategicEntity toEntity() {
    return TacticalStrategicEntity(
      players: players.map((e) => e.toEntity()).toList(),
      arrows: arrows.map((e) => e.toEntity()).toList(),
    );
  }
}
