// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMediaEntityCollection on Isar {
  IsarCollection<MediaEntity> get mediaEntitys => this.collection();
}

const MediaEntitySchema = CollectionSchema(
  name: r'MediaEntity',
  id: -6918515590517454333,
  properties: {
    r'clubId': PropertySchema(
      id: 0,
      name: r'clubId',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'creatorId': PropertySchema(
      id: 2,
      name: r'creatorId',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'fileSize': PropertySchema(
      id: 4,
      name: r'fileSize',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'parent': PropertySchema(
      id: 6,
      name: r'parent',
      type: IsarType.byte,
      enumMap: _MediaEntityparentEnumValueMap,
    ),
    r'path': PropertySchema(
      id: 7,
      name: r'path',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.byte,
      enumMap: _MediaEntitytypeEnumValueMap,
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(
      id: 10,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaEntityEstimateSize,
  serialize: _mediaEntitySerialize,
  deserialize: _mediaEntityDeserialize,
  deserializeProp: _mediaEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _mediaEntityGetId,
  getLinks: _mediaEntityGetLinks,
  attach: _mediaEntityAttach,
  version: '3.1.0+1',
);

int _mediaEntityEstimateSize(
  MediaEntity object,
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
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.path.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _mediaEntitySerialize(
  MediaEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.clubId);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.creatorId);
  writer.writeString(offsets[3], object.description);
  writer.writeLong(offsets[4], object.fileSize);
  writer.writeString(offsets[5], object.name);
  writer.writeByte(offsets[6], object.parent.index);
  writer.writeString(offsets[7], object.path);
  writer.writeByte(offsets[8], object.type.index);
  writer.writeDateTime(offsets[9], object.updatedAt);
  writer.writeString(offsets[10], object.url);
}

MediaEntity _mediaEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaEntity(
    clubId: reader.readLongOrNull(offsets[0]) ?? 0,
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    creatorId: reader.readLongOrNull(offsets[2]) ?? 0,
    description: reader.readStringOrNull(offsets[3]),
    fileSize: reader.readLongOrNull(offsets[4]) ?? 0,
    id: id,
    name: reader.readStringOrNull(offsets[5]) ?? '',
    parent: _MediaEntityparentValueEnumMap[reader.readByteOrNull(offsets[6])] ??
        MediaParent.club,
    path: reader.readStringOrNull(offsets[7]) ?? '',
    type: _MediaEntitytypeValueEnumMap[reader.readByteOrNull(offsets[8])] ??
        MediaType.applicationOctetStream,
    updatedAt: reader.readDateTimeOrNull(offsets[9]),
    url: reader.readStringOrNull(offsets[10]) ?? '',
  );
  return object;
}

P _mediaEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (_MediaEntityparentValueEnumMap[reader.readByteOrNull(offset)] ??
          MediaParent.club) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 8:
      return (_MediaEntitytypeValueEnumMap[reader.readByteOrNull(offset)] ??
          MediaType.applicationOctetStream) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MediaEntityparentEnumValueMap = {
  'club': 0,
  'program': 1,
  'exercise': 2,
  'exam': 3,
  'question': 4,
  'user': 5,
};
const _MediaEntityparentValueEnumMap = {
  0: MediaParent.club,
  1: MediaParent.program,
  2: MediaParent.exercise,
  3: MediaParent.exam,
  4: MediaParent.question,
  5: MediaParent.user,
};
const _MediaEntitytypeEnumValueMap = {
  'imagePng': 0,
  'imageJpeg': 1,
  'imageJpg': 2,
  'imageGif': 3,
  'imageSvgXml': 4,
  'applicationPdf': 5,
  'applicationMsword': 6,
  'applicationVndOpenXMLFormatsWord': 7,
  'applicationVndMsExcel': 8,
  'applicationVndOpenXMLFormatsExcel': 9,
  'textPlain': 10,
  'videoMp4': 11,
  'videoAvi': 12,
  'videoMpeg': 13,
  'videoQuicktime': 14,
  'audioMpeg': 15,
  'audioWav': 16,
  'audioOgg': 17,
  'applicationZip': 18,
  'applicationXRarCompressed': 19,
  'applicationTar': 20,
  'applicationOctetStream': 21,
};
const _MediaEntitytypeValueEnumMap = {
  0: MediaType.imagePng,
  1: MediaType.imageJpeg,
  2: MediaType.imageJpg,
  3: MediaType.imageGif,
  4: MediaType.imageSvgXml,
  5: MediaType.applicationPdf,
  6: MediaType.applicationMsword,
  7: MediaType.applicationVndOpenXMLFormatsWord,
  8: MediaType.applicationVndMsExcel,
  9: MediaType.applicationVndOpenXMLFormatsExcel,
  10: MediaType.textPlain,
  11: MediaType.videoMp4,
  12: MediaType.videoAvi,
  13: MediaType.videoMpeg,
  14: MediaType.videoQuicktime,
  15: MediaType.audioMpeg,
  16: MediaType.audioWav,
  17: MediaType.audioOgg,
  18: MediaType.applicationZip,
  19: MediaType.applicationXRarCompressed,
  20: MediaType.applicationTar,
  21: MediaType.applicationOctetStream,
};

Id _mediaEntityGetId(MediaEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _mediaEntityGetLinks(MediaEntity object) {
  return [];
}

void _mediaEntityAttach(
    IsarCollection<dynamic> col, Id id, MediaEntity object) {
  object.id = id;
}

extension MediaEntityQueryWhereSort
    on QueryBuilder<MediaEntity, MediaEntity, QWhere> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MediaEntityQueryWhere
    on QueryBuilder<MediaEntity, MediaEntity, QWhereClause> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterWhereClause> idBetween(
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

extension MediaEntityQueryFilter
    on QueryBuilder<MediaEntity, MediaEntity, QFilterCondition> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      clubIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clubId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clubId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creatorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionStartsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> fileSizeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileSize',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileSize',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileSize',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> fileSizeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentEqualTo(
      MediaParent value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parent',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      parentGreaterThan(
    MediaParent value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parent',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentLessThan(
    MediaParent value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parent',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentBetween(
    MediaParent lower,
    MediaParent upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'path',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'path',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'path',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'path',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      pathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'path',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeEqualTo(
      MediaType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeGreaterThan(
    MediaType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeLessThan(
    MediaType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeBetween(
    MediaType lower,
    MediaType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension MediaEntityQueryObject
    on QueryBuilder<MediaEntity, MediaEntity, QFilterCondition> {}

extension MediaEntityQueryLinks
    on QueryBuilder<MediaEntity, MediaEntity, QFilterCondition> {}

extension MediaEntityQuerySortBy
    on QueryBuilder<MediaEntity, MediaEntity, QSortBy> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileSize', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByFileSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileSize', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parent', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parent', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MediaEntityQuerySortThenBy
    on QueryBuilder<MediaEntity, MediaEntity, QSortThenBy> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clubId', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creatorId', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileSize', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByFileSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileSize', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parent', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parent', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'path', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension MediaEntityQueryWhereDistinct
    on QueryBuilder<MediaEntity, MediaEntity, QDistinct> {
  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clubId');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creatorId');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileSize');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parent');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'path', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension MediaEntityQueryProperty
    on QueryBuilder<MediaEntity, MediaEntity, QQueryProperty> {
  QueryBuilder<MediaEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MediaEntity, int, QQueryOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clubId');
    });
  }

  QueryBuilder<MediaEntity, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<MediaEntity, int, QQueryOperations> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creatorId');
    });
  }

  QueryBuilder<MediaEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<MediaEntity, int, QQueryOperations> fileSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileSize');
    });
  }

  QueryBuilder<MediaEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MediaEntity, MediaParent, QQueryOperations> parentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parent');
    });
  }

  QueryBuilder<MediaEntity, String, QQueryOperations> pathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'path');
    });
  }

  QueryBuilder<MediaEntity, MediaType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<MediaEntity, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<MediaEntity, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
