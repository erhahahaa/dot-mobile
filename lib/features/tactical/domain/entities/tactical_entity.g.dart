// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTacticalEntityCollection on Isar {
  IsarCollection<int, TacticalEntity> get tacticals => this.collection();
}

const TacticalEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'TacticalEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'clubId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'mediaId',
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
        name: 'board',
        type: IsarType.object,
        target: 'TacticalBoardEntity',
      ),
      IsarPropertySchema(
        name: 'strategic',
        type: IsarType.object,
        target: 'TacticalStrategicEntity',
      ),
      IsarPropertySchema(
        name: 'isLive',
        type: IsarType.bool,
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
  converter: IsarObjectConverter<int, TacticalEntity>(
    serialize: serializeTacticalEntity,
    deserialize: deserializeTacticalEntity,
    deserializeProperty: deserializeTacticalEntityProp,
  ),
  embeddedSchemas: [
    TacticalBoardEntitySchema,
    TacticalStrategicEntitySchema,
    PlayerEntitySchema,
    ArrowEntitySchema,
    MediaEmbedEntitySchema
  ],
);

@isarProtected
int serializeTacticalEntity(IsarWriter writer, TacticalEntity object) {
  IsarCore.writeLong(writer, 1, object.clubId);
  IsarCore.writeLong(writer, 2, object.mediaId ?? -9223372036854775808);
  IsarCore.writeString(writer, 3, object.name);
  {
    final value = object.description;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.board;
    final objectWriter = IsarCore.beginObject(writer, 5);
    serializeTacticalBoardEntity(objectWriter, value);
    IsarCore.endObject(writer, objectWriter);
  }
  {
    final value = object.strategic;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 6);
      serializeTacticalStrategicEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  IsarCore.writeBool(writer, 7, object.isLive);
  {
    final value = object.media;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      final objectWriter = IsarCore.beginObject(writer, 8);
      serializeMediaEmbedEntity(objectWriter, value);
      IsarCore.endObject(writer, objectWriter);
    }
  }
  IsarCore.writeLong(writer, 9,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 10,
      object.updatedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  return object.id;
}

