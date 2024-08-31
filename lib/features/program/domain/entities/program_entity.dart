import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'program_entity.g.dart';

@Collection(accessor: 'programs')
class ProgramEntity {
  final int id;
  int clubId;
  int? imageId;
  String name;
  DateTime? startDate;
  DateTime? endDate;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProgramEntity({
    this.id = 0,
    this.clubId = 0,
    this.imageId,
    this.name = 'DOT Sport',
    this.startDate,
    this.endDate,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}
