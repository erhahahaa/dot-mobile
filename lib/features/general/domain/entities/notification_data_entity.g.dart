// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetNotificationDataEntityCollection on Isar {
  IsarCollection<int, NotificationDataEntity> get notifications =>
      this.collection();
}

const NotificationDataEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'NotificationDataEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'uid',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'body',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'type',
        type: IsarType.string,
      ),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'uid',
        properties: [
          "uid",
        ],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, NotificationDataEntity>(
    serialize: serializeNotificationDataEntity,
    deserialize: deserializeNotificationDataEntity,
    deserializeProperty: deserializeNotificationDataEntityProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeNotificationDataEntity(
    IsarWriter writer, NotificationDataEntity object) {
  {
    final value = object.uid;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.title;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.body;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.type;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  return object.id;
}

@isarProtected
NotificationDataEntity deserializeNotificationDataEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _uid;
  _uid = IsarCore.readString(reader, 1);
  final String? _title;
  _title = IsarCore.readString(reader, 2);
  final String? _body;
  _body = IsarCore.readString(reader, 3);
  final String? _type;
  _type = IsarCore.readString(reader, 4);
  final object = NotificationDataEntity(
    id: _id,
    uid: _uid,
    title: _title,
    body: _body,
    type: _type,
  );
  return object;
}

@isarProtected
dynamic deserializeNotificationDataEntityProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _NotificationDataEntityUpdate {
  bool call({
    required int id,
    String? uid,
    String? title,
    String? body,
    String? type,
  });
}

class _NotificationDataEntityUpdateImpl
    implements _NotificationDataEntityUpdate {
  const _NotificationDataEntityUpdateImpl(this.collection);

  final IsarCollection<int, NotificationDataEntity> collection;

  @override
  bool call({
    required int id,
    Object? uid = ignore,
    Object? title = ignore,
    Object? body = ignore,
    Object? type = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (uid != ignore) 1: uid as String?,
          if (title != ignore) 2: title as String?,
          if (body != ignore) 3: body as String?,
          if (type != ignore) 4: type as String?,
        }) >
        0;
  }
}

sealed class _NotificationDataEntityUpdateAll {
  int call({
    required List<int> id,
    String? uid,
    String? title,
    String? body,
    String? type,
  });
}

class _NotificationDataEntityUpdateAllImpl
    implements _NotificationDataEntityUpdateAll {
  const _NotificationDataEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, NotificationDataEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? uid = ignore,
    Object? title = ignore,
    Object? body = ignore,
    Object? type = ignore,
  }) {
    return collection.updateProperties(id, {
      if (uid != ignore) 1: uid as String?,
      if (title != ignore) 2: title as String?,
      if (body != ignore) 3: body as String?,
      if (type != ignore) 4: type as String?,
    });
  }
}

extension NotificationDataEntityUpdate
    on IsarCollection<int, NotificationDataEntity> {
  _NotificationDataEntityUpdate get update =>
      _NotificationDataEntityUpdateImpl(this);

  _NotificationDataEntityUpdateAll get updateAll =>
      _NotificationDataEntityUpdateAllImpl(this);
}

sealed class _NotificationDataEntityQueryUpdate {
  int call({
    String? uid,
    String? title,
    String? body,
    String? type,
  });
}

class _NotificationDataEntityQueryUpdateImpl
    implements _NotificationDataEntityQueryUpdate {
  const _NotificationDataEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<NotificationDataEntity> query;
  final int? limit;

  @override
  int call({
    Object? uid = ignore,
    Object? title = ignore,
    Object? body = ignore,
    Object? type = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (uid != ignore) 1: uid as String?,
      if (title != ignore) 2: title as String?,
      if (body != ignore) 3: body as String?,
      if (type != ignore) 4: type as String?,
    });
  }
}

extension NotificationDataEntityQueryUpdate
    on IsarQuery<NotificationDataEntity> {
  _NotificationDataEntityQueryUpdate get updateFirst =>
      _NotificationDataEntityQueryUpdateImpl(this, limit: 1);

  _NotificationDataEntityQueryUpdate get updateAll =>
      _NotificationDataEntityQueryUpdateImpl(this);
}