@isarProtected
TacticalEntity deserializeTacticalEntity(IsarReader reader) {
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
  final int? _mediaId;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _mediaId = null;
    } else {
      _mediaId = value;
    }
  }
  final String _name;
  _name = IsarCore.readString(reader, 3) ?? 'SBY Tactical exhibition';
  final String? _description;
  _description = IsarCore.readString(reader, 4);
  final TacticalBoardEntity _board;
  {
    final objectReader = IsarCore.readObject(reader, 5);
    if (objectReader.isNull) {
      _board = TacticalBoardEntity();
    } else {
      final embedded = deserializeTacticalBoardEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _board = embedded;
    }
  }
  final TacticalStrategicEntity? _strategic;
  {
    final objectReader = IsarCore.readObject(reader, 6);
    if (objectReader.isNull) {
      _strategic = null;
    } else {
      final embedded = deserializeTacticalStrategicEntity(objectReader);
      IsarCore.freeReader(objectReader);
      _strategic = embedded;
    }
  }
  final bool _isLive;
  _isLive = IsarCore.readBool(reader, 7);
  final MediaEmbedEntity? _media;
  {
    final objectReader = IsarCore.readObject(reader, 8);
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
    final value = IsarCore.readLong(reader, 9);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _updatedAt;
  {
    final value = IsarCore.readLong(reader, 10);
    if (value == -9223372036854775808) {
      _updatedAt = null;
    } else {
      _updatedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = TacticalEntity(
    id: _id,
    clubId: _clubId,
    mediaId: _mediaId,
    name: _name,
    description: _description,
    board: _board,
    strategic: _strategic,
    isLive: _isLive,
    media: _media,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeTacticalEntityProp(IsarReader reader, int property) {
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
      return IsarCore.readString(reader, 3) ?? 'SBY Tactical exhibition';
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      {
        final objectReader = IsarCore.readObject(reader, 5);
        if (objectReader.isNull) {
          return TacticalBoardEntity();
        } else {
          final embedded = deserializeTacticalBoardEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 6:
      {
        final objectReader = IsarCore.readObject(reader, 6);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeTacticalStrategicEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 7:
      return IsarCore.readBool(reader, 7);
    case 8:
      {
        final objectReader = IsarCore.readObject(reader, 8);
        if (objectReader.isNull) {
          return null;
        } else {
          final embedded = deserializeMediaEmbedEntity(objectReader);
          IsarCore.freeReader(objectReader);
          return embedded;
        }
      }
    case 9:
      {
        final value = IsarCore.readLong(reader, 9);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 10:
      {
        final value = IsarCore.readLong(reader, 10);
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

sealed class _TacticalEntityUpdate {
  bool call({
    required int id,
    int? clubId,
    int? mediaId,
    String? name,
    String? description,
    bool? isLive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _TacticalEntityUpdateImpl implements _TacticalEntityUpdate {
  const _TacticalEntityUpdateImpl(this.collection);

  final IsarCollection<int, TacticalEntity> collection;

  @override
  bool call({
    required int id,
    Object? clubId = ignore,
    Object? mediaId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? isLive = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (clubId != ignore) 1: clubId as int?,
          if (mediaId != ignore) 2: mediaId as int?,
          if (name != ignore) 3: name as String?,
          if (description != ignore) 4: description as String?,
          if (isLive != ignore) 7: isLive as bool?,
          if (createdAt != ignore) 9: createdAt as DateTime?,
          if (updatedAt != ignore) 10: updatedAt as DateTime?,
        }) >
        0;
  }
}

sealed class _TacticalEntityUpdateAll {
  int call({
    required List<int> id,
    int? clubId,
    int? mediaId,
    String? name,
    String? description,
    bool? isLive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _TacticalEntityUpdateAllImpl implements _TacticalEntityUpdateAll {
  const _TacticalEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, TacticalEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? clubId = ignore,
    Object? mediaId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? isLive = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (clubId != ignore) 1: clubId as int?,
      if (mediaId != ignore) 2: mediaId as int?,
      if (name != ignore) 3: name as String?,
      if (description != ignore) 4: description as String?,
      if (isLive != ignore) 7: isLive as bool?,
      if (createdAt != ignore) 9: createdAt as DateTime?,
      if (updatedAt != ignore) 10: updatedAt as DateTime?,
    });
  }
}

extension TacticalEntityUpdate on IsarCollection<int, TacticalEntity> {
  _TacticalEntityUpdate get update => _TacticalEntityUpdateImpl(this);

  _TacticalEntityUpdateAll get updateAll => _TacticalEntityUpdateAllImpl(this);
}

sealed class _TacticalEntityQueryUpdate {
  int call({
    int? clubId,
    int? mediaId,
    String? name,
    String? description,
    bool? isLive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _TacticalEntityQueryUpdateImpl implements _TacticalEntityQueryUpdate {
  const _TacticalEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<TacticalEntity> query;
  final int? limit;

  @override
  int call({
    Object? clubId = ignore,
    Object? mediaId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? isLive = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (clubId != ignore) 1: clubId as int?,
      if (mediaId != ignore) 2: mediaId as int?,
      if (name != ignore) 3: name as String?,
      if (description != ignore) 4: description as String?,
      if (isLive != ignore) 7: isLive as bool?,
      if (createdAt != ignore) 9: createdAt as DateTime?,
      if (updatedAt != ignore) 10: updatedAt as DateTime?,
    });
  }
}

extension TacticalEntityQueryUpdate on IsarQuery<TacticalEntity> {
  _TacticalEntityQueryUpdate get updateFirst =>
      _TacticalEntityQueryUpdateImpl(this, limit: 1);

  _TacticalEntityQueryUpdate get updateAll =>
      _TacticalEntityQueryUpdateImpl(this);
}

class _TacticalEntityQueryBuilderUpdateImpl
    implements _TacticalEntityQueryUpdate {
  const _TacticalEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<TacticalEntity, TacticalEntity, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? clubId = ignore,
    Object? mediaId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? isLive = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (clubId != ignore) 1: clubId as int?,
        if (mediaId != ignore) 2: mediaId as int?,
        if (name != ignore) 3: name as String?,
        if (description != ignore) 4: description as String?,
        if (isLive != ignore) 7: isLive as bool?,
        if (createdAt != ignore) 9: createdAt as DateTime?,
        if (updatedAt != ignore) 10: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension TacticalEntityQueryBuilderUpdate
    on QueryBuilder<TacticalEntity, TacticalEntity, QOperations> {
  _TacticalEntityQueryUpdate get updateFirst =>
      _TacticalEntityQueryBuilderUpdateImpl(this, limit: 1);

  _TacticalEntityQueryUpdate get updateAll =>
      _TacticalEntityQueryBuilderUpdateImpl(this);
}

extension TacticalEntityQueryFilter
    on QueryBuilder<TacticalEntity, TacticalEntity, QFilterCondition> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String? value, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String? value, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionStartsWith(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      strategicIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      strategicIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      isLiveEqualTo(
    bool value,
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

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      mediaIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension TacticalEntityQueryObject
    on QueryBuilder<TacticalEntity, TacticalEntity, QFilterCondition> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> board(
      FilterQuery<TacticalBoardEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 5);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> strategic(
      FilterQuery<TacticalStrategicEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 6);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterFilterCondition> media(
      FilterQuery<MediaEmbedEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, 8);
    });
  }
}

extension TacticalEntityQuerySortBy
    on QueryBuilder<TacticalEntity, TacticalEntity, QSortBy> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }
}

extension TacticalEntityQuerySortThenBy
    on QueryBuilder<TacticalEntity, TacticalEntity, QSortThenBy> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByIsLiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }
}

extension TacticalEntityQueryWhereDistinct
    on QueryBuilder<TacticalEntity, TacticalEntity, QDistinct> {
  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByIsLive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<TacticalEntity, TacticalEntity, QAfterDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10);
    });
  }
}

extension TacticalEntityQueryProperty1
    on QueryBuilder<TacticalEntity, TacticalEntity, QProperty> {
  QueryBuilder<TacticalEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TacticalEntity, int, QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TacticalEntity, int?, QAfterProperty> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TacticalEntity, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TacticalEntity, String?, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TacticalEntity, TacticalBoardEntity, QAfterProperty>
      boardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<TacticalEntity, TacticalStrategicEntity?, QAfterProperty>
      strategicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<TacticalEntity, bool, QAfterProperty> isLiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<TacticalEntity, MediaEmbedEntity?, QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<TacticalEntity, DateTime?, QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<TacticalEntity, DateTime?, QAfterProperty> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }
}

extension TacticalEntityQueryProperty2<R>
    on QueryBuilder<TacticalEntity, R, QAfterProperty> {
  QueryBuilder<TacticalEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TacticalEntity, (R, int), QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TacticalEntity, (R, int?), QAfterProperty> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TacticalEntity, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TacticalEntity, (R, String?), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TacticalEntity, (R, TacticalBoardEntity), QAfterProperty>
      boardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<TacticalEntity, (R, TacticalStrategicEntity?), QAfterProperty>
      strategicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<TacticalEntity, (R, bool), QAfterProperty> isLiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<TacticalEntity, (R, MediaEmbedEntity?), QAfterProperty>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<TacticalEntity, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<TacticalEntity, (R, DateTime?), QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }
}

extension TacticalEntityQueryProperty3<R1, R2>
    on QueryBuilder<TacticalEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<TacticalEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, int), QOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, int?), QOperations> mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, String?), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, TacticalBoardEntity), QOperations>
      boardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, TacticalStrategicEntity?), QOperations>
      strategicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, bool), QOperations> isLiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, MediaEmbedEntity?), QOperations>
      mediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<TacticalEntity, (R1, R2, DateTime?), QOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const TacticalBoardEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'TacticalBoardEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'width',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'height',
        type: IsarType.double,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, TacticalBoardEntity>(
    serialize: serializeTacticalBoardEntity,
    deserialize: deserializeTacticalBoardEntity,
  ),
);

