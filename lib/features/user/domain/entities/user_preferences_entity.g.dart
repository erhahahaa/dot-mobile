// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetUserPreferencesEntityCollection on Isar {
  IsarCollection<int, UserPreferencesEntity> get userPreferences =>
      this.collection();
}

const UserPreferencesEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'UserPreferencesEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'themeMode',
        type: IsarType.byte,
        enumMap: {"system": 0, "light": 1, "dark": 2},
      ),
      IsarPropertySchema(
        name: 'langCode',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'countryCode',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, UserPreferencesEntity>(
    serialize: serializeUserPreferencesEntity,
    deserialize: deserializeUserPreferencesEntity,
    deserializeProperty: deserializeUserPreferencesEntityProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeUserPreferencesEntity(
    IsarWriter writer, UserPreferencesEntity object) {
  IsarCore.writeByte(writer, 1, object.themeMode.index);
  IsarCore.writeString(writer, 2, object.langCode);
  IsarCore.writeString(writer, 3, object.countryCode);
  return object.id;
}

@isarProtected
UserPreferencesEntity deserializeUserPreferencesEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final ThemeMode _themeMode;
  {
    if (IsarCore.readNull(reader, 1)) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode =
          _userPreferencesEntityThemeMode[IsarCore.readByte(reader, 1)] ??
              ThemeMode.system;
    }
  }
  final String _langCode;
  _langCode = IsarCore.readString(reader, 2) ?? 'en';
  final String _countryCode;
  _countryCode = IsarCore.readString(reader, 3) ?? 'US';
  final object = UserPreferencesEntity(
    id: _id,
    themeMode: _themeMode,
    langCode: _langCode,
    countryCode: _countryCode,
  );
  return object;
}

@isarProtected
dynamic deserializeUserPreferencesEntityProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        if (IsarCore.readNull(reader, 1)) {
          return ThemeMode.system;
        } else {
          return _userPreferencesEntityThemeMode[
                  IsarCore.readByte(reader, 1)] ??
              ThemeMode.system;
        }
      }
    case 2:
      return IsarCore.readString(reader, 2) ?? 'en';
    case 3:
      return IsarCore.readString(reader, 3) ?? 'US';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _UserPreferencesEntityUpdate {
  bool call({
    required int id,
    ThemeMode? themeMode,
    String? langCode,
    String? countryCode,
  });
}

class _UserPreferencesEntityUpdateImpl implements _UserPreferencesEntityUpdate {
  const _UserPreferencesEntityUpdateImpl(this.collection);

  final IsarCollection<int, UserPreferencesEntity> collection;

  @override
  bool call({
    required int id,
    Object? themeMode = ignore,
    Object? langCode = ignore,
    Object? countryCode = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (themeMode != ignore) 1: themeMode as ThemeMode?,
          if (langCode != ignore) 2: langCode as String?,
          if (countryCode != ignore) 3: countryCode as String?,
        }) >
        0;
  }
}

sealed class _UserPreferencesEntityUpdateAll {
  int call({
    required List<int> id,
    ThemeMode? themeMode,
    String? langCode,
    String? countryCode,
  });
}

class _UserPreferencesEntityUpdateAllImpl
    implements _UserPreferencesEntityUpdateAll {
  const _UserPreferencesEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, UserPreferencesEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? themeMode = ignore,
    Object? langCode = ignore,
    Object? countryCode = ignore,
  }) {
    return collection.updateProperties(id, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
      if (langCode != ignore) 2: langCode as String?,
      if (countryCode != ignore) 3: countryCode as String?,
    });
  }
}

extension UserPreferencesEntityUpdate
    on IsarCollection<int, UserPreferencesEntity> {
  _UserPreferencesEntityUpdate get update =>
      _UserPreferencesEntityUpdateImpl(this);

  _UserPreferencesEntityUpdateAll get updateAll =>
      _UserPreferencesEntityUpdateAllImpl(this);
}

sealed class _UserPreferencesEntityQueryUpdate {
  int call({
    ThemeMode? themeMode,
    String? langCode,
    String? countryCode,
  });
}

