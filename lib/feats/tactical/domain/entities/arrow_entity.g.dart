// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrow_entity.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ArrowEntitySchema = Schema(
  name: r'ArrowEntity',
  id: -3454405000658866919,
  properties: {
    r'endX': PropertySchema(
      id: 0,
      name: r'endX',
      type: IsarType.double,
    ),
    r'endY': PropertySchema(
      id: 1,
      name: r'endY',
      type: IsarType.double,
    ),
    r'hexColor': PropertySchema(
      id: 2,
      name: r'hexColor',
      type: IsarType.long,
    ),
    r'startX': PropertySchema(
      id: 3,
      name: r'startX',
      type: IsarType.double,
    ),
    r'startY': PropertySchema(
      id: 4,
      name: r'startY',
      type: IsarType.double,
    )
  },
  estimateSize: _arrowEntityEstimateSize,
  serialize: _arrowEntitySerialize,
  deserialize: _arrowEntityDeserialize,
  deserializeProp: _arrowEntityDeserializeProp,
);

int _arrowEntityEstimateSize(
  ArrowEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _arrowEntitySerialize(
  ArrowEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.endX);
  writer.writeDouble(offsets[1], object.endY);
  writer.writeLong(offsets[2], object.hexColor);
  writer.writeDouble(offsets[3], object.startX);
  writer.writeDouble(offsets[4], object.startY);
}

ArrowEntity _arrowEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ArrowEntity(
    endX: reader.readDoubleOrNull(offsets[0]) ?? 0,
    endY: reader.readDoubleOrNull(offsets[1]) ?? 0,
    hexColor: reader.readLongOrNull(offsets[2]) ?? 0,
    startX: reader.readDoubleOrNull(offsets[3]) ?? 0,
    startY: reader.readDoubleOrNull(offsets[4]) ?? 0,
  );
  return object;
}

P _arrowEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ArrowEntityQueryFilter
    on QueryBuilder<ArrowEntity, ArrowEntity, QFilterCondition> {
  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endXBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endX',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> endYBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endY',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> hexColorEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hexColor',
        value: value,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hexColor',
        value: value,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      hexColorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hexColor',
        value: value,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> hexColorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hexColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startXGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startX',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startXBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startX',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition>
      startYGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startY',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArrowEntity, ArrowEntity, QAfterFilterCondition> startYBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startY',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ArrowEntityQueryObject
    on QueryBuilder<ArrowEntity, ArrowEntity, QFilterCondition> {}