@isarProtected
int serializeTacticalBoardEntity(
    IsarWriter writer, TacticalBoardEntity object) {
  IsarCore.writeDouble(writer, 1, object.width);
  IsarCore.writeDouble(writer, 2, object.height);
  return 0;
}

@isarProtected
TacticalBoardEntity deserializeTacticalBoardEntity(IsarReader reader) {
  final double _width;
  {
    final value = IsarCore.readDouble(reader, 1);
    if (value.isNaN) {
      _width = 0;
    } else {
      _width = value;
    }
  }
  final double _height;
  {
    final value = IsarCore.readDouble(reader, 2);
    if (value.isNaN) {
      _height = 0;
    } else {
      _height = value;
    }
  }
  final object = TacticalBoardEntity(
    width: _width,
    height: _height,
  );
  return object;
}

extension TacticalBoardEntityQueryFilter on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {
  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      widthBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<TacticalBoardEntity, TacticalBoardEntity, QAfterFilterCondition>
      heightBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }
}

extension TacticalBoardEntityQueryObject on QueryBuilder<TacticalBoardEntity,
    TacticalBoardEntity, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const TacticalStrategicEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'TacticalStrategicEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'players',
        type: IsarType.objectList,
        target: 'PlayerEntity',
      ),
      IsarPropertySchema(
        name: 'arrows',
        type: IsarType.objectList,
        target: 'ArrowEntity',
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, TacticalStrategicEntity>(
    serialize: serializeTacticalStrategicEntity,
    deserialize: deserializeTacticalStrategicEntity,
  ),
);

