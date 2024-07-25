// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgramExerciseModel _$ProgramExerciseModelFromJson(Map<String, dynamic> json) {
  return _ProgramExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$ProgramExerciseModel {
  int get id => throw _privateConstructorUsedError;
  int get programId => throw _privateConstructorUsedError;
  int? get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get repetition => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get rest => throw _privateConstructorUsedError;
  MediaEmbedModel? get media => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramExerciseModelCopyWith<ProgramExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramExerciseModelCopyWith<$Res> {
  factory $ProgramExerciseModelCopyWith(ProgramExerciseModel value,
          $Res Function(ProgramExerciseModel) then) =
      _$ProgramExerciseModelCopyWithImpl<$Res, ProgramExerciseModel>;
  @useResult
  $Res call(
      {int id,
      int programId,
      int? mediaId,
      String name,
      String? description,
      int repetition,
      int sets,
      int rest,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$ProgramExerciseModelCopyWithImpl<$Res,
        $Val extends ProgramExerciseModel>
    implements $ProgramExerciseModelCopyWith<$Res> {
  _$ProgramExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? programId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? media = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as int,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
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
abstract class _$$ProgramExerciseModelImplCopyWith<$Res>
    implements $ProgramExerciseModelCopyWith<$Res> {
  factory _$$ProgramExerciseModelImplCopyWith(_$ProgramExerciseModelImpl value,
          $Res Function(_$ProgramExerciseModelImpl) then) =
      __$$ProgramExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int programId,
      int? mediaId,
      String name,
      String? description,
      int repetition,
      int sets,
      int rest,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$ProgramExerciseModelImplCopyWithImpl<$Res>
    extends _$ProgramExerciseModelCopyWithImpl<$Res, _$ProgramExerciseModelImpl>
    implements _$$ProgramExerciseModelImplCopyWith<$Res> {
  __$$ProgramExerciseModelImplCopyWithImpl(_$ProgramExerciseModelImpl _value,
      $Res Function(_$ProgramExerciseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? programId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? media = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProgramExerciseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repetition: null == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as int,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as int,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEmbedModel?,
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
class _$ProgramExerciseModelImpl implements _ProgramExerciseModel {
  const _$ProgramExerciseModelImpl(
      {this.id = 0,
      this.programId = 0,
      this.mediaId,
      this.name = 'Dot Exercise 0',
      this.description,
      this.repetition = 1,
      this.sets = 1,
      this.rest = 0,
      this.media,
      this.createdAt,
      this.updatedAt});

  factory _$ProgramExerciseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramExerciseModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int programId;
  @override
  final int? mediaId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final int repetition;
  @override
  @JsonKey()
  final int sets;
  @override
  @JsonKey()
  final int rest;
  @override
  final MediaEmbedModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProgramExerciseModel(id: $id, programId: $programId, mediaId: $mediaId, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramExerciseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.rest, rest) || other.rest == rest) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, programId, mediaId, name,
      description, repetition, sets, rest, media, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramExerciseModelImplCopyWith<_$ProgramExerciseModelImpl>
      get copyWith =>
          __$$ProgramExerciseModelImplCopyWithImpl<_$ProgramExerciseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramExerciseModelImplToJson(
      this,
    );
  }
}

abstract class _ProgramExerciseModel implements ProgramExerciseModel {
  const factory _ProgramExerciseModel(
      {final int id,
      final int programId,
      final int? mediaId,
      final String name,
      final String? description,
      final int repetition,
      final int sets,
      final int rest,
      final MediaEmbedModel? media,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ProgramExerciseModelImpl;

  factory _ProgramExerciseModel.fromJson(Map<String, dynamic> json) =
      _$ProgramExerciseModelImpl.fromJson;

  @override
  int get id;
  @override
  int get programId;
  @override
  int? get mediaId;
  @override
  String get name;
  @override
  String? get description;
  @override
  int get repetition;
  @override
  int get sets;
  @override
  int get rest;
  @override
  MediaEmbedModel? get media;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProgramExerciseModelImplCopyWith<_$ProgramExerciseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