class _UserPreferencesEntityQueryUpdateImpl
    implements _UserPreferencesEntityQueryUpdate {
  const _UserPreferencesEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<UserPreferencesEntity> query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
    Object? langCode = ignore,
    Object? countryCode = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (themeMode != ignore) 1: themeMode as ThemeMode?,
      if (langCode != ignore) 2: langCode as String?,
      if (countryCode != ignore) 3: countryCode as String?,
    });
  }
}

extension UserPreferencesEntityQueryUpdate on IsarQuery<UserPreferencesEntity> {
  _UserPreferencesEntityQueryUpdate get updateFirst =>
      _UserPreferencesEntityQueryUpdateImpl(this, limit: 1);

  _UserPreferencesEntityQueryUpdate get updateAll =>
      _UserPreferencesEntityQueryUpdateImpl(this);
}

class _UserPreferencesEntityQueryBuilderUpdateImpl
    implements _UserPreferencesEntityQueryUpdate {
  const _UserPreferencesEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QOperations>
      query;
  final int? limit;

  @override
  int call({
    Object? themeMode = ignore,
    Object? langCode = ignore,
    Object? countryCode = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (themeMode != ignore) 1: themeMode as ThemeMode?,
        if (langCode != ignore) 2: langCode as String?,
        if (countryCode != ignore) 3: countryCode as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension UserPreferencesEntityQueryBuilderUpdate
    on QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QOperations> {
  _UserPreferencesEntityQueryUpdate get updateFirst =>
      _UserPreferencesEntityQueryBuilderUpdateImpl(this, limit: 1);

  _UserPreferencesEntityQueryUpdate get updateAll =>
      _UserPreferencesEntityQueryBuilderUpdateImpl(this);
}

const _userPreferencesEntityThemeMode = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};

extension UserPreferencesEntityQueryFilter on QueryBuilder<
    UserPreferencesEntity, UserPreferencesEntity, QFilterCondition> {
  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeGreaterThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeGreaterThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeLessThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeLessThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> themeModeBetween(
    ThemeMode lower,
    ThemeMode upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeEqualTo(
    String value, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeGreaterThan(
    String value, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeGreaterThanOrEqualTo(
    String value, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeLessThan(
    String value, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeLessThanOrEqualTo(
    String value, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeBetween(
    String lower,
    String upper, {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeStartsWith(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeEndsWith(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
          QAfterFilterCondition>
      langCodeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
          QAfterFilterCondition>
      langCodeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> langCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeEqualTo(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeGreaterThan(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeGreaterThanOrEqualTo(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeLessThan(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeLessThanOrEqualTo(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeBetween(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeStartsWith(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeEndsWith(
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
          QAfterFilterCondition>
      countryCodeContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
          QAfterFilterCondition>
      countryCodeMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity,
      QAfterFilterCondition> countryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension UserPreferencesEntityQueryObject on QueryBuilder<
    UserPreferencesEntity, UserPreferencesEntity, QFilterCondition> {}

extension UserPreferencesEntityQuerySortBy
    on QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QSortBy> {
  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByLangCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByLangCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByCountryCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      sortByCountryCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension UserPreferencesEntityQuerySortThenBy
    on QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QSortThenBy> {
  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByLangCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByLangCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByCountryCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterSortBy>
      thenByCountryCodeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension UserPreferencesEntityQueryWhereDistinct
    on QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QDistinct> {
  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterDistinct>
      distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterDistinct>
      distinctByLangCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QAfterDistinct>
      distinctByCountryCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }
}

extension UserPreferencesEntityQueryProperty1
    on QueryBuilder<UserPreferencesEntity, UserPreferencesEntity, QProperty> {
  QueryBuilder<UserPreferencesEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserPreferencesEntity, ThemeMode, QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, String, QAfterProperty>
      langCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserPreferencesEntity, String, QAfterProperty>
      countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension UserPreferencesEntityQueryProperty2<R>
    on QueryBuilder<UserPreferencesEntity, R, QAfterProperty> {
  QueryBuilder<UserPreferencesEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R, ThemeMode), QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R, String), QAfterProperty>
      langCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R, String), QAfterProperty>
      countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension UserPreferencesEntityQueryProperty3<R1, R2>
    on QueryBuilder<UserPreferencesEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<UserPreferencesEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R1, R2, ThemeMode), QOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R1, R2, String), QOperations>
      langCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserPreferencesEntity, (R1, R2, String), QOperations>
      countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}
