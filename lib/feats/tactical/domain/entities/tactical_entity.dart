import 'dart:collection';
import 'dart:convert';

import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'tactical_entity.g.dart';

@collection
class TacticalEntity {
  Id id = Isar.autoIncrement;
  int clubId;
  int? mediaId;
  String name;
  String? description;
  TacticalBoardEntity board = TacticalBoardEntity();
  // TacticalTeamEntity? team;
  TacticalStrategicEntity? strategic;
  bool isLive;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final club = IsarLink<ClubEntity>();

  TacticalEntity({
    this.id = Isar.autoIncrement,
    this.clubId = 0,
    this.mediaId,
    this.name = 'SBY Tactical exhibition',
    this.description,
    required this.board,
    // this.team,
    this.strategic,
    this.isLive = false,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class TacticalBoardEntity {
  double width, height;

  TacticalBoardEntity({
    this.width = 0,
    this.height = 0,
  });
}

// @embedded
// class TacticalTeamEntity {
//   String? name, color;
//   int? totalMembers;
//   List<TacticalTeamMemberEntity>? members;

//   TacticalTeamEntity({
//     this.name,
//     this.color,
//     this.totalMembers,
//     this.members,
//   });
// }

// @embedded
// class TacticalTeamMemberEntity {
//   String? name;
//   int? number;

//   TacticalTeamMemberEntity({
//     this.name,
//     this.number,
//   });
// }

@Embedded(inheritance: false)
class TacticalStrategicEntity with MapMixin<String, dynamic> {
  @ignore
  Map<String, dynamic> _map = {};

  String get json => jsonEncode(_map);

  set json(String value) => _map = jsonDecode(value);

  @override
  dynamic operator [](Object? key) => _map[key];

  @override
  void operator []=(String key, value) => _map[key] = value;

  @override
  void clear() => _map.clear();

  @ignore
  @override
  Iterable<String> get keys => _map.keys;

  @override
  dynamic remove(Object? key) => _map.remove(key);

  TacticalStrategicEntity();

  TacticalStrategicEntity.fromJson(this._map);

  Map<String, dynamic> toJson() => _map;

  @ignore
  Map<String, dynamic> get value => _map;
}
