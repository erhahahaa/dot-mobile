// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubModel _$ClubModelFromJson(Map<String, dynamic> json) {
  return _ClubModel.fromJson(json);
}

/// @nodoc
mixin _$ClubModel {
  int get id => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  MediaEmbedModel? get media => throw _privateConstructorUsedError;
  int get memberCount => throw _privateConstructorUsedError;
  int get programCount => throw _privateConstructorUsedError;
  int get examCount => throw _privateConstructorUsedError;
  int get tacticalCount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ClubModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubModelCopyWith<ClubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubModelCopyWith<$Res> {
  factory $ClubModelCopyWith(ClubModel value, $Res Function(ClubModel) then) =
      _$ClubModelCopyWithImpl<$Res, ClubModel>;
  @useResult
  $Res call(
      {int id,
      int creatorId,
      String name,
      String description,
      String type,
      MediaEmbedModel? media,
      int memberCount,
      int programCount,
      int examCount,
      int tacticalCount,
      DateTime? createdAt,
      DateTime? updatedAt});

  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$ClubModelCopyWithImpl<$Res, $Val extends ClubModel>
    implements $ClubModelCopyWith<$Res> {
  _$ClubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? media = freezed,
    Object? memberCount = null,
    Object? programCount = null,
    Object? examCount = null,
    Object? tacticalCount = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      programCount: null == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int,
      examCount: null == examCount
          ? _value.examCount
          : examCount // ignore: cast_nullable_to_non_nullable
              as int,
      tacticalCount: null == tacticalCount
          ? _value.tacticalCount
          : tacticalCount // ignore: cast_nullable_to_non_nullable
              as int,
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

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaEmbedModelCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaEmbedModelCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClubModelImplCopyWith<$Res>
    implements $ClubModelCopyWith<$Res> {
  factory _$$ClubModelImplCopyWith(
          _$ClubModelImpl value, $Res Function(_$ClubModelImpl) then) =
      __$$ClubModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int creatorId,
      String name,
      String description,
      String type,
      MediaEmbedModel? media,
      int memberCount,
      int programCount,
      int examCount,
      int tacticalCount,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$ClubModelImplCopyWithImpl<$Res>
    extends _$ClubModelCopyWithImpl<$Res, _$ClubModelImpl>
    implements _$$ClubModelImplCopyWith<$Res> {
  __$$ClubModelImplCopyWithImpl(
      _$ClubModelImpl _value, $Res Function(_$ClubModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? media = freezed,
    Object? memberCount = null,
    Object? programCount = null,
    Object? examCount = null,
    Object? tacticalCount = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ClubModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      programCount: null == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int,
      examCount: null == examCount
          ? _value.examCount
          : examCount // ignore: cast_nullable_to_non_nullable
              as int,
      tacticalCount: null == tacticalCount
          ? _value.tacticalCount
          : tacticalCount // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$ClubModelImpl extends _ClubModel {
  const _$ClubModelImpl(
      {this.id = 0,
      this.creatorId = 0,
      this.name = 'Indo Sports',
      this.description = 'Sport Club',
      this.type = '',
      this.media,
      this.memberCount = 0,
      this.programCount = 0,
      this.examCount = 0,
      this.tacticalCount = 0,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$ClubModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int creatorId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String type;
  @override
  final MediaEmbedModel? media;
  @override
  @JsonKey()
  final int memberCount;
  @override
  @JsonKey()
  final int programCount;
  @override
  @JsonKey()
  final int examCount;
  @override
  @JsonKey()
  final int tacticalCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ClubModel(id: $id, creatorId: $creatorId, name: $name, description: $description, type: $type, media: $media, memberCount: $memberCount, programCount: $programCount, examCount: $examCount, tacticalCount: $tacticalCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.programCount, programCount) ||
                other.programCount == programCount) &&
            (identical(other.examCount, examCount) ||
                other.examCount == examCount) &&
            (identical(other.tacticalCount, tacticalCount) ||
                other.tacticalCount == tacticalCount) &&
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
      name,
      description,
      type,
      media,
      memberCount,
      programCount,
      examCount,
      tacticalCount,
      createdAt,
      updatedAt);

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubModelImplCopyWith<_$ClubModelImpl> get copyWith =>
      __$$ClubModelImplCopyWithImpl<_$ClubModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubModelImplToJson(
      this,
    );
  }
}

abstract class _ClubModel extends ClubModel {
  const factory _ClubModel(
      {final int id,
      final int creatorId,
      final String name,
      final String description,
      final String type,
      final MediaEmbedModel? media,
      final int memberCount,
      final int programCount,
      final int examCount,
      final int tacticalCount,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ClubModelImpl;
  const _ClubModel._() : super._();

  factory _ClubModel.fromJson(Map<String, dynamic> json) =
      _$ClubModelImpl.fromJson;

  @override
  int get id;
  @override
  int get creatorId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  MediaEmbedModel? get media;
  @override
  int get memberCount;
  @override
  int get programCount;
  @override
  int get examCount;
  @override
  int get tacticalCount;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ClubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubModelImplCopyWith<_$ClubModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
