// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTacticalEntityCollection on Isar {
  IsarCollection<TacticalEntity> get tacticalEntitys => this.collection();
}

const TacticalEntitySchema = CollectionSchema(
  name: r'TacticalEntity',
  id: 6329902266948731207,
  properties: {
    r'board': PropertySchema(
      id: 0,
      name: r'board',
      type: IsarType.object,
      target: r'TacticalBoardEntity',
    ),
    r'clubId': PropertySchema(
      id: 1,
      name: r'clubId',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'imageId': PropertySchema(
      id: 4,
      name: r'imageId',
      type: IsarType.long,
    ),
    r'media': PropertySchema(
      id: 5,
      name: r'media',
      type: IsarType.object,
      target: r'MediaEmbedEntity',
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'strategic': PropertySchema(
      id: 7,
      name: r'strategic',
      type: IsarType.object,
      target: r'TacticalStrategicEntity',
    ),
    r'team': PropertySchema(
      id: 8,
      name: r'team',
      type: IsarType.object,
      target: r'TacticalTeamEntity',
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _tacticalEntityEstimateSize,
  serialize: _tacticalEntitySerialize,
  deserialize: _tacticalEntityDeserialize,
  deserializeProp: _tacticalEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'club': LinkSchema(
      id: -6085235723345493976,
      name: r'club',
      target: r'ClubEntity',
      single: true,
    )
  },
  embeddedSchemas: {
    r'TacticalBoardEntity': TacticalBoardEntitySchema,
    r'TacticalTeamEntity': TacticalTeamEntitySchema,
    r'TacticalTeamMemberEntity': TacticalTeamMemberEntitySchema,
    r'TacticalStrategicEntity': TacticalStrategicEntitySchema,
    r'MediaEmbedEntity': MediaEmbedEntitySchema
  },
  getId: _tacticalEntityGetId,
  getLinks: _tacticalEntityGetLinks,
  attach: _tacticalEntityAttach,
  version: '3.1.0+1',
);

int _tacticalEntityEstimateSize(
  TacticalEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.board;
    if (value != null) {
      bytesCount += 3 +
          TacticalBoardEntitySchema.estimateSize(
              value, allOffsets[TacticalBoardEntity]!, allOffsets);
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.media;
    if (value != null) {
      bytesCount += 3 +
          MediaEmbedEntitySchema.estimateSize(
              value, allOffsets[MediaEmbedEntity]!, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.strategic;
    if (value != null) {
      bytesCount += 3 +
          TacticalStrategicEntitySchema.estimateSize(
              value, allOffsets[TacticalStrategicEntity]!, allOffsets);
    }
  }
  {
    final value = object.team;
    if (value != null) {
      bytesCount += 3 +
          TacticalTeamEntitySchema.estimateSize(
              value, allOffsets[TacticalTeamEntity]!, allOffsets);
    }
  }
  return bytesCount;
}

void _tacticalEntitySerialize(
  TacticalEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<TacticalBoardEntity>(
    offsets[0],
    allOffsets,
    TacticalBoardEntitySchema.serialize,
    object.board,
  );
  writer.writeLong(offsets[1], object.clubId);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.description);
  writer.writeLong(offsets[4], object.imageId);
  writer.writeObject<MediaEmbedEntity>(
    offsets[5],
    allOffsets,
    MediaEmbedEntitySchema.serialize,
    object.media,
  );
  writer.writeString(offsets[6], object.name);
  writer.writeObject<TacticalStrategicEntity>(
    offsets[7],
    allOffsets,
    TacticalStrategicEntitySchema.serialize,
    object.strategic,
  );
  writer.writeObject<TacticalTeamEntity>(
    offsets[8],
    allOffsets,
    TacticalTeamEntitySchema.serialize,
    object.team,
  );
  writer.writeDateTime(offsets[9], object.updatedAt);
}

TacticalEntity _tacticalEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalEntity(
    board: reader.readObjectOrNull<TacticalBoardEntity>(
      offsets[0],
      TacticalBoardEntitySchema.deserialize,
      allOffsets,
    ),
    clubId: reader.readLongOrNull(offsets[1]) ?? 0,
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    id: id,
    imageId: reader.readLongOrNull(offsets[4]),
    media: reader.readObjectOrNull<MediaEmbedEntity>(
      offsets[5],
      MediaEmbedEntitySchema.deserialize,
      allOffsets,
    ),
    name: reader.readStringOrNull(offsets[6]) ?? 'SBY Tactical exhibition',
    strategic: reader.readObjectOrNull<TacticalStrategicEntity>(
      offsets[7],
      TacticalStrategicEntitySchema.deserialize,
      allOffsets,
    ),
    team: reader.readObjectOrNull<TacticalTeamEntity>(
      offsets[8],
      TacticalTeamEntitySchema.deserialize,
      allOffsets,
    ),
    updatedAt: reader.readDateTimeOrNull(offsets[9]),
  );
  return object;
}

P _tacticalEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<TacticalBoardEntity>(
        offset,
        TacticalBoardEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<MediaEmbedEntity>(
        offset,
        MediaEmbedEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readStringOrNull(offset) ?? 'SBY Tactical exhibition')
          as P;
    case 7:
      return (reader.readObjectOrNull<TacticalStrategicEntity>(
        offset,
        TacticalStrategicEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readObjectOrNull<TacticalTeamEntity>(
        offset,
        TacticalTeamEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tacticalEntityGetId(TacticalEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tacticalEntityGetLinks(TacticalEntity object) {
  return [object.club];
}

void _tacticalEntityAttach(
    IsarCollection<dynamic> col, Id id, TacticalEntity object) {
  object.id = id;
  object.club.attach(col, col.isar.collection<ClubEntity>(), r'club', id);
}

extension TacticalEntityQueryWhereSort
    on QueryBuilder<TacticalEntity, TacticalEntity, QWhere> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TacticalEntityQueryWhere
    on QueryBuilder<TacticalEntity, TacticalEntity, QWhereClause> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TacticalEntityQueryFilter
    on QueryBuilder<TacticalEntity, TacticalEntity, QFilterCondition> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      boardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'board',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      boardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'board',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      clubIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      clubIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      clubIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      clubIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clubId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageId',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageId',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      imageIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      strategicIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'strategic',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      strategicIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'strategic',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      teamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'team',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      teamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'team',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TacticalEntityQueryObject
    on QueryBuilder<TacticalEntity, TacticalEntity, QFilterCondition> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> board(
      FilterQuery<TacticalBoardEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'board');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> media(
      FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'media');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> strategic(
      FilterQuery<TacticalStrategicEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'strategic');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> team(
      FilterQuery<TacticalTeamEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'team');
    });
  }
}

extension TacticalEntityQueryLinks
    on QueryBuilder<TacticalEntity, TacticalEntity, QFilterCondition> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> club(
      FilterQuery<ClubEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'club');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      clubIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'club', 0, true, 0, true);
    });
  }
}

