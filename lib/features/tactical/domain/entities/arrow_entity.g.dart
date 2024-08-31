// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrow_entity.dart';

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const ArrowEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ArrowEntity',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'startX',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'startY',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'endX',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'endY',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'hexColor',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, ArrowEntity>(
    serialize: serializeArrowEntity,
    deserialize: deserializeArrowEntity,
  ),
);

@isarProtected
int serializeArrowEntity(IsarWriter writer, ArrowEntity object) {
  IsarCore.writeDouble(writer, 1, object.startX);
  IsarCore.writeDouble(writer, 2, object.startY);
  IsarCore.writeDouble(writer, 3, object.endX);
  IsarCore.writeDouble(writer, 4, object.endY);
  IsarCore.writeLong(writer, 5, object.hexColor);
  return 0;
}

@isarProtected
ArrowEntity deserializeArrowEntity(IsarReader reader) {
  final double _startX;
  {
    final value = IsarCore.readDouble(reader, 1);
    if (value.isNaN) {
      _startX = 0;
    } else {
      _startX = value;
    }
  }
  final double _startY;
  {
    final value = IsarCore.readDouble(reader, 2);
    if (value.isNaN) {
      _startY = 0;
    } else {
      _startY = value;
    }
  }
  final double _endX;
  {
    final value = IsarCore.readDouble(reader, 3);
    if (value.isNaN) {
      _endX = 0;
    } else {
      _endX = value;
    }
  }
  final double _endY;
  {
    final value = IsarCore.readDouble(reader, 4);
    if (value.isNaN) {
      _endY = 0;
    } else {
      _endY = value;
    }
  }
  final int _hexColor;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _hexColor = 0;
    } else {
      _hexColor = value;
    }
  }
  final object = ArrowEntity(
    startX: _startX,
    startY: _startY,
    endX: _endX,
    endY: _endY,
    hexColor: _hexColor,
  );
  return object;
}

extension ArrowEntityQueryFilter
    on QueryBuilder<ArrowEntity, ArrowEntity, QFilterCondition> {
  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startXGreaterThan(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startXGreaterThanOrEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXLessThan(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startXLessThanOrEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXBetween(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startYGreaterThan(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startYGreaterThanOrEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYLessThan(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startYLessThanOrEqualTo(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYBetween(
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      endXGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      endXLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      endYGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      endYLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> hexColorEqualTo(
    int value,
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorGreaterThan(
    int value,
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorGreaterThanOrEqualTo(
    int value,
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorLessThan(
    int value,
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorLessThanOrEqualTo(
    int value,
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

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> hexColorBetween(
    int lower,
    int upper,
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
}

extension ArrowEntityQueryObject
    on QueryBuilder<ArrowEntity, ArrowEntity, QFilterCondition> {}
