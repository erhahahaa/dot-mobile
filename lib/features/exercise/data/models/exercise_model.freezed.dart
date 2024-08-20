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

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) {
  return mExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseModel {
  int get id => throw _privateConstructorUsedError;
  int get programId => throw _privateConstructorUsedError;
  int? get mediaId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ExerciseUnitValueModel? get repetition => throw _privateConstructorUsedError;
  ExerciseUnitValueModel? get sets => throw _privateConstructorUsedError;
  ExerciseUnitValueModel? get rest => throw _privateConstructorUsedError;
  ExerciseUnitValueModel? get tempo => throw _privateConstructorUsedError;
  ExerciseUnitValueModel? get intensity => throw _privateConstructorUsedError;
  MediaEmbedModel? get media => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ExerciseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseModelCopyWith<ExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseModelCopyWith<$Res> {
  factory $ExerciseModelCopyWith(
          ExerciseModel value, $Res Function(ExerciseModel) then) =
      _$ExerciseModelCopyWithImpl<$Res, ExerciseModel>;
  @useResult
  $Res call(
      {int id,
      int programId,
      int? mediaId,
      int order,
      String name,
      String? description,
      ExerciseUnitValueModel? repetition,
      ExerciseUnitValueModel? sets,
      ExerciseUnitValueModel? rest,
      ExerciseUnitValueModel? tempo,
      ExerciseUnitValueModel? intensity,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ExerciseUnitValueModelCopyWith<$Res>? get repetition;
  $ExerciseUnitValueModelCopyWith<$Res>? get sets;
  $ExerciseUnitValueModelCopyWith<$Res>? get rest;
  $ExerciseUnitValueModelCopyWith<$Res>? get tempo;
  $ExerciseUnitValueModelCopyWith<$Res>? get intensity;
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class _$ExerciseModelCopyWithImpl<$Res, $Val extends ExerciseModel>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
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
              as ExerciseUnitValueModel?,
      sets: freezed == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
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

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res>? get repetition {
    if (_value.repetition == null) {
      return null;
    }

    return $ExerciseUnitValueModelCopyWith<$Res>(_value.repetition!, (value) {
      return _then(_value.copyWith(repetition: value) as $Val);
    });
  }

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res>? get sets {
    if (_value.sets == null) {
      return null;
    }

    return $ExerciseUnitValueModelCopyWith<$Res>(_value.sets!, (value) {
      return _then(_value.copyWith(sets: value) as $Val);
    });
  }

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res>? get rest {
    if (_value.rest == null) {
      return null;
    }

    return $ExerciseUnitValueModelCopyWith<$Res>(_value.rest!, (value) {
      return _then(_value.copyWith(rest: value) as $Val);
    });
  }

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res>? get tempo {
    if (_value.tempo == null) {
      return null;
    }

    return $ExerciseUnitValueModelCopyWith<$Res>(_value.tempo!, (value) {
      return _then(_value.copyWith(tempo: value) as $Val);
    });
  }

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res>? get intensity {
    if (_value.intensity == null) {
      return null;
    }

    return $ExerciseUnitValueModelCopyWith<$Res>(_value.intensity!, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
  }

  /// Create a copy of ExerciseModel
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
abstract class _$$mExerciseModelImplCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$mExerciseModelImplCopyWith(_$mExerciseModelImpl value,
          $Res Function(_$mExerciseModelImpl) then) =
      __$$mExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int programId,
      int? mediaId,
      int order,
      String name,
      String? description,
      ExerciseUnitValueModel? repetition,
      ExerciseUnitValueModel? sets,
      ExerciseUnitValueModel? rest,
      ExerciseUnitValueModel? tempo,
      ExerciseUnitValueModel? intensity,
      MediaEmbedModel? media,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ExerciseUnitValueModelCopyWith<$Res>? get repetition;
  @override
  $ExerciseUnitValueModelCopyWith<$Res>? get sets;
  @override
  $ExerciseUnitValueModelCopyWith<$Res>? get rest;
  @override
  $ExerciseUnitValueModelCopyWith<$Res>? get tempo;
  @override
  $ExerciseUnitValueModelCopyWith<$Res>? get intensity;
  @override
  $MediaEmbedModelCopyWith<$Res>? get media;
}

/// @nodoc
class __$$mExerciseModelImplCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$mExerciseModelImpl>
    implements _$$mExerciseModelImplCopyWith<$Res> {
  __$$mExerciseModelImplCopyWithImpl(
      _$mExerciseModelImpl _value, $Res Function(_$mExerciseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$mExerciseModelImpl(
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
              as ExerciseUnitValueModel?,
      sets: freezed == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      rest: freezed == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      tempo: freezed == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel?,
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
class _$mExerciseModelImpl extends mExerciseModel {
  _$mExerciseModelImpl(
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
      this.updatedAt})
      : super._();

  factory _$mExerciseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$mExerciseModelImplFromJson(json);

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
  final ExerciseUnitValueModel? repetition;
  @override
  final ExerciseUnitValueModel? sets;
  @override
  final ExerciseUnitValueModel? rest;
  @override
  final ExerciseUnitValueModel? tempo;
  @override
  final ExerciseUnitValueModel? intensity;
  @override
  final MediaEmbedModel? media;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ExerciseModel(id: $id, programId: $programId, mediaId: $mediaId, order: $order, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest, tempo: $tempo, intensity: $intensity, media: $media, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$mExerciseModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$mExerciseModelImplCopyWith<_$mExerciseModelImpl> get copyWith =>
      __$$mExerciseModelImplCopyWithImpl<_$mExerciseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$mExerciseModelImplToJson(
      this,
    );
  }
}

abstract class mExerciseModel extends ExerciseModel {
  factory mExerciseModel(
      {final int id,
      final int programId,
      final int? mediaId,
      final int order,
      final String name,
      final String? description,
      final ExerciseUnitValueModel? repetition,
      final ExerciseUnitValueModel? sets,
      final ExerciseUnitValueModel? rest,
      final ExerciseUnitValueModel? tempo,
      final ExerciseUnitValueModel? intensity,
      final MediaEmbedModel? media,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$mExerciseModelImpl;
  mExerciseModel._() : super._();

  factory mExerciseModel.fromJson(Map<String, dynamic> json) =
      _$mExerciseModelImpl.fromJson;

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
  ExerciseUnitValueModel? get repetition;
  @override
  ExerciseUnitValueModel? get sets;
  @override
  ExerciseUnitValueModel? get rest;
  @override
  ExerciseUnitValueModel? get tempo;
  @override
  ExerciseUnitValueModel? get intensity;
  @override
  MediaEmbedModel? get media;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$mExerciseModelImplCopyWith<_$mExerciseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseUnitValueModel _$ExerciseUnitValueModelFromJson(
    Map<String, dynamic> json) {
  return _ExerciseUnitValueModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseUnitValueModel {
  String? get unit => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this ExerciseUnitValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseUnitValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseUnitValueModelCopyWith<ExerciseUnitValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseUnitValueModelCopyWith<$Res> {
  factory $ExerciseUnitValueModelCopyWith(ExerciseUnitValueModel value,
          $Res Function(ExerciseUnitValueModel) then) =
      _$ExerciseUnitValueModelCopyWithImpl<$Res, ExerciseUnitValueModel>;
  @useResult
  $Res call({String? unit, int value});
}

/// @nodoc
class _$ExerciseUnitValueModelCopyWithImpl<$Res,
        $Val extends ExerciseUnitValueModel>
    implements $ExerciseUnitValueModelCopyWith<$Res> {
  _$ExerciseUnitValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseUnitValueModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ExerciseUnitValueModelImplCopyWith<$Res>
    implements $ExerciseUnitValueModelCopyWith<$Res> {
  factory _$$ExerciseUnitValueModelImplCopyWith(
          _$ExerciseUnitValueModelImpl value,
          $Res Function(_$ExerciseUnitValueModelImpl) then) =
      __$$ExerciseUnitValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? unit, int value});
}

/// @nodoc
class __$$ExerciseUnitValueModelImplCopyWithImpl<$Res>
    extends _$ExerciseUnitValueModelCopyWithImpl<$Res,
        _$ExerciseUnitValueModelImpl>
    implements _$$ExerciseUnitValueModelImplCopyWith<$Res> {
  __$$ExerciseUnitValueModelImplCopyWithImpl(
      _$ExerciseUnitValueModelImpl _value,
      $Res Function(_$ExerciseUnitValueModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseUnitValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = freezed,
    Object? value = null,
  }) {
    return _then(_$ExerciseUnitValueModelImpl(
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
class _$ExerciseUnitValueModelImpl extends _ExerciseUnitValueModel {
  _$ExerciseUnitValueModelImpl({this.unit, this.value = 0}) : super._();

  factory _$ExerciseUnitValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseUnitValueModelImplFromJson(json);

  @override
  final String? unit;
  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'ExerciseUnitValueModel(unit: $unit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseUnitValueModelImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unit, value);

  /// Create a copy of ExerciseUnitValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseUnitValueModelImplCopyWith<_$ExerciseUnitValueModelImpl>
      get copyWith => __$$ExerciseUnitValueModelImplCopyWithImpl<
          _$ExerciseUnitValueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseUnitValueModelImplToJson(
      this,
    );
  }
}

abstract class _ExerciseUnitValueModel extends ExerciseUnitValueModel {
  factory _ExerciseUnitValueModel({final String? unit, final int value}) =
      _$ExerciseUnitValueModelImpl;
  _ExerciseUnitValueModel._() : super._();

  factory _ExerciseUnitValueModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseUnitValueModelImpl.fromJson;

  @override
  String? get unit;
  @override
  int get value;

  /// Create a copy of ExerciseUnitValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseUnitValueModelImplCopyWith<_$ExerciseUnitValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
