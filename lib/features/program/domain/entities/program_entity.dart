import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'program_entity.g.dart';

@Collection(accessor: 'programs')
class ProgramEntity {
  final int id;
  final int clubId;
  final int? imageId;
  final String name;
  final DateTime? startDate;
  final DateTime? endDate;
  final MediaEmbedEntity? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProgramEntity({
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
