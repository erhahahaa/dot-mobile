// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClubEntityCollection on Isar {
  IsarCollection<ClubEntity> get clubEntitys => this.collection();
}

const ClubEntitySchema = CollectionSchema(
  name: r'ClubEntity',
  id: 1769320090859701943,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'creatorId': PropertySchema(
      id: 1,
      name: r'creatorId',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'examCount': PropertySchema(
      id: 3,
      name: r'examCount',
      type: IsarType.long,
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
    r'memberCount': PropertySchema(
      id: 6,
      name: r'memberCount',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'programCount': PropertySchema(
      id: 8,
      name: r'programCount',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 9,
      name: r'type',
      type: IsarType.byte,
      enumMap: _ClubEntitytypeEnumValueMap,
    ),
    r'updatedAt': PropertySchema(
      id: 10,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _clubEntityEstimateSize,
  serialize: _clubEntitySerialize,
  deserialize: _clubEntityDeserialize,
  deserializeProp: _clubEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'members': LinkSchema(
      id: -1721319639896665234,
      name: r'members',
      target: r'UserEntity',
      single: false,
    ),
    r'programs': LinkSchema(
      id: 2599956294475351166,
      name: r'programs',
      target: r'ProgramEntity',
      single: false,
    ),
    r'tacticals': LinkSchema(
      id: 6653228269823159035,
      name: r'tacticals',
      target: r'TacticalEntity',
      single: false,
    ),
    r'exams': LinkSchema(
      id: -5117746716064539779,
      name: r'exams',
      target: r'ExamEntity',
      single: false,
    )
  },
  embeddedSchemas: {r'MediaEmbedEntity': MediaEmbedEntitySchema},
  getId: _clubEntityGetId,
  getLinks: _clubEntityGetLinks,
  attach: _clubEntityAttach,
  version: '3.1.0+1',
);

int _clubEntityEstimateSize(
  ClubEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _clubEntitySerialize(
  ClubEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.creatorId);
  writer.writeString(offsets[2], object.description);
  writer.writeLong(offsets[3], object.examCount);
  writer.writeLong(offsets[4], object.imageId);
  writer.writeObject<MediaEmbedEntity>(
    offsets[5],
    allOffsets,
    MediaEmbedEntitySchema.serialize,
    object.media,
  );
  writer.writeLong(offsets[6], object.memberCount);
  writer.writeString(offsets[7], object.name);
  writer.writeLong(offsets[8], object.programCount);
  writer.writeByte(offsets[9], object.type.index);
  writer.writeDateTime(offsets[10], object.updatedAt);
}

ClubEntity _clubEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClubEntity(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    creatorId: reader.readLongOrNull(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    examCount: reader.readLongOrNull(offsets[3]) ?? 0,
    id: id,
    imageId: reader.readLongOrNull(offsets[4]),
    media: reader.readObjectOrNull<MediaEmbedEntity>(
      offsets[5],
      MediaEmbedEntitySchema.deserialize,
      allOffsets,
    ),
    memberCount: reader.readLongOrNull(offsets[6]) ?? 0,
    name: reader.readStringOrNull(offsets[7]),
    programCount: reader.readLongOrNull(offsets[8]) ?? 0,
    type: _ClubEntitytypeValueEnumMap[reader.readByteOrNull(offsets[9])] ??
        SportType.basketBall,
    updatedAt: reader.readDateTimeOrNull(offsets[10]),
  );
  return object;
}

P _clubEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<MediaEmbedEntity>(
        offset,
        MediaEmbedEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 9:
      return (_ClubEntitytypeValueEnumMap[reader.readByteOrNull(offset)] ??
          SportType.basketBall) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ClubEntitytypeEnumValueMap = {
  'volleyBall': 0,
  'basketBall': 1,
  'soccer': 2,
  'miniSoccer': 3,
  'handBall': 4,
};
const _ClubEntitytypeValueEnumMap = {
  0: SportType.volleyBall,
  1: SportType.basketBall,
  2: SportType.soccer,
  3: SportType.miniSoccer,
  4: SportType.handBall,
};

Id _clubEntityGetId(ClubEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _clubEntityGetLinks(ClubEntity object) {
  return [object.members, object.programs, object.tacticals, object.exams];
}

void _clubEntityAttach(IsarCollection<dynamic> col, Id id, ClubEntity object) {
  object.id = id;
  object.members.attach(col, col.isar.collection<UserEntity>(), r'members', id);
  object.programs
      .attach(col, col.isar.collection<ProgramEntity>(), r'programs', id);
  object.tacticals
      .attach(col, col.isar.collection<TacticalEntity>(), r'tacticals', id);
  object.exams.attach(col, col.isar.collection<ExamEntity>(), r'exams', id);
}

extension ClubEntityQueryWhereSort
    on QueryBuilder<ClubEntity, ClubEntity, QWhere> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClubEntityQueryWhere
    on QueryBuilder<ClubEntity, ClubEntity, QWhereClause> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> idBetween(
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

extension ClubEntityQueryFilter
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      creatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'creatorId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      creatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'creatorId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> creatorIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      creatorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> creatorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> creatorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creatorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> examCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'examCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'examCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> examCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'examCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> examCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'examCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> imageIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      imageIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> imageIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageId',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> imageIdLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> imageIdBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> mediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      memberCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      memberCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      memberCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      memberCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'programCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'programCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'programCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'programCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> typeEqualTo(
      SportType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> typeGreaterThan(
    SportType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> typeLessThan(
    SportType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> typeBetween(
    SportType lower,
    SportType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> updatedAtBetween(
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

extension ClubEntityQueryObject
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> media(
      FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'media');
    });
  }
}

extension ClubEntityQueryLinks
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> members(
      FilterQuery<UserEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'members');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      membersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'members', length, true, length, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> membersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'members', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      membersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'members', 0, false, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      membersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'members', 0, true, length, include);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      membersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'members', length, include, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      membersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'members', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> programs(
      FilterQuery<ProgramEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'programs');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'programs', length, true, length, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'programs', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'programs', 0, false, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'programs', 0, true, length, include);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'programs', length, include, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      programsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'programs', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> tacticals(
      FilterQuery<TacticalEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tacticals');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tacticals', length, true, length, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tacticals', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tacticals', 0, false, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tacticals', 0, true, length, include);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tacticals', length, include, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      tacticalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tacticals', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> exams(
      FilterQuery<ExamEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'exams');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'exams', length, true, length, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> examsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'exams', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'exams', 0, false, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'exams', 0, true, length, include);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'exams', length, include, 999999, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      examsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'exams', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ClubEntityQuerySortBy
    on QueryBuilder<ClubEntity, ClubEntity, QSortBy> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByExamCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByExamCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByProgramCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByProgramCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ClubEntityQuerySortThenBy
    on QueryBuilder<ClubEntity, ClubEntity, QSortThenBy> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByExamCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByExamCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'examCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageId', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByMemberCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByProgramCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programCount', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByProgramCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programCount', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ClubEntityQueryWhereDistinct
    on QueryBuilder<ClubEntity, ClubEntity, QDistinct> {
  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creatorId');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByExamCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examCount');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageId');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByMemberCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberCount');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByProgramCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'programCount');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ClubEntityQueryProperty
    on QueryBuilder<ClubEntity, ClubEntity, QQueryProperty> {
  QueryBuilder<ClubEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ClubEntity, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ClubEntity, int?, QQueryOperations> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creatorId');
    });
  }

  QueryBuilder<ClubEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ClubEntity, int, QQueryOperations> examCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examCount');
    });
  }

  QueryBuilder<ClubEntity, int?, QQueryOperations> imageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageId');
    });
  }

  QueryBuilder<ClubEntity, MediaEmbedEntity?, QQueryOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'media');
    });
  }

  QueryBuilder<ClubEntity, int, QQueryOperations> memberCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberCount');
    });
  }

  QueryBuilder<ClubEntity, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ClubEntity, int, QQueryOperations> programCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'programCount');
    });
  }

  QueryBuilder<ClubEntity, SportType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<ClubEntity, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