@isarProtected
int serializeTacticalStrategicEntity(
    IsarWriter writer, TacticalStrategicEntity object) {
  {
    final list = object.players;
    final listWriter = IsarCore.beginList(writer, 1, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializePlayerEntity(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.arrows;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeArrowEntity(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  return 0;
}

@isarProtected
TacticalStrategicEntity deserializeTacticalStrategicEntity(IsarReader reader) {
  final List<PlayerEntity> _players;
  {
    final length = IsarCore.readList(reader, 1, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _players = const [];
      } else {
        final list =
            List<PlayerEntity>.filled(length, PlayerEntity(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = PlayerEntity();
            } else {
              final embedded = deserializePlayerEntity(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _players = list;
      }
    }
  }
  final List<ArrowEntity> _arrows;
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _arrows = const [];
      } else {
        final list =
            List<ArrowEntity>.filled(length, ArrowEntity(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = ArrowEntity();
            } else {
              final embedded = deserializeArrowEntity(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _arrows = list;
      }
    }
  }
  final object = TacticalStrategicEntity(
    players: _players,
    arrows: _arrows,
  );
  return object;
}

extension TacticalStrategicEntityQueryFilter on QueryBuilder<
    TacticalStrategicEntity, TacticalStrategicEntity, QFilterCondition> {
  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> playersIsEmpty() {
    return not().playersIsNotEmpty();
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> playersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 1, value: null),
      );
    });
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> arrowsIsEmpty() {
    return not().arrowsIsNotEmpty();
  }

  QueryBuilder<TacticalStrategicEntity, TacticalStrategicEntity,
      QAfterFilterCondition> arrowsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }
}

extension TacticalStrategicEntityQueryObject on QueryBuilder<
    TacticalStrategicEntity, TacticalStrategicEntity, QFilterCondition> {}
