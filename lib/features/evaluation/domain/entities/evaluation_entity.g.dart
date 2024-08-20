// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetEvaluationEntityCollection on Isar {
  IsarCollection<int, EvaluationEntity> get evaluations => this.collection();
}

const EvaluationEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'EvaluationEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'examId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'clubId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'athleteId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'coachId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'evaluations',
        type: IsarType.objectList,
        target: 'QuestionEvaluationEntity',
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
  converter: IsarObjectConverter<int, EvaluationEntity>(
    serialize: serializeEvaluationEntity,
    deserialize: deserializeEvaluationEntity,
    deserializeProperty: deserializeEvaluationEntityProp,
  ),
  embeddedSchemas: [QuestionEvaluationEntitySchema],
);

@isarProtected
int serializeEvaluationEntity(IsarWriter writer, EvaluationEntity object) {
  IsarCore.writeLong(writer, 1, object.examId);
  IsarCore.writeLong(writer, 2, object.clubId);
  IsarCore.writeLong(writer, 3, object.athleteId);
  IsarCore.writeLong(writer, 4, object.coachId);
  {
    final list = object.evaluations;
    final listWriter = IsarCore.beginList(writer, 5, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeQuestionEvaluationEntity(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(writer, 6,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 7,
      object.updatedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  return object.id;
}

@isarProtected
EvaluationEntity deserializeEvaluationEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _examId;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _examId = 0;
    } else {
      _examId = value;
    }
  }
  final int _clubId;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _clubId = 0;
    } else {
      _clubId = value;
    }
  }
  final int _athleteId;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _athleteId = 0;
    } else {
      _athleteId = value;
    }
  }
  final int _coachId;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _coachId = 0;
    } else {
      _coachId = value;
    }
  }
  final List<QuestionEvaluationEntity> _evaluations;
  {
    final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _evaluations = const [];
      } else {
        final list = List<QuestionEvaluationEntity>.filled(
            length, QuestionEvaluationEntity(),
            growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = QuestionEvaluationEntity();
            } else {
              final embedded =
                  deserializeQuestionEvaluationEntity(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        _evaluations = list;
      }
    }
  }
  final DateTime? _createdAt;
  {
    final value = IsarCore.readLong(reader, 6);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _updatedAt;
  {
    final value = IsarCore.readLong(reader, 7);
    if (value == -9223372036854775808) {
      _updatedAt = null;
    } else {
      _updatedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = EvaluationEntity(
    id: _id,
    examId: _examId,
    clubId: _clubId,
    athleteId: _athleteId,
    coachId: _coachId,
    evaluations: _evaluations,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeEvaluationEntityProp(IsarReader reader, int property) {
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
          return 0;
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
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return 0;
        } else {
          return value;
        }
      }
    case 5:
      {
        final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const [];
          } else {
            final list = List<QuestionEvaluationEntity>.filled(
                length, QuestionEvaluationEntity(),
                growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = QuestionEvaluationEntity();
                } else {
                  final embedded =
                      deserializeQuestionEvaluationEntity(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 6:
      {
        final value = IsarCore.readLong(reader, 6);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
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
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _EvaluationEntityUpdate {
  bool call({
    required int id,
    int? examId,
    int? clubId,
    int? athleteId,
    int? coachId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _EvaluationEntityUpdateImpl implements _EvaluationEntityUpdate {
  const _EvaluationEntityUpdateImpl(this.collection);

  final IsarCollection<int, EvaluationEntity> collection;

  @override
  bool call({
    required int id,
    Object? examId = ignore,
    Object? clubId = ignore,
    Object? athleteId = ignore,
    Object? coachId = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (examId != ignore) 1: examId as int?,
          if (clubId != ignore) 2: clubId as int?,
          if (athleteId != ignore) 3: athleteId as int?,
          if (coachId != ignore) 4: coachId as int?,
          if (createdAt != ignore) 6: createdAt as DateTime?,
          if (updatedAt != ignore) 7: updatedAt as DateTime?,
        }) >
        0;
  }
}

sealed class _EvaluationEntityUpdateAll {
  int call({
    required List<int> id,
    int? examId,
    int? clubId,
    int? athleteId,
    int? coachId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _EvaluationEntityUpdateAllImpl implements _EvaluationEntityUpdateAll {
  const _EvaluationEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, EvaluationEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? examId = ignore,
    Object? clubId = ignore,
    Object? athleteId = ignore,
    Object? coachId = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (examId != ignore) 1: examId as int?,
      if (clubId != ignore) 2: clubId as int?,
      if (athleteId != ignore) 3: athleteId as int?,
      if (coachId != ignore) 4: coachId as int?,
      if (createdAt != ignore) 6: createdAt as DateTime?,
      if (updatedAt != ignore) 7: updatedAt as DateTime?,
    });
  }
}

extension EvaluationEntityUpdate on IsarCollection<int, EvaluationEntity> {
  _EvaluationEntityUpdate get update => _EvaluationEntityUpdateImpl(this);

  _EvaluationEntityUpdateAll get updateAll =>
      _EvaluationEntityUpdateAllImpl(this);
}

sealed class _EvaluationEntityQueryUpdate {
  int call({
    int? examId,
    int? clubId,
    int? athleteId,
    int? coachId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _EvaluationEntityQueryUpdateImpl implements _EvaluationEntityQueryUpdate {
  const _EvaluationEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<EvaluationEntity> query;
  final int? limit;

  @override
  int call({
    Object? examId = ignore,
    Object? clubId = ignore,
    Object? athleteId = ignore,
    Object? coachId = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (examId != ignore) 1: examId as int?,
      if (clubId != ignore) 2: clubId as int?,
      if (athleteId != ignore) 3: athleteId as int?,
      if (coachId != ignore) 4: coachId as int?,
      if (createdAt != ignore) 6: createdAt as DateTime?,
      if (updatedAt != ignore) 7: updatedAt as DateTime?,
    });
  }
}

extension EvaluationEntityQueryUpdate on IsarQuery<EvaluationEntity> {
  _EvaluationEntityQueryUpdate get updateFirst =>
      _EvaluationEntityQueryUpdateImpl(this, limit: 1);

  _EvaluationEntityQueryUpdate get updateAll =>
      _EvaluationEntityQueryUpdateImpl(this);
}

class _EvaluationEntityQueryBuilderUpdateImpl
    implements _EvaluationEntityQueryUpdate {
  const _EvaluationEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<EvaluationEntity, EvaluationEntity, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? examId = ignore,
    Object? clubId = ignore,
    Object? athleteId = ignore,
    Object? coachId = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (examId != ignore) 1: examId as int?,
        if (clubId != ignore) 2: clubId as int?,
        if (athleteId != ignore) 3: athleteId as int?,
        if (coachId != ignore) 4: coachId as int?,
        if (createdAt != ignore) 6: createdAt as DateTime?,
        if (updatedAt != ignore) 7: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension EvaluationEntityQueryBuilderUpdate
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QOperations> {
  _EvaluationEntityQueryUpdate get updateFirst =>
      _EvaluationEntityQueryBuilderUpdateImpl(this, limit: 1);

  _EvaluationEntityQueryUpdate get updateAll =>
      _EvaluationEntityQueryBuilderUpdateImpl(this);
}

extension EvaluationEntityQueryFilter
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QFilterCondition> {
  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      idEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdGreaterThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdGreaterThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdLessThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdLessThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      examIdBetween(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdGreaterThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdGreaterThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdLessThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdLessThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      clubIdBetween(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdGreaterThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdGreaterThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdLessThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdLessThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      athleteIdBetween(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdEqualTo(
    int value,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdGreaterThan(
    int value,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdGreaterThanOrEqualTo(
    int value,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdLessThan(
    int value,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdLessThanOrEqualTo(
    int value,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      coachIdBetween(
    int lower,
    int upper,
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      evaluationsIsEmpty() {
    return not().evaluationsIsNotEmpty();
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      evaluationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 5, value: null),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtGreaterThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtLessThan(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtLessThanOrEqualTo(
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

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterFilterCondition>
      updatedAtBetween(
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
}

extension EvaluationEntityQueryObject
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QFilterCondition> {}

extension EvaluationEntityQuerySortBy
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QSortBy> {
  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByExamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByExamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByAthleteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByAthleteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByCoachId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByCoachIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }
}

extension EvaluationEntityQuerySortThenBy
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QSortThenBy> {
  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByExamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByExamIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByAthleteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByAthleteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByCoachId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByCoachIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }
}

extension EvaluationEntityQueryWhereDistinct
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QDistinct> {
  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByExamId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByAthleteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByCoachId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<EvaluationEntity, EvaluationEntity, QAfterDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }
}

extension EvaluationEntityQueryProperty1
    on QueryBuilder<EvaluationEntity, EvaluationEntity, QProperty> {
  QueryBuilder<EvaluationEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EvaluationEntity, int, QAfterProperty> examIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EvaluationEntity, int, QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EvaluationEntity, int, QAfterProperty> athleteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EvaluationEntity, int, QAfterProperty> coachIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EvaluationEntity, List<QuestionEvaluationEntity>, QAfterProperty>
      evaluationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<EvaluationEntity, DateTime?, QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<EvaluationEntity, DateTime?, QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension EvaluationEntityQueryProperty2<R>
    on QueryBuilder<EvaluationEntity, R, QAfterProperty> {
  QueryBuilder<EvaluationEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EvaluationEntity, (R, int), QAfterProperty> examIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EvaluationEntity, (R, int), QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EvaluationEntity, (R, int), QAfterProperty> athleteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EvaluationEntity, (R, int), QAfterProperty> coachIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EvaluationEntity, (R, List<QuestionEvaluationEntity>),
      QAfterProperty> evaluationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<EvaluationEntity, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<EvaluationEntity, (R, DateTime?), QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension EvaluationEntityQueryProperty3<R1, R2>
    on QueryBuilder<EvaluationEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<EvaluationEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, int), QOperations> examIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, int), QOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, int), QOperations>
      athleteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, int), QOperations> coachIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, List<QuestionEvaluationEntity>),
      QOperations> evaluationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<EvaluationEntity, (R1, R2, DateTime?), QOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const QuestionEvaluationEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'QuestionEvaluationEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'questionId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'answer',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'score',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'questionName',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, QuestionEvaluationEntity>(
    serialize: serializeQuestionEvaluationEntity,
    deserialize: deserializeQuestionEvaluationEntity,
  ),
);

@isarProtected
int serializeQuestionEvaluationEntity(
    IsarWriter writer, QuestionEvaluationEntity object) {
  IsarCore.writeLong(writer, 1, object.questionId);
  {
    final value = object.answer;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  IsarCore.writeLong(writer, 3, object.score ?? -9223372036854775808);
  {
    final value = object.questionName;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  return 0;
}

@isarProtected
QuestionEvaluationEntity deserializeQuestionEvaluationEntity(
    IsarReader reader) {
  final int _questionId;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _questionId = 0;
    } else {
      _questionId = value;
    }
  }
  final String? _answer;
  _answer = IsarCore.readString(reader, 2);
  final int? _score;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _score = null;
    } else {
      _score = value;
    }
  }
  final String? _questionName;
  _questionName = IsarCore.readString(reader, 4);
  final object = QuestionEvaluationEntity(
    questionId: _questionId,
    answer: _answer,
    score: _score,
    questionName: _questionName,
  );
  return object;
}

extension QuestionEvaluationEntityQueryFilter on QueryBuilder<
    QuestionEvaluationEntity, QuestionEvaluationEntity, QFilterCondition> {
  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdGreaterThan(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdGreaterThanOrEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdLessThan(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdLessThanOrEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionIdBetween(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
          QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
          QAfterFilterCondition>
      answerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreEqualTo(
    int? value,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreGreaterThan(
    int? value,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreGreaterThanOrEqualTo(
    int? value,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreLessThan(
    int? value,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreLessThanOrEqualTo(
    int? value,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> scoreBetween(
    int? lower,
    int? upper,
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameGreaterThan(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameGreaterThanOrEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameLessThan(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameLessThanOrEqualTo(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameBetween(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameStartsWith(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameEndsWith(
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
          QAfterFilterCondition>
      questionNameContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
          QAfterFilterCondition>
      questionNameMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<QuestionEvaluationEntity, QuestionEvaluationEntity,
      QAfterFilterCondition> questionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }
}

extension QuestionEvaluationEntityQueryObject on QueryBuilder<
    QuestionEvaluationEntity, QuestionEvaluationEntity, QFilterCondition> {}