extension TacticalEntityQuerySortBy
    on QueryBuilder<TacticalEntity, TacticalEntity, QSortBy> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension TacticalEntityQuerySortThenBy
    on QueryBuilder<TacticalEntity, TacticalEntity, QSortThenBy> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension TacticalEntityQueryWhereDistinct
    on QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> {
  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clubId');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageId');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension TacticalEntityQueryProperty
    on QueryBuilder<TacticalEntity, TacticalEntity, QQueryProperty> {
  QueryBuilder<TacticalEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TacticalEntity, TacticalBoardEntity?, QQueryOperations>
      boardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'board');
    });
  }

  QueryBuilder<TacticalEntity, int, QQueryOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clubId');
    });
  }

  QueryBuilder<TacticalEntity, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<TacticalEntity, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<TacticalEntity, int?, QQueryOperations> imageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageId');
    });
  }

  QueryBuilder<TacticalEntity, MediaEmbedEntity?, QQueryOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'media');
    });
  }

  QueryBuilder<TacticalEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TacticalEntity, TacticalStrategicEntity?, QQueryOperations>
      strategicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'strategic');
    });
  }

  QueryBuilder<TacticalEntity, TacticalTeamEntity?, QQueryOperations>
      teamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'team');
    });
  }

  QueryBuilder<TacticalEntity, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TacticalBoardEntitySchema = Schema(
  name: r'TacticalBoardEntity',
  id: 2279384341840027209,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 2,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _tacticalBoardEntityEstimateSize,
  serialize: _tacticalBoardEntitySerialize,
  deserialize: _tacticalBoardEntityDeserialize,
  deserializeProp: _tacticalBoardEntityDeserializeProp,
);

int _tacticalBoardEntityEstimateSize(
  TacticalBoardEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tacticalBoardEntitySerialize(
  TacticalBoardEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.type);
  writer.writeString(offsets[2], object.url);
}

