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
    r'isLive': PropertySchema(
      id: 4,
      name: r'isLive',
      type: IsarType.bool,
    ),
    r'media': PropertySchema(
      id: 5,
      name: r'media',
      type: IsarType.object,
      target: r'MediaEmbedEntity',
    ),
    r'mediaId': PropertySchema(
      id: 6,
      name: r'mediaId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'strategic': PropertySchema(
      id: 8,
      name: r'strategic',
      type: IsarType.object,
      target: r'TacticalStrategicEntity',
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
  bytesCount += 3 +
      TacticalBoardEntitySchema.estimateSize(
          object.board, allOffsets[TacticalBoardEntity]!, allOffsets);
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
  writer.writeBool(offsets[4], object.isLive);
  writer.writeObject<MediaEmbedEntity>(
    offsets[5],
    allOffsets,
    MediaEmbedEntitySchema.serialize,
    object.media,
  );
  writer.writeLong(offsets[6], object.mediaId);
  writer.writeString(offsets[7], object.name);
  writer.writeObject<TacticalStrategicEntity>(
    offsets[8],
    allOffsets,
    TacticalStrategicEntitySchema.serialize,
    object.strategic,
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
        ) ??
        TacticalBoardEntity(),
    clubId: reader.readLongOrNull(offsets[1]) ?? 0,
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    id: id,
    isLive: reader.readBoolOrNull(offsets[4]) ?? false,
    media: reader.readObjectOrNull<MediaEmbedEntity>(
      offsets[5],
      MediaEmbedEntitySchema.deserialize,
      allOffsets,
    ),
    mediaId: reader.readLongOrNull(offsets[6]),
    name: reader.readStringOrNull(offsets[7]) ?? 'SBY Tactical exhibition',
    strategic: reader.readObjectOrNull<TacticalStrategicEntity>(
      offsets[8],
      TacticalStrategicEntitySchema.deserialize,
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
          ) ??
          TacticalBoardEntity()) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 5:
      return (reader.readObjectOrNull<MediaEmbedEntity>(
        offset,
        MediaEmbedEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? 'SBY Tactical exhibition')
          as P;
    case 8:
      return (reader.readObjectOrNull<TacticalStrategicEntity>(
        offset,
        TacticalStrategicEntitySchema.deserialize,
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
      isLiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLive',
        value: value,
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
      mediaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaId',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaId',
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaId',
        value: value,
      ));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.desc);
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLive', Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.asc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.desc);
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

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLive');
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> distinctByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaId');
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

  QueryBuilder<TacticalEntity, TacticalBoardEntity, QQueryOperations>
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

  QueryBuilder<TacticalEntity, bool, QQueryOperations> isLiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLive');
    });
  }

  QueryBuilder<TacticalEntity, MediaEmbedEntity?, QQueryOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'media');
    });
  }

  QueryBuilder<TacticalEntity, int?, QQueryOperations> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaId');
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
    r'height': PropertySchema(
      id: 0,
      name: r'height',
      type: IsarType.double,
    ),
    r'width': PropertySchema(
      id: 1,
      name: r'width',
      type: IsarType.double,
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
  return bytesCount;
}

void _tacticalBoardEntitySerialize(
  TacticalBoardEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.height);
  writer.writeDouble(offsets[1], object.width);
}

TacticalBoardEntity _tacticalBoardEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TacticalBoardEntity(
    height: reader.readDoubleOrNull(offsets[0]) ?? 0,
    width: reader.readDoubleOrNull(offsets[1]) ?? 0,
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
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TacticalBoardEntityQueryFilter on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {
  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'width',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'width',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'width',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'width',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension TacticalBoardEntityQueryObject on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {}

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
