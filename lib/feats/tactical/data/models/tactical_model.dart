import 'dart:convert';
import 'dart:math';

import 'package:dot_coaching/feats/feats.dart';
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
    // TacticalTeamModel? team,
    TacticalStrategicModel? strategic,
    @Default(false) bool isLive,
    MediaEmbedModel? media,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TacticalModel;

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
      // team: entity.team != null
      //     ? TacticalTeamModel.fromEntity(entity.team!)
      //     : null,
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
      // team: team?.toEntity(),
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

// @freezed
// class TacticalTeamModel with _$TacticalTeamModel {
//   const factory TacticalTeamModel({
//     String? name,
//     String? color,
//     int? totalMembers,
//     List<TacticalTeamMemberModel>? members,
//   }) = _TacticalTeamModel;

//   factory TacticalTeamModel.fromJson(Map<String, dynamic> json) =>
//       _$TacticalTeamModelFromJson(json);

//   static TacticalTeamModel fromEntity(TacticalTeamEntity entity) {
//     return TacticalTeamModel(
//       name: entity.name,
//       color: entity.color,
//       totalMembers: entity.totalMembers,
//       members: entity.members
//           ?.map((e) => TacticalTeamMemberModel.fromEntity(e))
//           .toList(),
//     );
//   }
// }

// extension TacticalTeamModelX on TacticalTeamModel {
//   TacticalTeamEntity toEntity() {
//     return TacticalTeamEntity(
//       name: name,
//       color: color,
//       totalMembers: totalMembers,
//       members: members?.map((e) => e.toEntity()).toList(),
//     );
//   }
// }

// @freezed
// class TacticalTeamMemberModel with _$TacticalTeamMemberModel {
//   const factory TacticalTeamMemberModel({
//     String? name,
//     int? number,
//   }) = _TacticalTeamMemberModel;

//   factory TacticalTeamMemberModel.fromJson(Map<String, dynamic> json) =>
//       _$TacticalTeamMemberModelFromJson(json);

//   static TacticalTeamMemberModel fromEntity(TacticalTeamMemberEntity entity) {
//     return TacticalTeamMemberModel(
//       name: entity.name,
//       number: entity.number,
//     );
//   }
// }

// extension TacticalTeamMemberModelX on TacticalTeamMemberModel {
//   TacticalTeamMemberEntity toEntity() {
//     return TacticalTeamMemberEntity(
//       name: name,
//       number: number,
//     );
//   }
// }

@freezed
class TacticalStrategicModel with _$TacticalStrategicModel {
  const factory TacticalStrategicModel({
    Map<String, dynamic>? value,
  }) = _TacticalStrategicModel;

  factory TacticalStrategicModel.fromJson(Map<String, dynamic> json) =>
      _$TacticalStrategicModelFromJson(json);

  static TacticalStrategicModel fromEntity(TacticalStrategicEntity entity) {
    return TacticalStrategicModel(
      value: entity.value,
    );
  }
}

extension TacticalStrategicModelX on TacticalStrategicModel {
  TacticalStrategicEntity toEntity() {
    return TacticalStrategicEntity()..json = jsonEncode(value);
  }
}
