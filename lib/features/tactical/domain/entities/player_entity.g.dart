// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const PlayerEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'PlayerEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'alias',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'number',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'team',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'hexColor',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'x',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'y',
        type: IsarType.double,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, PlayerEntity>(
    serialize: serializePlayerEntity,
    deserialize: deserializePlayerEntity,
  ),
);

@isarProtected
int serializePlayerEntity(IsarWriter writer, PlayerEntity object) {
  IsarCore.writeString(writer, 1, object.alias);
  IsarCore.writeLong(writer, 2, object.number);
  IsarCore.writeLong(writer, 3, object.team);
  IsarCore.writeLong(writer, 4, object.hexColor);
  IsarCore.writeDouble(writer, 5, object.x);
  IsarCore.writeDouble(writer, 6, object.y);
  return 0;
}

@isarProtected
PlayerEntity deserializePlayerEntity(IsarReader reader) {
  final String _alias;
  _alias = IsarCore.readString(reader, 1) ?? 'folks';
  final int _number;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _number = 0;
    } else {
      _number = value;
    }
  }
  final int _team;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _team = 0;
    } else {
      _team = value;
    }
  }
  final int _hexColor;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _hexColor = 0;
    } else {
      _hexColor = value;
    }
  }
  final double _x;
  {
    final value = IsarCore.readDouble(reader, 5);
    if (value.isNaN) {
      _x = 0;
    } else {
      _x = value;
    }
  }
  final double _y;
  {
    final value = IsarCore.readDouble(reader, 6);
    if (value.isNaN) {
      _y = 0;
    } else {
      _y = value;
    }
  }
  final object = PlayerEntity(
    alias: _alias,
    number: _number,
    team: _team,
    hexColor: _hexColor,
    x: _x,
    y: _y,
  );
  return object;
}

extension PlayerEntityQueryFilter
    on QueryBuilder<PlayerEntity, PlayerEntity, QFilterCondition> {
  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasEqualTo(
    String value, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasGreaterThan(
    String value, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasGreaterThanOrEqualTo(
    String value, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasLessThan(
    String value, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasLessThanOrEqualTo(
    String value, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasBetween(
    String lower,
    String upper, {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasStartsWith(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasEndsWith(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasContains(
      String value,
      {bool caseSensitive = true}) {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> aliasMatches(
      String pattern,
      {bool caseSensitive = true}) {
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      aliasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> numberEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      numberGreaterThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      numberGreaterThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      numberLessThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      numberLessThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> numberBetween(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> teamEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      teamGreaterThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      teamGreaterThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> teamLessThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      teamLessThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> teamBetween(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorGreaterThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorGreaterThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorLessThan(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorLessThanOrEqualTo(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      hexColorBetween(
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

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> xEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> xGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      xGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> xLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      xLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> xBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> yEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> yGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      yGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> yLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition>
      yLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<PlayerEntity, PlayerEntity, QAfterFilterCondition> yBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }
}

extension PlayerEntityQueryObject
    on QueryBuilder<PlayerEntity, PlayerEntity, QFilterCondition> {}
