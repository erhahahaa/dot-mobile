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
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ProgramUnitValueModel? get repetition => throw _privateConstructorUsedError;
  ProgramUnitValueModel? get sets => throw _privateConstructorUsedError;
  ProgramUnitValueModel? get rest => throw _privateConstructorUsedError;
  ProgramUnitValueModel? get tempo => throw _privateConstructorUsedError;
  ProgramUnitValueModel? get intensity => throw _privateConstructorUsedError;
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
      int order,
      String name,
      String? description,
      ProgramUnitValueModel? repetition,
      ProgramUnitValueModel? sets,
      ProgramUnitValueModel? rest,
      ProgramUnitValueModel? tempo,
      ProgramUnitValueModel? intensity,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ProgramUnitValueModelCopyWith<$Res>? get repetition;
  $ProgramUnitValueModelCopyWith<$Res>? get sets;
  $ProgramUnitValueModelCopyWith<$Res>? get rest;
  $ProgramUnitValueModelCopyWith<$Res>? get tempo;
  $ProgramUnitValueModelCopyWith<$Res>? get intensity;
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
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = freezed,
    Object? sets = freezed,
    Object? rest = freezed,
    Object? tempo = freezed,
    Object? intensity = freezed,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      sets: freezed == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
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
  $ProgramUnitValueModelCopyWith<$Res>? get repetition {
    if (_value.repetition == null) {
      return null;
    }

    return $ProgramUnitValueModelCopyWith<$Res>(_value.repetition!, (value) {
      return _then(_value.copyWith(repetition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res>? get sets {
    if (_value.sets == null) {
      return null;
    }

    return $ProgramUnitValueModelCopyWith<$Res>(_value.sets!, (value) {
      return _then(_value.copyWith(sets: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res>? get rest {
    if (_value.rest == null) {
      return null;
    }

    return $ProgramUnitValueModelCopyWith<$Res>(_value.rest!, (value) {
      return _then(_value.copyWith(rest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res>? get tempo {
    if (_value.tempo == null) {
      return null;
    }

    return $ProgramUnitValueModelCopyWith<$Res>(_value.tempo!, (value) {
      return _then(_value.copyWith(tempo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res>? get intensity {
    if (_value.intensity == null) {
      return null;
    }

    return $ProgramUnitValueModelCopyWith<$Res>(_value.intensity!, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
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
      int order,
      String name,
      String? description,
      ProgramUnitValueModel? repetition,
      ProgramUnitValueModel? sets,
      ProgramUnitValueModel? rest,
      ProgramUnitValueModel? tempo,
      ProgramUnitValueModel? intensity,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ProgramUnitValueModelCopyWith<$Res>? get repetition;
  @override
  $ProgramUnitValueModelCopyWith<$Res>? get sets;
  @override
  $ProgramUnitValueModelCopyWith<$Res>? get rest;
  @override
  $ProgramUnitValueModelCopyWith<$Res>? get tempo;
  @override
  $ProgramUnitValueModelCopyWith<$Res>? get intensity;
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
    Object? order = null,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = freezed,
    Object? sets = freezed,
    Object? rest = freezed,
    Object? tempo = freezed,
    Object? intensity = freezed,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      sets: freezed == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel?,
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
      this.order = 0,
      this.name = 'Dot Exercise 0',
      this.description,
      this.repetition,
      this.sets,
      this.rest,
      this.tempo,
      this.intensity,
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
  final int order;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  final ProgramUnitValueModel? repetition;
  @override
  final ProgramUnitValueModel? sets;
  @override
  final ProgramUnitValueModel? rest;
  @override
  final ProgramUnitValueModel? tempo;
  @override
  final ProgramUnitValueModel? intensity;
  @override
  final MediaEmbedModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProgramExerciseModel(id: $id, programId: $programId, mediaId: $mediaId, order: $order, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest, tempo: $tempo, intensity: $intensity, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.rest, rest) || other.rest == rest) &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      programId,
      mediaId,
      order,
      name,
      description,
      repetition,
      sets,
      rest,
      tempo,
      intensity,
      media,
      createdAt,
      updatedAt);

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
      final int order,
      final String name,
      final String? description,
      final ProgramUnitValueModel? repetition,
      final ProgramUnitValueModel? sets,
      final ProgramUnitValueModel? rest,
      final ProgramUnitValueModel? tempo,
      final ProgramUnitValueModel? intensity,
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
  int get order;
  @override
  String get name;
  @override
  String? get description;
  @override
  ProgramUnitValueModel? get repetition;
  @override
  ProgramUnitValueModel? get sets;
  @override
  ProgramUnitValueModel? get rest;
  @override
  ProgramUnitValueModel? get tempo;
  @override
  ProgramUnitValueModel? get intensity;
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

ProgramUnitValueModel _$ProgramUnitValueModelFromJson(
    Map<String, dynamic> json) {
  return _ProgramUnitValueModel.fromJson(json);
}

/// @nodoc
mixin _$ProgramUnitValueModel {
  String? get unit => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramUnitValueModelCopyWith<ProgramUnitValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramUnitValueModelCopyWith<$Res> {
  factory $ProgramUnitValueModelCopyWith(ProgramUnitValueModel value,
          $Res Function(ProgramUnitValueModel) then) =
      _$ProgramUnitValueModelCopyWithImpl<$Res, ProgramUnitValueModel>;
  @useResult
  $Res call({String? unit, int value});
}

/// @nodoc
class _$ProgramUnitValueModelCopyWithImpl<$Res,
        $Val extends ProgramUnitValueModel>
    implements $ProgramUnitValueModelCopyWith<$Res> {
  _$ProgramUnitValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramUnitValueModelImplCopyWith<$Res>
    implements $ProgramUnitValueModelCopyWith<$Res> {
  factory _$$ProgramUnitValueModelImplCopyWith(
          _$ProgramUnitValueModelImpl value,
          $Res Function(_$ProgramUnitValueModelImpl) then) =
      __$$ProgramUnitValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? unit, int value});
}

/// @nodoc
class __$$ProgramUnitValueModelImplCopyWithImpl<$Res>
    extends _$ProgramUnitValueModelCopyWithImpl<$Res,
        _$ProgramUnitValueModelImpl>
    implements _$$ProgramUnitValueModelImplCopyWith<$Res> {
  __$$ProgramUnitValueModelImplCopyWithImpl(_$ProgramUnitValueModelImpl _value,
      $Res Function(_$ProgramUnitValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = freezed,
    Object? value = null,
  }) {
    return _then(_$ProgramUnitValueModelImpl(
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramUnitValueModelImpl implements _ProgramUnitValueModel {
  const _$ProgramUnitValueModelImpl({this.unit, this.value = 0});

  factory _$ProgramUnitValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramUnitValueModelImplFromJson(json);

  @override
  final String? unit;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'ProgramUnitValueModel(unit: $unit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramUnitValueModelImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unit, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramUnitValueModelImplCopyWith<_$ProgramUnitValueModelImpl>
      get copyWith => __$$ProgramUnitValueModelImplCopyWithImpl<
          _$ProgramUnitValueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramUnitValueModelImplToJson(
      this,
    );
  }
}

abstract class _ProgramUnitValueModel implements ProgramUnitValueModel {
  const factory _ProgramUnitValueModel({final String? unit, final int value}) =
      _$ProgramUnitValueModelImpl;

  factory _ProgramUnitValueModel.fromJson(Map<String, dynamic> json) =
      _$ProgramUnitValueModelImpl.fromJson;

  @override
  String? get unit;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$ProgramUnitValueModelImplCopyWith<_$ProgramUnitValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
