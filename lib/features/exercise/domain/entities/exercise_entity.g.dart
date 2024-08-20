// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetExerciseEntityCollection on Isar {
  IsarCollection<int, ExerciseEntity> get exercises => this.collection();
}

const ExerciseEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ExerciseEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'programId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'mediaId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'order',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'repetition',
        type: IsarType.object,
        target: 'ExerciseUnitValueEntity',
      ),
      IsarPropertySchema(
        name: 'sets',
        type: IsarType.object,
        target: 'ExerciseUnitValueEntity',
      ),
      IsarPropertySchema(
        name: 'rest',
        type: IsarType.object,
        target: 'ExerciseUnitValueEntity',
      ),
      IsarPropertySchema(
        name: 'tempo',
        type: IsarType.object,
        target: 'ExerciseUnitValueEntity',
      ),
      IsarPropertySchema(
        name: 'intensity',
        type: IsarType.object,
        target: 'ExerciseUnitValueEntity',
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
  converter: IsarObjectConverter<int, ExerciseEntity>(
    serialize: serializeExerciseEntity,
    deserialize: deserializeExerciseEntity,
    deserializeProperty: deserializeExerciseEntityProp,
  ),
  embeddedSchemas: [ExerciseUnitValueEntitySchema, MediaEmbedEntitySchema],
);

@isarProtected
int serializeExerciseEntity(IsarWriter writer, ExerciseEntity object) {
  IsarCore.writeLong(writer, 1, object.programId);
  IsarCore.writeLong(writer, 2, object.mediaId ?? -9223372036854775808);
  IsarCore.writeLong(writer, 3, object.order);
  IsarCore.writeString(writer, 4, object.name);
  {
    final value = object.description;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.repetition;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 6);
      serializeExerciseUnitValueEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.sets;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 7);
      serializeExerciseUnitValueEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.rest;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 8);
      serializeExerciseUnitValueEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.tempo;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 9);
      serializeExerciseUnitValueEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.intensity;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 10);
      serializeExerciseUnitValueEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  {
    final value = object.media;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 11);
      serializeMediaEmbedEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  IsarCore.writeLong(writer, 12,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 13,
      object.updatedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  return object.id;
}

