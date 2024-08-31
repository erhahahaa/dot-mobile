// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetProgramEntityCollection on Isar {
  IsarCollection<int, ProgramEntity> get programs => this.collection();
}

const ProgramEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ProgramEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'clubId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'imageId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'startDate',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'endDate',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'media',
        type: IsarType.object,
        target: 'MediaEmbedEntity',
      ),
      IsarPropertySchema(
        name: 'createdAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'updatedAt',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, ProgramEntity>(
    serialize: serializeProgramEntity,
    deserialize: deserializeProgramEntity,
    deserializeProperty: deserializeProgramEntityProp,
  ),
  embeddedSchemas: [MediaEmbedEntitySchema],
);

@isarProtected
int serializeProgramEntity(IsarWriter writer, ProgramEntity object) {
  IsarCore.writeLong(writer, 1, object.clubId);
  IsarCore.writeLong(writer, 2, object.imageId ?? -9223372036854775808);
  IsarCore.writeString(writer, 3, object.name);
  IsarCore.writeLong(writer, 4,
      object.startDate?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 5,
      object.endDate?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  {
    final value = object.media;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 6);
      serializeMediaEmbedEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  IsarCore.writeLong(writer, 7,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 8,
      object.updatedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  return object.id;
}

@isarProtected
ProgramEntity deserializeProgramEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _clubId;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _clubId = 0;
    } else {
      _clubId = value;
    }
  }
  final int? _imageId;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _imageId = null;
    } else {
      _imageId = value;
    }
  }
  final String _name;
  _name = IsarCore.readString(reader, 3) ?? 'DOT Sport';
  final DateTime? _startDate;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _startDate = null;
    } else {
      _startDate =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _endDate;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _endDate = null;
    } else {
      _endDate =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final MediaEmbedEntity? _media;
  {
    final objectReader = IsarCore.readObject(reader, 6);
    if (objectReader.isNull) {
      _media = null;
    } else {
      final embedded = deserializeMediaEmbedEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _media = embedded;
    }
  }
  final DateTime? _createdAt;
  {
    final value = IsarCore.readLong(reader, 7);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _updatedAt;
  {
    final value = IsarCore.readLong(reader, 8);
    if (value == -9223372036854775808) {
      _updatedAt = null;
    } else {
      _updatedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = ProgramEntity(
    id: _id,
    clubId: _clubId,
    imageId: _imageId,
    name: _name,
    startDate: _startDate,
    endDate: _endDate,
    media: _media,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeProgramEntityProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        final value = IsarCore.readLong(reader, 1);
        if (value == -9223372036854775808) {
          return 0;
        } else {
          return value;
        }
      }
    case 2:
      {
        final value = IsarCore.readLong(reader, 2);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 3:
      return IsarCore.readString(reader, 3) ?? 'DOT Sport';
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 6:
      {
        final objectReader = IsarCore.readObject(reader, 6);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeMediaEmbedEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 7:
      {
        final value = IsarCore.readLong(reader, 7);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 8:
      {
        final value = IsarCore.readLong(reader, 8);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ProgramEntityUpdate {
  bool call({
    required int id,
    int? clubId,
    int? imageId,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ProgramEntityUpdateImpl implements _ProgramEntityUpdate {
  const _ProgramEntityUpdateImpl(this.collection);

  final IsarCollection<int, ProgramEntity> collection;

  @override
  bool call({
    required int id,
    Object? clubId = ignore,
    Object? imageId = ignore,
    Object? name = ignore,
    Object? startDate = ignore,
    Object? endDate = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (clubId != ignore) 1: clubId as int?,
          if (imageId != ignore) 2: imageId as int?,
          if (name != ignore) 3: name as String?,
          if (startDate != ignore) 4: startDate as DateTime?,
          if (endDate != ignore) 5: endDate as DateTime?,
          if (createdAt != ignore) 7: createdAt as DateTime?,
          if (updatedAt != ignore) 8: updatedAt as DateTime?,
        }) >
        0;
  }
}

sealed class _ProgramEntityUpdateAll {
  int call({
    required List<int> id,
    int? clubId,
    int? imageId,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ProgramEntityUpdateAllImpl implements _ProgramEntityUpdateAll {
  const _ProgramEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, ProgramEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? clubId = ignore,
    Object? imageId = ignore,
    Object? name = ignore,
    Object? startDate = ignore,
    Object? endDate = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (clubId != ignore) 1: clubId as int?,
      if (imageId != ignore) 2: imageId as int?,
      if (name != ignore) 3: name as String?,
      if (startDate != ignore) 4: startDate as DateTime?,
      if (endDate != ignore) 5: endDate as DateTime?,
      if (createdAt != ignore) 7: createdAt as DateTime?,
      if (updatedAt != ignore) 8: updatedAt as DateTime?,
    });
  }
}

extension ProgramEntityUpdate on IsarCollection<int, ProgramEntity> {
  _ProgramEntityUpdate get update => _ProgramEntityUpdateImpl(this);

  _ProgramEntityUpdateAll get updateAll => _ProgramEntityUpdateAllImpl(this);
}

sealed class _ProgramEntityQueryUpdate {
  int call({
    int? clubId,
    int? imageId,
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ProgramEntityQueryUpdateImpl implements _ProgramEntityQueryUpdate {
  const _ProgramEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ProgramEntity> query;
  final int? limit;

  @override
  int call({
    Object? clubId = ignore,
    Object? imageId = ignore,
    Object? name = ignore,
    Object? startDate = ignore,
    Object? endDate = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (clubId != ignore) 1: clubId as int?,
      if (imageId != ignore) 2: imageId as int?,
      if (name != ignore) 3: name as String?,
      if (startDate != ignore) 4: startDate as DateTime?,
      if (endDate != ignore) 5: endDate as DateTime?,
      if (createdAt != ignore) 7: createdAt as DateTime?,
      if (updatedAt != ignore) 8: updatedAt as DateTime?,
    });
  }
}

extension ProgramEntityQueryUpdate on IsarQuery<ProgramEntity> {
  _ProgramEntityQueryUpdate get updateFirst =>
      _ProgramEntityQueryUpdateImpl(this, limit: 1);

  _ProgramEntityQueryUpdate get updateAll =>
      _ProgramEntityQueryUpdateImpl(this);
}

class _ProgramEntityQueryBuilderUpdateImpl
    implements _ProgramEntityQueryUpdate {
  const _ProgramEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ProgramEntity, ProgramEntity, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? clubId = ignore,
    Object? imageId = ignore,
    Object? name = ignore,
    Object? startDate = ignore,
    Object? endDate = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (clubId != ignore) 1: clubId as int?,
        if (imageId != ignore) 2: imageId as int?,
        if (name != ignore) 3: name as String?,
        if (startDate != ignore) 4: startDate as DateTime?,
        if (endDate != ignore) 5: endDate as DateTime?,
        if (createdAt != ignore) 7: createdAt as DateTime?,
        if (updatedAt != ignore) 8: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension ProgramEntityQueryBuilderUpdate
    on QueryBuilder<ProgramEntity, ProgramEntity, QOperations> {
  _ProgramEntityQueryUpdate get updateFirst =>
      _ProgramEntityQueryBuilderUpdateImpl(this, limit: 1);

  _ProgramEntityQueryUpdate get updateAll =>
      _ProgramEntityQueryBuilderUpdateImpl(this);
}

extension ProgramEntityQueryFilter
    on QueryBuilder<ProgramEntity, ProgramEntity, QFilterCondition> {
  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      clubIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      imageIdBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      startDateBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      endDateBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      mediaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension ProgramEntityQueryObject
    on QueryBuilder<ProgramEntity, ProgramEntity, QFilterCondition> {
  QueryBuilder<ProgramEntity, ProgramEntity, QAfterFilterCondition> media(
      FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 6);
    });
  }
}

extension ProgramEntityQuerySortBy
    on QueryBuilder<ProgramEntity, ProgramEntity, QSortBy> {
  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      sortByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }
}

extension ProgramEntityQuerySortThenBy
    on QueryBuilder<ProgramEntity, ProgramEntity, QSortThenBy> {
  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByImageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      thenByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByEndDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }
}

extension ProgramEntityQueryWhereDistinct
    on QueryBuilder<ProgramEntity, ProgramEntity, QDistinct> {
  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByImageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByEndDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<ProgramEntity, ProgramEntity, QAfterDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }
}

extension ProgramEntityQueryProperty1
    on QueryBuilder<ProgramEntity, ProgramEntity, QProperty> {
  QueryBuilder<ProgramEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProgramEntity, int, QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProgramEntity, int?, QAfterProperty> imageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProgramEntity, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProgramEntity, DateTime?, QAfterProperty> startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProgramEntity, DateTime?, QAfterProperty> endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProgramEntity, MediaEmbedEntity?, QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProgramEntity, DateTime?, QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProgramEntity, DateTime?, QAfterProperty> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension ProgramEntityQueryProperty2<R>
    on QueryBuilder<ProgramEntity, R, QAfterProperty> {
  QueryBuilder<ProgramEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProgramEntity, (R, int), QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProgramEntity, (R, int?), QAfterProperty> imageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProgramEntity, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProgramEntity, (R, DateTime?), QAfterProperty>
      startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProgramEntity, (R, DateTime?), QAfterProperty>
      endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProgramEntity, (R, MediaEmbedEntity?), QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProgramEntity, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProgramEntity, (R, DateTime?), QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension ProgramEntityQueryProperty3<R1, R2>
    on QueryBuilder<ProgramEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<ProgramEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, int), QOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, int?), QOperations> imageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, DateTime?), QOperations>
      startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, DateTime?), QOperations>
      endDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, MediaEmbedEntity?), QOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ProgramEntity, (R1, R2, DateTime?), QOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}