TacticalBoardEntity _tacticalBoardEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalBoardEntity(
    name: reader.readStringOrNull(offsets[0]),
    type: reader.readStringOrNull(offsets[1]),
    url: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _tacticalBoardEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TacticalBoardEntityQueryFilter on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {
  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension TacticalBoardEntityQueryObject on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TacticalTeamEntitySchema = Schema(
  name: r'TacticalTeamEntity',
  id: 4170293947817922190,
  properties: {
    r'color': PropertySchema(
      id: 0,
      name: r'color',
      type: IsarType.string,
    ),
    r'members': PropertySchema(
      id: 1,
      name: r'members',
      type: IsarType.objectList,
      target: r'TacticalTeamMemberEntity',
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'totalMembers': PropertySchema(
      id: 3,
      name: r'totalMembers',
      type: IsarType.long,
    )
  },
  estimateSize: _tacticalTeamEntityEstimateSize,
  serialize: _tacticalTeamEntitySerialize,
  deserialize: _tacticalTeamEntityDeserialize,
  deserializeProp: _tacticalTeamEntityDeserializeProp,
);

int _tacticalTeamEntityEstimateSize(
  TacticalTeamEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.members;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[TacticalTeamMemberEntity]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += TacticalTeamMemberEntitySchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tacticalTeamEntitySerialize(
  TacticalTeamEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.color);
  writer.writeObjectList<TacticalTeamMemberEntity>(
    offsets[1],
    allOffsets,
    TacticalTeamMemberEntitySchema.serialize,
    object.members,
  );
  writer.writeString(offsets[2], object.name);
  writer.writeLong(offsets[3], object.totalMembers);
}

TacticalTeamEntity _tacticalTeamEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalTeamEntity(
    color: reader.readStringOrNull(offsets[0]),
    members: reader.readObjectList<TacticalTeamMemberEntity>(
      offsets[1],
      TacticalTeamMemberEntitySchema.deserialize,
      allOffsets,
      TacticalTeamMemberEntity(),
    ),
    name: reader.readStringOrNull(offsets[2]),
    totalMembers: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _tacticalTeamEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<TacticalTeamMemberEntity>(
        offset,
        TacticalTeamMemberEntitySchema.deserialize,
        allOffsets,
        TacticalTeamMemberEntity(),
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TacticalTeamEntityQueryFilter
    on QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QFilterCondition> {
  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'members',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'members',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'members',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalMembers',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalMembers',
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalMembers',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalMembers',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalMembers',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      totalMembersBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalMembers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TacticalTeamEntityQueryObject
    on QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QFilterCondition> {
  QueryBuilder<TacticalTeamEntity, TacticalTeamEntity, QAfterFilterCondition>
      membersElement(FilterQuery<TacticalTeamMemberEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'members');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TacticalTeamMemberEntitySchema = Schema(
  name: r'TacticalTeamMemberEntity',
  id: -3569292781505547878,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 1,
      name: r'number',
      type: IsarType.long,
    )
  },
  estimateSize: _tacticalTeamMemberEntityEstimateSize,
  serialize: _tacticalTeamMemberEntitySerialize,
  deserialize: _tacticalTeamMemberEntityDeserialize,
  deserializeProp: _tacticalTeamMemberEntityDeserializeProp,
);

int _tacticalTeamMemberEntityEstimateSize(
  TacticalTeamMemberEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tacticalTeamMemberEntitySerialize(
  TacticalTeamMemberEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.number);
}

TacticalTeamMemberEntity _tacticalTeamMemberEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalTeamMemberEntity(
    name: reader.readStringOrNull(offsets[0]),
    number: reader.readLongOrNull(offsets[1]),
  );
  return object;
}

P _tacticalTeamMemberEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TacticalTeamMemberEntityQueryFilter on QueryBuilder<
    TacticalTeamMemberEntity, TacticalTeamMemberEntity, QFilterCondition> {
  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalTeamMemberEntity, TacticalTeamMemberEntity,
      QAfterFilterCondition> numberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TacticalTeamMemberEntityQueryObject on QueryBuilder<
    TacticalTeamMemberEntity, TacticalTeamMemberEntity, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TacticalStrategicEntitySchema = Schema(
  name: r'TacticalStrategicEntity',
  id: -2655585784478095036,
  properties: {
    r'json': PropertySchema(
      id: 0,
      name: r'json',
      type: IsarType.string,
    )
  },
  estimateSize: _tacticalStrategicEntityEstimateSize,
  serialize: _tacticalStrategicEntitySerialize,
  deserialize: _tacticalStrategicEntityDeserialize,
  deserializeProp: _tacticalStrategicEntityDeserializeProp,
);

int _tacticalStrategicEntityEstimateSize(
  TacticalStrategicEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.json.length * 3;
  return bytesCount;
}

void _tacticalStrategicEntitySerialize(
  TacticalStrategicEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.json);
}

TacticalStrategicEntity _tacticalStrategicEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalStrategicEntity();
  object.json = reader.readString(offsets[0]);
  return object;
}

P _tacticalStrategicEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TacticalStrategicEntityQueryFilter on QueryBuilder<
    TacticalStrategicEntity, TacticalStrategicEntity, QFilterCondition> {
  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'json',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
          QAfterFilterCondition>
      jsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'json',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
          QAfterFilterCondition>
      jsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'json',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'json',
        value: '',
      ));
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> jsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'json',
        value: '',
      ));
    });
  }
}

extension TacticalStrategicEntityQueryObject on QueryBuilder<
    TacticalStrategicEntity, TacticalStrategicEntity, QFilterCondition> {}