class _NotificationDataEntityQueryBuilderUpdateImpl
    implements _NotificationDataEntityQueryUpdate {
  const _NotificationDataEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QOperations> query;
  final int? limit;

  @override
  int call({
    Object? uid = ignore,
    Object? title = ignore,
    Object? body = ignore,
    Object? type = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (uid != ignore) 1: uid as String?,
        if (title != ignore) 2: title as String?,
        if (body != ignore) 3: body as String?,
        if (type != ignore) 4: type as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension NotificationDataEntityQueryBuilderUpdate on QueryBuilder<
    NotificationDataEntity, NotificationDataEntity, QOperations> {
  _NotificationDataEntityQueryUpdate get updateFirst =>
      _NotificationDataEntityQueryBuilderUpdateImpl(this, limit: 1);

  _NotificationDataEntityQueryUpdate get updateAll =>
      _NotificationDataEntityQueryBuilderUpdateImpl(this);
}

extension NotificationDataEntityQueryFilter on QueryBuilder<
    NotificationDataEntity, NotificationDataEntity, QFilterCondition> {
  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idGreaterThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idLessThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidGreaterThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidGreaterThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidLessThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidBetween(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      uidContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      uidMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleGreaterThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleLessThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleBetween(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleStartsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyEqualTo(
    String? value, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyGreaterThan(
    String? value, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyGreaterThanOrEqualTo(
    String? value, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyLessThan(
    String? value, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyLessThanOrEqualTo(
    String? value, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyStartsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyEndsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      bodyContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      bodyMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeGreaterThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeGreaterThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeLessThan(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeLessThanOrEqualTo(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeBetween(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeStartsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeEndsWith(
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity,
      QAfterFilterCondition> typeIsNotEmpty() {
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

extension NotificationDataEntityQueryObject on QueryBuilder<
    NotificationDataEntity, NotificationDataEntity, QFilterCondition> {}

extension NotificationDataEntityQuerySortBy
    on QueryBuilder<NotificationDataEntity, NotificationDataEntity, QSortBy> {
  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByUid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByUidDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByTitleDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByBody({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByBodyDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      sortByTypeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension NotificationDataEntityQuerySortThenBy on QueryBuilder<
    NotificationDataEntity, NotificationDataEntity, QSortThenBy> {
  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByUid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByUidDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByTitleDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByBody({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByBodyDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterSortBy>
      thenByTypeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension NotificationDataEntityQueryWhereDistinct
    on QueryBuilder<NotificationDataEntity, NotificationDataEntity, QDistinct> {
  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterDistinct>
      distinctByUid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterDistinct>
      distinctByBody({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationDataEntity, NotificationDataEntity, QAfterDistinct>
      distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }
}

extension NotificationDataEntityQueryProperty1
    on QueryBuilder<NotificationDataEntity, NotificationDataEntity, QProperty> {
  QueryBuilder<NotificationDataEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<NotificationDataEntity, String?, QAfterProperty> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<NotificationDataEntity, String?, QAfterProperty>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<NotificationDataEntity, String?, QAfterProperty> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<NotificationDataEntity, String?, QAfterProperty> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension NotificationDataEntityQueryProperty2<R>
    on QueryBuilder<NotificationDataEntity, R, QAfterProperty> {
  QueryBuilder<NotificationDataEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<NotificationDataEntity, (R, String?), QAfterProperty>
      uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<NotificationDataEntity, (R, String?), QAfterProperty>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<NotificationDataEntity, (R, String?), QAfterProperty>
      bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<NotificationDataEntity, (R, String?), QAfterProperty>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension NotificationDataEntityQueryProperty3<R1, R2>
    on QueryBuilder<NotificationDataEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<NotificationDataEntity, (R1, R2, int), QOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<NotificationDataEntity, (R1, R2, String?), QOperations>
      uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<NotificationDataEntity, (R1, R2, String?), QOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<NotificationDataEntity, (R1, R2, String?), QOperations>
      bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<NotificationDataEntity, (R1, R2, String?), QOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}
