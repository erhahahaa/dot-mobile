// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProgramExerciseEntityCollection on Isar {
  IsarCollection<ProgramExerciseEntity> get programExerciseEntitys =>
      this.collection();
}

const ProgramExerciseEntitySchema = CollectionSchema(
  name: r'ProgramExerciseEntity',
  id: -5520474977333876027,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'media': PropertySchema(
      id: 2,
      name: r'media',
      type: IsarType.object,
      target: r'MediaEmbedEntity',
    ),
    r'mediaId': PropertySchema(
      id: 3,
      name: r'mediaId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'programId': PropertySchema(
      id: 5,
      name: r'programId',
      type: IsarType.long,
    ),
    r'repetition': PropertySchema(
      id: 6,
      name: r'repetition',
      type: IsarType.long,
    ),
    r'rest': PropertySchema(
      id: 7,
      name: r'rest',
      type: IsarType.long,
    ),
    r'sets': PropertySchema(
      id: 8,
      name: r'sets',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _programExerciseEntityEstimateSize,
  serialize: _programExerciseEntitySerialize,
  deserialize: _programExerciseEntityDeserialize,
  deserializeProp: _programExerciseEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'program': LinkSchema(
      id: 9214284022203708789,
      name: r'program',
      target: r'ProgramEntity',
      single: true,
    )
  },
  embeddedSchemas: {r'MediaEmbedEntity': MediaEmbedEntitySchema},
  getId: _programExerciseEntityGetId,
  getLinks: _programExerciseEntityGetLinks,
  attach: _programExerciseEntityAttach,
  version: '3.1.0+1',
);

int _programExerciseEntityEstimateSize(
  ProgramExerciseEntity object,
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
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _programExerciseEntitySerialize(
  ProgramExerciseEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.description);
  writer.writeObject<MediaEmbedEntity>(
    offsets[2],
    allOffsets,
    MediaEmbedEntitySchema.serialize,
    object.media,
  );
  writer.writeLong(offsets[3], object.mediaId);
  writer.writeString(offsets[4], object.name);
  writer.writeLong(offsets[5], object.programId);
  writer.writeLong(offsets[6], object.repetition);
  writer.writeLong(offsets[7], object.rest);
  writer.writeLong(offsets[8], object.sets);
  writer.writeDateTime(offsets[9], object.updatedAt);
}

ProgramExerciseEntity _programExerciseEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProgramExerciseEntity(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    description: reader.readStringOrNull(offsets[1]),
    id: id,
    media: reader.readObjectOrNull<MediaEmbedEntity>(
      offsets[2],
      MediaEmbedEntitySchema.deserialize,
      allOffsets,
    ),
    mediaId: reader.readLongOrNull(offsets[3]),
    name: reader.readStringOrNull(offsets[4]) ?? 'DOT Exercise 0',
    programId: reader.readLongOrNull(offsets[5]) ?? 0,
    repetition: reader.readLongOrNull(offsets[6]) ?? 1,
    rest: reader.readLongOrNull(offsets[7]) ?? 0,
    sets: reader.readLongOrNull(offsets[8]) ?? 1,
    updatedAt: reader.readDateTimeOrNull(offsets[9]),
  );
  return object;
}

P _programExerciseEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<MediaEmbedEntity>(
        offset,
        MediaEmbedEntitySchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? 'DOT Exercise 0') as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _programExerciseEntityGetId(ProgramExerciseEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _programExerciseEntityGetLinks(
    ProgramExerciseEntity object) {
  return [object.program];
}

void _programExerciseEntityAttach(
    IsarCollection<dynamic> col, Id id, ProgramExerciseEntity object) {
  object.id = id;
  object.program
      .attach(col, col.isar.collection<ProgramEntity>(), r'program', id);
}

extension ProgramExerciseEntityQueryWhereSort
    on QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QWhere> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProgramExerciseEntityQueryWhere on QueryBuilder<ProgramExerciseEntity,
    ProgramExerciseEntity, QWhereClause> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterWhereClause>
      idBetween(
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

extension ProgramExerciseEntityQueryFilter on QueryBuilder<
    ProgramExerciseEntity, ProgramExerciseEntity, QFilterCondition> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionEqualTo(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionBetween(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionStartsWith(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionEndsWith(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
          QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
          QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'media',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaId',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaId',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> mediaIdBetween(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameBetween(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> programIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'programId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> programIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'programId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> programIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'programId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> programIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'programId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> repetitionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> repetitionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> repetitionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> repetitionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repetition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> restEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> restGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> restLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rest',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> restBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> setsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> setsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> setsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sets',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> setsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sets',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> updatedAtBetween(
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

extension ProgramExerciseEntityQueryObject on QueryBuilder<
    ProgramExerciseEntity, ProgramExerciseEntity, QFilterCondition> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> media(FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'media');
    });
  }
}

extension ProgramExerciseEntityQueryLinks on QueryBuilder<ProgramExerciseEntity,
    ProgramExerciseEntity, QFilterCondition> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> program(FilterQuery<ProgramEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'program');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity,
      QAfterFilterCondition> programIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'program', 0, true, 0, true);
    });
  }
}

extension ProgramExerciseEntityQuerySortBy
    on QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QSortBy> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programId', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByProgramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programId', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByRestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ProgramExerciseEntityQuerySortThenBy
    on QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QSortThenBy> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaId', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programId', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByProgramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'programId', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByRestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rest', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenBySetsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sets', Sort.desc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ProgramExerciseEntityQueryWhereDistinct
    on QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct> {
  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaId');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'programId');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repetition');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByRest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rest');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctBySets() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sets');
    });
  }

  QueryBuilder<ProgramExerciseEntity, ProgramExerciseEntity, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ProgramExerciseEntityQueryProperty on QueryBuilder<
    ProgramExerciseEntity, ProgramExerciseEntity, QQueryProperty> {
  QueryBuilder<ProgramExerciseEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProgramExerciseEntity, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ProgramExerciseEntity, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ProgramExerciseEntity, MediaEmbedEntity?, QQueryOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'media');
    });
  }

  QueryBuilder<ProgramExerciseEntity, int?, QQueryOperations>
      mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaId');
    });
  }

  QueryBuilder<ProgramExerciseEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ProgramExerciseEntity, int, QQueryOperations>
      programIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'programId');
    });
  }

  QueryBuilder<ProgramExerciseEntity, int, QQueryOperations>
      repetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repetition');
    });
  }

  QueryBuilder<ProgramExerciseEntity, int, QQueryOperations> restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rest');
    });
  }

  QueryBuilder<ProgramExerciseEntity, int, QQueryOperations> setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sets');
    });
  }

  QueryBuilder<ProgramExerciseEntity, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