@isarProtected
ExerciseEntity deserializeExerciseEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _programId;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _programId = 0;
    } else {
      _programId = value;
    }
  }
  final int? _mediaId;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _mediaId = null;
    } else {
      _mediaId = value;
    }
  }
  final int _order;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _order = 0;
    } else {
      _order = value;
    }
  }
  final String _name;
  _name = IsarCore.readString(reader, 4) ?? 'DOT Exercise 0';
  final String? _description;
  _description = IsarCore.readString(reader, 5);
  final ExerciseUnitValueEntity? _repetition;
  {
    final objectReader = IsarCore.readObject(reader, 6);
    if (objectReader.isNull) {
      _repetition = null;
    } else {
      final embedded = deserializeExerciseUnitValueEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _repetition = embedded;
    }
  }
  final ExerciseUnitValueEntity? _sets;
  {
    final objectReader = IsarCore.readObject(reader, 7);
    if (objectReader.isNull) {
      _sets = null;
    } else {
      final embedded = deserializeExerciseUnitValueEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _sets = embedded;
    }
  }
  final ExerciseUnitValueEntity? _rest;
  {
    final objectReader = IsarCore.readObject(reader, 8);
    if (objectReader.isNull) {
      _rest = null;
    } else {
      final embedded = deserializeExerciseUnitValueEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _rest = embedded;
    }
  }
  final ExerciseUnitValueEntity? _tempo;
  {
    final objectReader = IsarCore.readObject(reader, 9);
    if (objectReader.isNull) {
      _tempo = null;
    } else {
      final embedded = deserializeExerciseUnitValueEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _tempo = embedded;
    }
  }
  final ExerciseUnitValueEntity? _intensity;
  {
    final objectReader = IsarCore.readObject(reader, 10);
    if (objectReader.isNull) {
      _intensity = null;
    } else {
      final embedded = deserializeExerciseUnitValueEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _intensity = embedded;
    }
  }
  final MediaEmbedEntity? _media;
  {
    final objectReader = IsarCore.readObject(reader, 11);
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
    final value = IsarCore.readLong(reader, 12);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _updatedAt;
  {
    final value = IsarCore.readLong(reader, 13);
    if (value == -9223372036854775808) {
      _updatedAt = null;
    } else {
      _updatedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = ExerciseEntity(
    id: _id,
    programId: _programId,
    mediaId: _mediaId,
    order: _order,
    name: _name,
    description: _description,
    repetition: _repetition,
    sets: _sets,
    rest: _rest,
    tempo: _tempo,
    intensity: _intensity,
    media: _media,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeExerciseEntityProp(IsarReader reader, int property) {
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
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return 0;
        } else {
          return value;
        }
      }
    case 4:
      return IsarCore.readString(reader, 4) ?? 'DOT Exercise 0';
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      {
        final objectReader = IsarCore.readObject(reader, 6);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeExerciseUnitValueEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 7:
      {
        final objectReader = IsarCore.readObject(reader, 7);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeExerciseUnitValueEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 8:
      {
        final objectReader = IsarCore.readObject(reader, 8);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeExerciseUnitValueEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 9:
      {
        final objectReader = IsarCore.readObject(reader, 9);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeExerciseUnitValueEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 10:
      {
        final objectReader = IsarCore.readObject(reader, 10);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeExerciseUnitValueEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 11:
      {
        final objectReader = IsarCore.readObject(reader, 11);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeMediaEmbedEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 12:
      {
        final value = IsarCore.readLong(reader, 12);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 13:
      {
        final value = IsarCore.readLong(reader, 13);
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

sealed class _ExerciseEntityUpdate {
  bool call({
    required int id,
    int? programId,
    int? mediaId,
    int? order,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ExerciseEntityUpdateImpl implements _ExerciseEntityUpdate {
  const _ExerciseEntityUpdateImpl(this.collection);

  final IsarCollection<int, ExerciseEntity> collection;

  @override
  bool call({
    required int id,
    Object? programId = ignore,
    Object? mediaId = ignore,
    Object? order = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (programId != ignore) 1: programId as int?,
          if (mediaId != ignore) 2: mediaId as int?,
          if (order != ignore) 3: order as int?,
          if (name != ignore) 4: name as String?,
          if (description != ignore) 5: description as String?,
          if (createdAt != ignore) 12: createdAt as DateTime?,
          if (updatedAt != ignore) 13: updatedAt as DateTime?,
        }) >
        0;
  }
}

sealed class _ExerciseEntityUpdateAll {
  int call({
    required List<int> id,
    int? programId,
    int? mediaId,
    int? order,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ExerciseEntityUpdateAllImpl implements _ExerciseEntityUpdateAll {
  const _ExerciseEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, ExerciseEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? programId = ignore,
    Object? mediaId = ignore,
    Object? order = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (programId != ignore) 1: programId as int?,
      if (mediaId != ignore) 2: mediaId as int?,
      if (order != ignore) 3: order as int?,
      if (name != ignore) 4: name as String?,
      if (description != ignore) 5: description as String?,
      if (createdAt != ignore) 12: createdAt as DateTime?,
      if (updatedAt != ignore) 13: updatedAt as DateTime?,
    });
  }
}

extension ExerciseEntityUpdate on IsarCollection<int, ExerciseEntity> {
  _ExerciseEntityUpdate get update => _ExerciseEntityUpdateImpl(this);

  _ExerciseEntityUpdateAll get updateAll => _ExerciseEntityUpdateAllImpl(this);
}

sealed class _ExerciseEntityQueryUpdate {
  int call({
    int? programId,
    int? mediaId,
    int? order,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _ExerciseEntityQueryUpdateImpl implements _ExerciseEntityQueryUpdate {
  const _ExerciseEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ExerciseEntity> query;
  final int? limit;

  @override
  int call({
    Object? programId = ignore,
    Object? mediaId = ignore,
    Object? order = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (programId != ignore) 1: programId as int?,
      if (mediaId != ignore) 2: mediaId as int?,
      if (order != ignore) 3: order as int?,
      if (name != ignore) 4: name as String?,
      if (description != ignore) 5: description as String?,
      if (createdAt != ignore) 12: createdAt as DateTime?,
      if (updatedAt != ignore) 13: updatedAt as DateTime?,
    });
  }
}

extension ExerciseEntityQueryUpdate on IsarQuery<ExerciseEntity> {
  _ExerciseEntityQueryUpdate get updateFirst =>
      _ExerciseEntityQueryUpdateImpl(this, limit: 1);

  _ExerciseEntityQueryUpdate get updateAll =>
      _ExerciseEntityQueryUpdateImpl(this);
}

class _ExerciseEntityQueryBuilderUpdateImpl
    implements _ExerciseEntityQueryUpdate {
  const _ExerciseEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ExerciseEntity, ExerciseEntity, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? programId = ignore,
    Object? mediaId = ignore,
    Object? order = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (programId != ignore) 1: programId as int?,
        if (mediaId != ignore) 2: mediaId as int?,
        if (order != ignore) 3: order as int?,
        if (name != ignore) 4: name as String?,
        if (description != ignore) 5: description as String?,
        if (createdAt != ignore) 12: createdAt as DateTime?,
        if (updatedAt != ignore) 13: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension ExerciseEntityQueryBuilderUpdate
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QOperations> {
  _ExerciseEntityQueryUpdate get updateFirst =>
      _ExerciseEntityQueryBuilderUpdateImpl(this, limit: 1);

  _ExerciseEntityQueryUpdate get updateAll =>
      _ExerciseEntityQueryBuilderUpdateImpl(this);
}

extension ExerciseEntityQueryFilter
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QFilterCondition> {
  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdGreaterThan(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdGreaterThanOrEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdLessThan(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdLessThanOrEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      programIdBetween(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdGreaterThan(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdGreaterThanOrEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdLessThan(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdLessThanOrEqualTo(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIdBetween(
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

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      orderBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      repetitionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      repetitionIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      setsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      setsIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      restIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      restIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      tempoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      tempoIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      intensityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      intensityIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      mediaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension ExerciseEntityQueryObject
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QFilterCondition> {
  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition>
      repetition(FilterQuery<ExerciseUnitValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 6);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> sets(
      FilterQuery<ExerciseUnitValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 7);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> rest(
      FilterQuery<ExerciseUnitValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 8);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> tempo(
      FilterQuery<ExerciseUnitValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 9);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> intensity(
      FilterQuery<ExerciseUnitValueEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 10);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterFilterCondition> media(
      FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 11);
    });
  }
}

extension ExerciseEntityQuerySortBy
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QSortBy> {
  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      sortByProgramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      sortByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }
}

extension ExerciseEntityQuerySortThenBy
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QSortThenBy> {
  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      thenByProgramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      thenByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }
}

extension ExerciseEntityQueryWhereDistinct
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QDistinct> {
  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByProgramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseEntity, QAfterDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }
}

extension ExerciseEntityQueryProperty1
    on QueryBuilder<ExerciseEntity, ExerciseEntity, QProperty> {
  QueryBuilder<ExerciseEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ExerciseEntity, int, QAfterProperty> programIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ExerciseEntity, int?, QAfterProperty> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ExerciseEntity, int, QAfterProperty> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ExerciseEntity, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ExerciseEntity, String?, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseUnitValueEntity?, QAfterProperty>
      repetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseUnitValueEntity?, QAfterProperty>
      setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseUnitValueEntity?, QAfterProperty>
      restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseUnitValueEntity?, QAfterProperty>
      tempoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ExerciseEntity, ExerciseUnitValueEntity?, QAfterProperty>
      intensityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ExerciseEntity, MediaEmbedEntity?, QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ExerciseEntity, DateTime?, QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ExerciseEntity, DateTime?, QAfterProperty> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}

extension ExerciseEntityQueryProperty2<R>
    on QueryBuilder<ExerciseEntity, R, QAfterProperty> {
  QueryBuilder<ExerciseEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ExerciseEntity, (R, int), QAfterProperty> programIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ExerciseEntity, (R, int?), QAfterProperty> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ExerciseEntity, (R, int), QAfterProperty> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ExerciseEntity, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ExerciseEntity, (R, String?), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ExerciseEntity, (R, ExerciseUnitValueEntity?), QAfterProperty>
      repetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ExerciseEntity, (R, ExerciseUnitValueEntity?), QAfterProperty>
      setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ExerciseEntity, (R, ExerciseUnitValueEntity?), QAfterProperty>
      restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ExerciseEntity, (R, ExerciseUnitValueEntity?), QAfterProperty>
      tempoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ExerciseEntity, (R, ExerciseUnitValueEntity?), QAfterProperty>
      intensityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ExerciseEntity, (R, MediaEmbedEntity?), QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ExerciseEntity, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ExerciseEntity, (R, DateTime?), QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}

extension ExerciseEntityQueryProperty3<R1, R2>
    on QueryBuilder<ExerciseEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<ExerciseEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, int), QOperations> programIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, int?), QOperations> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, int), QOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, String?), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, ExerciseUnitValueEntity?), QOperations>
      repetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, ExerciseUnitValueEntity?), QOperations>
      setsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, ExerciseUnitValueEntity?), QOperations>
      restProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, ExerciseUnitValueEntity?), QOperations>
      tempoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, ExerciseUnitValueEntity?), QOperations>
      intensityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, MediaEmbedEntity?), QOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ExerciseEntity, (R1, R2, DateTime?), QOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const ExerciseUnitValueEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ExerciseUnitValueEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'unit',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'value',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, ExerciseUnitValueEntity>(
    serialize: serializeExerciseUnitValueEntity,
    deserialize: deserializeExerciseUnitValueEntity,
  ),
);

@isarProtected
int serializeExerciseUnitValueEntity(
    IsarWriter writer, ExerciseUnitValueEntity object) {
  {
    final value = object.unit;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  IsarCore.writeLong(writer, 2, object.value);
  return 0;
}

@isarProtected
ExerciseUnitValueEntity deserializeExerciseUnitValueEntity(IsarReader reader) {
  final String? _unit;
  _unit = IsarCore.readString(reader, 1);
  final int _value;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _value = 0;
    } else {
      _value = value;
    }
  }
  final object = ExerciseUnitValueEntity(
    unit: _unit,
    value: _value,
  );
  return object;
}

extension ExerciseUnitValueEntityQueryFilter on QueryBuilder<
    ExerciseUnitValueEntity, ExerciseUnitValueEntity, QFilterCondition> {
  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
          QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
          QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueEqualTo(
    int value,
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

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueGreaterThan(
    int value,
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

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueGreaterThanOrEqualTo(
    int value,
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

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueLessThan(
    int value,
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

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueLessThanOrEqualTo(
    int value,
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

  QueryBuilder<ExerciseUnitValueEntity, ExerciseUnitValueEntity,
      QAfterFilterCondition> valueBetween(
    int lower,
    int upper,
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
}

extension ExerciseUnitValueEntityQueryObject on QueryBuilder<
    ExerciseUnitValueEntity, ExerciseUnitValueEntity, QFilterCondition> {}
