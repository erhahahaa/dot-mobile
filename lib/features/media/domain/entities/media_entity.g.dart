// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_entity.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetMediaEntityCollection on Isar {
  IsarCollection<int, MediaEntity> get medias => this.collection();
}

const MediaEntitySchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'MediaEntity',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'creatorId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'clubId',
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
        name: 'fileSize',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'path',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'type',
        type: IsarType.byte,
        enumMap: {
          "imagePng": 0,
          "imageJpeg": 1,
          "imageJpg": 2,
          "imageGif": 3,
          "imageSvgXml": 4,
          "applicationPdf": 5,
          "applicationMsword": 6,
          "applicationVndOpenXMLFormatsWord": 7,
          "applicationVndMsExcel": 8,
          "applicationVndOpenXMLFormatsExcel": 9,
          "textPlain": 10,
          "videoMp4": 11,
          "videoAvi": 12,
          "videoMpeg": 13,
          "videoQuicktime": 14,
          "audioMpeg": 15,
          "audioWav": 16,
          "audioOgg": 17,
          "applicationZip": 18,
          "applicationXRarCompressed": 19,
          "applicationTar": 20,
          "applicationOctetStream": 21
        },
      ),
      IsarPropertySchema(
        name: 'parent',
        type: IsarType.byte,
        enumMap: {
          "club": 0,
          "program": 1,
          "exercise": 2,
          "exam": 3,
          "question": 4,
          "tactical": 5,
          "user": 6
        },
      ),
      IsarPropertySchema(
        name: 'url',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'thumbPath',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'thumbUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'aspectRatio',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'width',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'height',
        type: IsarType.long,
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
  converter: IsarObjectConverter<int, MediaEntity>(
    serialize: serializeMediaEntity,
    deserialize: deserializeMediaEntity,
    deserializeProperty: deserializeMediaEntityProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeMediaEntity(IsarWriter writer, MediaEntity object) {
  IsarCore.writeLong(writer, 1, object.creatorId);
  IsarCore.writeLong(writer, 2, object.clubId);
  IsarCore.writeString(writer, 3, object.name);
  {
    final value = object.description;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  IsarCore.writeLong(writer, 5, object.fileSize);
  IsarCore.writeString(writer, 6, object.path);
  IsarCore.writeByte(writer, 7, object.type.index);
  IsarCore.writeByte(writer, 8, object.parent.index);
  IsarCore.writeString(writer, 9, object.url);
  {
    final value = object.thumbPath;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeString(writer, 10, value);
    }
  }
  {
    final value = object.thumbUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  IsarCore.writeDouble(writer, 12, object.aspectRatio ?? double.nan);
  IsarCore.writeLong(writer, 13, object.width ?? -9223372036854775808);
  IsarCore.writeLong(writer, 14, object.height ?? -9223372036854775808);
  IsarCore.writeLong(writer, 15,
      object.createdAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeLong(writer, 16,
      object.updatedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  return object.id;
}

@isarProtected
MediaEntity deserializeMediaEntity(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _creatorId;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _creatorId = 0;
    } else {
      _creatorId = value;
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
  final String _name;
  _name = IsarCore.readString(reader, 3) ?? '';
  final String? _description;
  _description = IsarCore.readString(reader, 4);
  final int _fileSize;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _fileSize = 0;
    } else {
      _fileSize = value;
    }
  }
  final String _path;
  _path = IsarCore.readString(reader, 6) ?? '';
  final MediaType _type;
  {
    if (IsarCore.readNull(reader, 7)) {
      _type = MediaType.applicationOctetStream;
    } else {
      _type = _mediaEntityType[IsarCore.readByte(reader, 7)] ??
          MediaType.applicationOctetStream;
    }
  }
  final MediaParent _parent;
  {
    if (IsarCore.readNull(reader, 8)) {
      _parent = MediaParent.club;
    } else {
      _parent =
          _mediaEntityParent[IsarCore.readByte(reader, 8)] ?? MediaParent.club;
    }
  }
  final String _url;
  _url = IsarCore.readString(reader, 9) ?? '';
  final String? _thumbPath;
  _thumbPath = IsarCore.readString(reader, 10);
  final String? _thumbUrl;
  _thumbUrl = IsarCore.readString(reader, 11);
  final double? _aspectRatio;
  {
    final value = IsarCore.readDouble(reader, 12);
    if (value.isNaN) {
      _aspectRatio = null;
    } else {
      _aspectRatio = value;
    }
  }
  final int? _width;
  {
    final value = IsarCore.readLong(reader, 13);
    if (value == -9223372036854775808) {
      _width = null;
    } else {
      _width = value;
    }
  }
  final int? _height;
  {
    final value = IsarCore.readLong(reader, 14);
    if (value == -9223372036854775808) {
      _height = null;
    } else {
      _height = value;
    }
  }
  final DateTime? _createdAt;
  {
    final value = IsarCore.readLong(reader, 15);
    if (value == -9223372036854775808) {
      _createdAt = null;
    } else {
      _createdAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime? _updatedAt;
  {
    final value = IsarCore.readLong(reader, 16);
    if (value == -9223372036854775808) {
      _updatedAt = null;
    } else {
      _updatedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = MediaEntity(
    id: _id,
    creatorId: _creatorId,
    clubId: _clubId,
    name: _name,
    description: _description,
    fileSize: _fileSize,
    path: _path,
    type: _type,
    parent: _parent,
    url: _url,
    thumbPath: _thumbPath,
    thumbUrl: _thumbUrl,
    aspectRatio: _aspectRatio,
    width: _width,
    height: _height,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );
  return object;
}

@isarProtected
dynamic deserializeMediaEntityProp(IsarReader reader, int property) {
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
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return 0;
        } else {
          return value;
        }
      }
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    case 7:
      {
        if (IsarCore.readNull(reader, 7)) {
          return MediaType.applicationOctetStream;
        } else {
          return _mediaEntityType[IsarCore.readByte(reader, 7)] ??
              MediaType.applicationOctetStream;
        }
      }
    case 8:
      {
        if (IsarCore.readNull(reader, 8)) {
          return MediaParent.club;
        } else {
          return _mediaEntityParent[IsarCore.readByte(reader, 8)] ??
              MediaParent.club;
        }
      }
    case 9:
      return IsarCore.readString(reader, 9) ?? '';
    case 10:
      return IsarCore.readString(reader, 10);
    case 11:
      return IsarCore.readString(reader, 11);
    case 12:
      {
        final value = IsarCore.readDouble(reader, 12);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 13:
      {
        final value = IsarCore.readLong(reader, 13);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 14:
      {
        final value = IsarCore.readLong(reader, 14);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 15:
      {
        final value = IsarCore.readLong(reader, 15);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 16:
      {
        final value = IsarCore.readLong(reader, 16);
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

sealed class _MediaEntityUpdate {
  bool call({
    required int id,
    int? creatorId,
    int? clubId,
    String? name,
    String? description,
    int? fileSize,
    String? path,
    MediaType? type,
    MediaParent? parent,
    String? url,
    String? thumbPath,
    String? thumbUrl,
    double? aspectRatio,
    int? width,
    int? height,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _MediaEntityUpdateImpl implements _MediaEntityUpdate {
  const _MediaEntityUpdateImpl(this.collection);

  final IsarCollection<int, MediaEntity> collection;

  @override
  bool call({
    required int id,
    Object? creatorId = ignore,
    Object? clubId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? fileSize = ignore,
    Object? path = ignore,
    Object? type = ignore,
    Object? parent = ignore,
    Object? url = ignore,
    Object? thumbPath = ignore,
    Object? thumbUrl = ignore,
    Object? aspectRatio = ignore,
    Object? width = ignore,
    Object? height = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (creatorId != ignore) 1: creatorId as int?,
          if (clubId != ignore) 2: clubId as int?,
          if (name != ignore) 3: name as String?,
          if (description != ignore) 4: description as String?,
          if (fileSize != ignore) 5: fileSize as int?,
          if (path != ignore) 6: path as String?,
          if (type != ignore) 7: type as MediaType?,
          if (parent != ignore) 8: parent as MediaParent?,
          if (url != ignore) 9: url as String?,
          if (thumbPath != ignore) 10: thumbPath as String?,
          if (thumbUrl != ignore) 11: thumbUrl as String?,
          if (aspectRatio != ignore) 12: aspectRatio as double?,
          if (width != ignore) 13: width as int?,
          if (height != ignore) 14: height as int?,
          if (createdAt != ignore) 15: createdAt as DateTime?,
          if (updatedAt != ignore) 16: updatedAt as DateTime?,
        }) >
        0;
  }
}

sealed class _MediaEntityUpdateAll {
  int call({
    required List<int> id,
    int? creatorId,
    int? clubId,
    String? name,
    String? description,
    int? fileSize,
    String? path,
    MediaType? type,
    MediaParent? parent,
    String? url,
    String? thumbPath,
    String? thumbUrl,
    double? aspectRatio,
    int? width,
    int? height,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _MediaEntityUpdateAllImpl implements _MediaEntityUpdateAll {
  const _MediaEntityUpdateAllImpl(this.collection);

  final IsarCollection<int, MediaEntity> collection;

  @override
  int call({
    required List<int> id,
    Object? creatorId = ignore,
    Object? clubId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? fileSize = ignore,
    Object? path = ignore,
    Object? type = ignore,
    Object? parent = ignore,
    Object? url = ignore,
    Object? thumbPath = ignore,
    Object? thumbUrl = ignore,
    Object? aspectRatio = ignore,
    Object? width = ignore,
    Object? height = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (creatorId != ignore) 1: creatorId as int?,
      if (clubId != ignore) 2: clubId as int?,
      if (name != ignore) 3: name as String?,
      if (description != ignore) 4: description as String?,
      if (fileSize != ignore) 5: fileSize as int?,
      if (path != ignore) 6: path as String?,
      if (type != ignore) 7: type as MediaType?,
      if (parent != ignore) 8: parent as MediaParent?,
      if (url != ignore) 9: url as String?,
      if (thumbPath != ignore) 10: thumbPath as String?,
      if (thumbUrl != ignore) 11: thumbUrl as String?,
      if (aspectRatio != ignore) 12: aspectRatio as double?,
      if (width != ignore) 13: width as int?,
      if (height != ignore) 14: height as int?,
      if (createdAt != ignore) 15: createdAt as DateTime?,
      if (updatedAt != ignore) 16: updatedAt as DateTime?,
    });
  }
}

extension MediaEntityUpdate on IsarCollection<int, MediaEntity> {
  _MediaEntityUpdate get update => _MediaEntityUpdateImpl(this);

  _MediaEntityUpdateAll get updateAll => _MediaEntityUpdateAllImpl(this);
}

sealed class _MediaEntityQueryUpdate {
  int call({
    int? creatorId,
    int? clubId,
    String? name,
    String? description,
    int? fileSize,
    String? path,
    MediaType? type,
    MediaParent? parent,
    String? url,
    String? thumbPath,
    String? thumbUrl,
    double? aspectRatio,
    int? width,
    int? height,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

class _MediaEntityQueryUpdateImpl implements _MediaEntityQueryUpdate {
  const _MediaEntityQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<MediaEntity> query;
  final int? limit;

  @override
  int call({
    Object? creatorId = ignore,
    Object? clubId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? fileSize = ignore,
    Object? path = ignore,
    Object? type = ignore,
    Object? parent = ignore,
    Object? url = ignore,
    Object? thumbPath = ignore,
    Object? thumbUrl = ignore,
    Object? aspectRatio = ignore,
    Object? width = ignore,
    Object? height = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (creatorId != ignore) 1: creatorId as int?,
      if (clubId != ignore) 2: clubId as int?,
      if (name != ignore) 3: name as String?,
      if (description != ignore) 4: description as String?,
      if (fileSize != ignore) 5: fileSize as int?,
      if (path != ignore) 6: path as String?,
      if (type != ignore) 7: type as MediaType?,
      if (parent != ignore) 8: parent as MediaParent?,
      if (url != ignore) 9: url as String?,
      if (thumbPath != ignore) 10: thumbPath as String?,
      if (thumbUrl != ignore) 11: thumbUrl as String?,
      if (aspectRatio != ignore) 12: aspectRatio as double?,
      if (width != ignore) 13: width as int?,
      if (height != ignore) 14: height as int?,
      if (createdAt != ignore) 15: createdAt as DateTime?,
      if (updatedAt != ignore) 16: updatedAt as DateTime?,
    });
  }
}

extension MediaEntityQueryUpdate on IsarQuery<MediaEntity> {
  _MediaEntityQueryUpdate get updateFirst =>
      _MediaEntityQueryUpdateImpl(this, limit: 1);

  _MediaEntityQueryUpdate get updateAll => _MediaEntityQueryUpdateImpl(this);
}

class _MediaEntityQueryBuilderUpdateImpl implements _MediaEntityQueryUpdate {
  const _MediaEntityQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<MediaEntity, MediaEntity, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? creatorId = ignore,
    Object? clubId = ignore,
    Object? name = ignore,
    Object? description = ignore,
    Object? fileSize = ignore,
    Object? path = ignore,
    Object? type = ignore,
    Object? parent = ignore,
    Object? url = ignore,
    Object? thumbPath = ignore,
    Object? thumbUrl = ignore,
    Object? aspectRatio = ignore,
    Object? width = ignore,
    Object? height = ignore,
    Object? createdAt = ignore,
    Object? updatedAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (creatorId != ignore) 1: creatorId as int?,
        if (clubId != ignore) 2: clubId as int?,
        if (name != ignore) 3: name as String?,
        if (description != ignore) 4: description as String?,
        if (fileSize != ignore) 5: fileSize as int?,
        if (path != ignore) 6: path as String?,
        if (type != ignore) 7: type as MediaType?,
        if (parent != ignore) 8: parent as MediaParent?,
        if (url != ignore) 9: url as String?,
        if (thumbPath != ignore) 10: thumbPath as String?,
        if (thumbUrl != ignore) 11: thumbUrl as String?,
        if (aspectRatio != ignore) 12: aspectRatio as double?,
        if (width != ignore) 13: width as int?,
        if (height != ignore) 14: height as int?,
        if (createdAt != ignore) 15: createdAt as DateTime?,
        if (updatedAt != ignore) 16: updatedAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension MediaEntityQueryBuilderUpdate
    on QueryBuilder<MediaEntity, MediaEntity, QOperations> {
  _MediaEntityQueryUpdate get updateFirst =>
      _MediaEntityQueryBuilderUpdateImpl(this, limit: 1);

  _MediaEntityQueryUpdate get updateAll =>
      _MediaEntityQueryBuilderUpdateImpl(this);
}

const _mediaEntityType = {
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
const _mediaEntityParent = {
  0: MediaParent.club,
  1: MediaParent.program,
  2: MediaParent.exercise,
  3: MediaParent.exam,
  4: MediaParent.question,
  5: MediaParent.tactical,
  6: MediaParent.user,
};

extension MediaEntityQueryFilter
    on QueryBuilder<MediaEntity, MediaEntity, QFilterCondition> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdGreaterThanOrEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdLessThanOrEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      creatorIdBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> clubIdBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> fileSizeEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeGreaterThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeGreaterThanOrEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeLessThan(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      fileSizeLessThanOrEqualTo(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> fileSizeBetween(
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      pathGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      pathLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> pathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      pathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeEqualTo(
    MediaType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeGreaterThan(
    MediaType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      typeGreaterThanOrEqualTo(
    MediaType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeLessThan(
    MediaType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      typeLessThanOrEqualTo(
    MediaType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> typeBetween(
    MediaType lower,
    MediaType upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentEqualTo(
    MediaParent value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      parentGreaterThan(
    MediaParent value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      parentGreaterThanOrEqualTo(
    MediaParent value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentLessThan(
    MediaParent value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      parentLessThanOrEqualTo(
    MediaParent value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> parentBetween(
    MediaParent lower,
    MediaParent upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      urlGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      urlLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> thumbUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> thumbUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> thumbUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      thumbUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      aspectRatioBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> widthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      widthIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> widthEqualTo(
    int? value,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      widthGreaterThan(
    int? value,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      widthGreaterThanOrEqualTo(
    int? value,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> widthLessThan(
    int? value,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      widthLessThanOrEqualTo(
    int? value,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> widthBetween(
    int? lower,
    int? upper,
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

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      heightIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> heightEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      heightGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      heightGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> heightLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      heightLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition> heightBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension MediaEntityQueryObject
    on QueryBuilder<MediaEntity, MediaEntity, QFilterCondition> {}

extension MediaEntityQuerySortBy
    on QueryBuilder<MediaEntity, MediaEntity, QSortBy> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByFileSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByThumbPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByThumbPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByThumbUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByThumbUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByAspectRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByAspectRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }
}

extension MediaEntityQuerySortThenBy
    on QueryBuilder<MediaEntity, MediaEntity, QSortThenBy> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByClubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByFileSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByParentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByThumbPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByThumbPathDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByThumbUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByThumbUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByAspectRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByAspectRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }
}

extension MediaEntityQueryWhereDistinct
    on QueryBuilder<MediaEntity, MediaEntity, QDistinct> {
  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByClubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByFileSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByParent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByThumbPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByThumbUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct>
      distinctByAspectRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15);
    });
  }

  QueryBuilder<MediaEntity, MediaEntity, QAfterDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }
}

extension MediaEntityQueryProperty1
    on QueryBuilder<MediaEntity, MediaEntity, QProperty> {
  QueryBuilder<MediaEntity, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MediaEntity, int, QAfterProperty> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MediaEntity, int, QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MediaEntity, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MediaEntity, String?, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MediaEntity, int, QAfterProperty> fileSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MediaEntity, String, QAfterProperty> pathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MediaEntity, MediaType, QAfterProperty> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MediaEntity, MediaParent, QAfterProperty> parentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MediaEntity, String, QAfterProperty> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MediaEntity, String?, QAfterProperty> thumbPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MediaEntity, String?, QAfterProperty> thumbUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MediaEntity, double?, QAfterProperty> aspectRatioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<MediaEntity, int?, QAfterProperty> widthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<MediaEntity, int?, QAfterProperty> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<MediaEntity, DateTime?, QAfterProperty> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<MediaEntity, DateTime?, QAfterProperty> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }
}

extension MediaEntityQueryProperty2<R>
    on QueryBuilder<MediaEntity, R, QAfterProperty> {
  QueryBuilder<MediaEntity, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MediaEntity, (R, int), QAfterProperty> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MediaEntity, (R, int), QAfterProperty> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MediaEntity, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MediaEntity, (R, String?), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MediaEntity, (R, int), QAfterProperty> fileSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MediaEntity, (R, String), QAfterProperty> pathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MediaEntity, (R, MediaType), QAfterProperty> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MediaEntity, (R, MediaParent), QAfterProperty> parentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MediaEntity, (R, String), QAfterProperty> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MediaEntity, (R, String?), QAfterProperty> thumbPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MediaEntity, (R, String?), QAfterProperty> thumbUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MediaEntity, (R, double?), QAfterProperty>
      aspectRatioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<MediaEntity, (R, int?), QAfterProperty> widthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<MediaEntity, (R, int?), QAfterProperty> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<MediaEntity, (R, DateTime?), QAfterProperty>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<MediaEntity, (R, DateTime?), QAfterProperty>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }
}

extension MediaEntityQueryProperty3<R1, R2>
    on QueryBuilder<MediaEntity, (R1, R2), QAfterProperty> {
  QueryBuilder<MediaEntity, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, int), QOperations> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, int), QOperations> clubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String?), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, int), QOperations> fileSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String), QOperations> pathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, MediaType), QOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, MediaParent), QOperations>
      parentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String), QOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String?), QOperations>
      thumbPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, String?), QOperations> thumbUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, double?), QOperations>
      aspectRatioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, int?), QOperations> widthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, int?), QOperations> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, DateTime?), QOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<MediaEntity, (R1, R2, DateTime?), QOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }
}
