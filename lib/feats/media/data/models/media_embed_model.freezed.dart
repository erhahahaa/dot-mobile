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
  String get name => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaEmbedModelCopyWith<MediaEmbedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEmbedModelCopyWith<$Res> {
  factory $MediaEmbedModelCopyWith(
          MediaEmbedModel value, $Res Function(MediaEmbedModel) then) =
      _$MediaEmbedModelCopyWithImpl<$Res, MediaEmbedModel>;
  @useResult
  $Res call({int id, String name, int fileSize, String url, MediaType type});
}

/// @nodoc
class _$MediaEmbedModelCopyWithImpl<$Res, $Val extends MediaEmbedModel>
    implements $MediaEmbedModelCopyWith<$Res> {
  _$MediaEmbedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fileSize = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
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
  $Res call({int id, String name, int fileSize, String url, MediaType type});
}

/// @nodoc
class __$$MediaEmbedModelImplCopyWithImpl<$Res>
    extends _$MediaEmbedModelCopyWithImpl<$Res, _$MediaEmbedModelImpl>
    implements _$$MediaEmbedModelImplCopyWith<$Res> {
  __$$MediaEmbedModelImplCopyWithImpl(
      _$MediaEmbedModelImpl _value, $Res Function(_$MediaEmbedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fileSize = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$MediaEmbedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaEmbedModelImpl implements _MediaEmbedModel {
  const _$MediaEmbedModelImpl(
      {this.id = 0,
      this.name = '',
      this.fileSize = 0,
      this.url = '',
      this.type = MediaType.applicationOctetStream});

  factory _$MediaEmbedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaEmbedModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int fileSize;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final MediaType type;

  @override
  String toString() {
    return 'MediaEmbedModel(id: $id, name: $name, fileSize: $fileSize, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaEmbedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fileSize, url, type);

  @JsonKey(ignore: true)
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

abstract class _MediaEmbedModel implements MediaEmbedModel {
  const factory _MediaEmbedModel(
      {final int id,
      final String name,
      final int fileSize,
      final String url,
      final MediaType type}) = _$MediaEmbedModelImpl;

  factory _MediaEmbedModel.fromJson(Map<String, dynamic> json) =
      _$MediaEmbedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get fileSize;
  @override
  String get url;
  @override
  MediaType get type;
  @override
  @JsonKey(ignore: true)
  _$$MediaEmbedModelImplCopyWith<_$MediaEmbedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
