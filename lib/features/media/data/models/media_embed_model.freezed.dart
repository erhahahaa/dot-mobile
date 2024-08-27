// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_embed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaEmbedModel _$MediaEmbedModelFromJson(Map<String, dynamic> json) {
  return _MediaEmbedModel.fromJson(json);
}

/// @nodoc
mixin _$MediaEmbedModel {
  int get id => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  MediaParent get parent => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get thumbPath => throw _privateConstructorUsedError;
  String? get thumbUrl => throw _privateConstructorUsedError;
  double? get aspectRatio => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MediaEmbedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaEmbedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaEmbedModelCopyWith<MediaEmbedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEmbedModelCopyWith<$Res> {
  factory $MediaEmbedModelCopyWith(
          MediaEmbedModel value, $Res Function(MediaEmbedModel) then) =
      _$MediaEmbedModelCopyWithImpl<$Res, MediaEmbedModel>;
  @useResult
  $Res call(
      {int id,
      int creatorId,
      int clubId,
      String name,
      String? description,
      int fileSize,
      String path,
      MediaType type,
      MediaParent parent,
      String url,
      String? thumbPath,
      String? thumbUrl,
      double? aspectRatio,
      int? width,
      int? height,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$MediaEmbedModelCopyWithImpl<$Res, $Val extends MediaEmbedModel>
    implements $MediaEmbedModelCopyWith<$Res> {
  _$MediaEmbedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaEmbedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? clubId = null,
    Object? name = null,
    Object? description = freezed,
    Object? fileSize = null,
    Object? path = null,
    Object? type = null,
    Object? parent = null,
    Object? url = null,
    Object? thumbPath = freezed,
    Object? thumbUrl = freezed,
    Object? aspectRatio = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbPath: freezed == thumbPath
          ? _value.thumbPath
          : thumbPath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaEmbedModelImplCopyWith<$Res>
    implements $MediaEmbedModelCopyWith<$Res> {
  factory _$$MediaEmbedModelImplCopyWith(_$MediaEmbedModelImpl value,
          $Res Function(_$MediaEmbedModelImpl) then) =
      __$$MediaEmbedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int creatorId,
      int clubId,
      String name,
      String? description,
      int fileSize,
      String path,
      MediaType type,
      MediaParent parent,
      String url,
      String? thumbPath,
      String? thumbUrl,
      double? aspectRatio,
      int? width,
      int? height,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$MediaEmbedModelImplCopyWithImpl<$Res>
    extends _$MediaEmbedModelCopyWithImpl<$Res, _$MediaEmbedModelImpl>
    implements _$$MediaEmbedModelImplCopyWith<$Res> {
  __$$MediaEmbedModelImplCopyWithImpl(
      _$MediaEmbedModelImpl _value, $Res Function(_$MediaEmbedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaEmbedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? clubId = null,
    Object? name = null,
    Object? description = freezed,
    Object? fileSize = null,
    Object? path = null,
    Object? type = null,
    Object? parent = null,
    Object? url = null,
    Object? thumbPath = freezed,
    Object? thumbUrl = freezed,
    Object? aspectRatio = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MediaEmbedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as MediaParent,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbPath: freezed == thumbPath
          ? _value.thumbPath
          : thumbPath // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaEmbedModelImpl extends _MediaEmbedModel {
  _$MediaEmbedModelImpl(
      {this.id = 0,
      this.creatorId = 0,
      this.clubId = 0,
      this.name = '',
      this.description,
      this.fileSize = 0,
      this.path = '',
      this.type = MediaType.applicationOctetStream,
      this.parent = MediaParent.club,
      this.url = '',
      this.thumbPath,
      this.thumbUrl,
      this.aspectRatio,
      this.width,
      this.height,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$MediaEmbedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaEmbedModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int creatorId;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final int fileSize;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final MediaType type;
  @override
  @JsonKey()
  final MediaParent parent;
  @override
  @JsonKey()
  final String url;
  @override
  final String? thumbPath;
  @override
  final String? thumbUrl;
  @override
  final double? aspectRatio;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MediaEmbedModel(id: $id, creatorId: $creatorId, clubId: $clubId, name: $name, description: $description, fileSize: $fileSize, path: $path, type: $type, parent: $parent, url: $url, thumbPath: $thumbPath, thumbUrl: $thumbUrl, aspectRatio: $aspectRatio, width: $width, height: $height, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaEmbedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbPath, thumbPath) ||
                other.thumbPath == thumbPath) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creatorId,
      clubId,
      name,
      description,
      fileSize,
      path,
      type,
      parent,
      url,
      thumbPath,
      thumbUrl,
      aspectRatio,
      width,
      height,
      createdAt,
      updatedAt);

  /// Create a copy of MediaEmbedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaEmbedModelImplCopyWith<_$MediaEmbedModelImpl> get copyWith =>
      __$$MediaEmbedModelImplCopyWithImpl<_$MediaEmbedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaEmbedModelImplToJson(
      this,
    );
  }
}

abstract class _MediaEmbedModel extends MediaEmbedModel {
  factory _MediaEmbedModel(
      {final int id,
      final int creatorId,
      final int clubId,
      final String name,
      final String? description,
      final int fileSize,
      final String path,
      final MediaType type,
      final MediaParent parent,
      final String url,
      final String? thumbPath,
      final String? thumbUrl,
      final double? aspectRatio,
      final int? width,
      final int? height,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$MediaEmbedModelImpl;
  _MediaEmbedModel._() : super._();

  factory _MediaEmbedModel.fromJson(Map<String, dynamic> json) =
      _$MediaEmbedModelImpl.fromJson;

  @override
  int get id;
  @override
  int get creatorId;
  @override
  int get clubId;
  @override
  String get name;
  @override
  String? get description;
  @override
  int get fileSize;
  @override
  String get path;
  @override
  MediaType get type;
  @override
  MediaParent get parent;
  @override
  String get url;
  @override
  String? get thumbPath;
  @override
  String? get thumbUrl;
  @override
  double? get aspectRatio;
  @override
  int? get width;
  @override
  int? get height;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of MediaEmbedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaEmbedModelImplCopyWith<_$MediaEmbedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
