// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exercise_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProgramExerciseParams _$CreateProgramExerciseParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateProgramExerciseParams.fromJson(json);
}

/// @nodoc
mixin _$CreateProgramExerciseParams {
  int get order => throw _privateConstructorUsedError;
  int get programId => throw _privateConstructorUsedError;
  int get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ProgramUnitValueModel get repetition => throw _privateConstructorUsedError;
  ProgramUnitValueModel get sets => throw _privateConstructorUsedError;
  ProgramUnitValueModel get rest => throw _privateConstructorUsedError;
  ProgramUnitValueModel get tempo => throw _privateConstructorUsedError;
  ProgramUnitValueModel get intensity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProgramExerciseParamsCopyWith<CreateProgramExerciseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProgramExerciseParamsCopyWith<$Res> {
  factory $CreateProgramExerciseParamsCopyWith(
          CreateProgramExerciseParams value,
          $Res Function(CreateProgramExerciseParams) then) =
      _$CreateProgramExerciseParamsCopyWithImpl<$Res,
          CreateProgramExerciseParams>;
  @useResult
  $Res call(
      {int order,
      int programId,
      int mediaId,
      String name,
      String? description,
      ProgramUnitValueModel repetition,
      ProgramUnitValueModel sets,
      ProgramUnitValueModel rest,
      ProgramUnitValueModel tempo,
      ProgramUnitValueModel intensity});

  $ProgramUnitValueModelCopyWith<$Res> get repetition;
  $ProgramUnitValueModelCopyWith<$Res> get sets;
  $ProgramUnitValueModelCopyWith<$Res> get rest;
  $ProgramUnitValueModelCopyWith<$Res> get tempo;
  $ProgramUnitValueModelCopyWith<$Res> get intensity;
}

/// @nodoc
class _$CreateProgramExerciseParamsCopyWithImpl<$Res,
        $Val extends CreateProgramExerciseParams>
    implements $CreateProgramExerciseParamsCopyWith<$Res> {
  _$CreateProgramExerciseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? programId = null,
    Object? mediaId = null,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? tempo = null,
    Object? intensity = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ProgramUnitValueModel,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res> get repetition {
    return $ProgramUnitValueModelCopyWith<$Res>(_value.repetition, (value) {
      return _then(_value.copyWith(repetition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res> get sets {
    return $ProgramUnitValueModelCopyWith<$Res>(_value.sets, (value) {
      return _then(_value.copyWith(sets: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res> get rest {
    return $ProgramUnitValueModelCopyWith<$Res>(_value.rest, (value) {
      return _then(_value.copyWith(rest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res> get tempo {
    return $ProgramUnitValueModelCopyWith<$Res>(_value.tempo, (value) {
      return _then(_value.copyWith(tempo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramUnitValueModelCopyWith<$Res> get intensity {
    return $ProgramUnitValueModelCopyWith<$Res>(_value.intensity, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateProgramExerciseParamsImplCopyWith<$Res>
    implements $CreateProgramExerciseParamsCopyWith<$Res> {
  factory _$$CreateProgramExerciseParamsImplCopyWith(
          _$CreateProgramExerciseParamsImpl value,
          $Res Function(_$CreateProgramExerciseParamsImpl) then) =
      __$$CreateProgramExerciseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      int programId,
      int mediaId,
      String name,
      String? description,
      ProgramUnitValueModel repetition,
      ProgramUnitValueModel sets,
      ProgramUnitValueModel rest,
      ProgramUnitValueModel tempo,
      ProgramUnitValueModel intensity});

  @override
  $ProgramUnitValueModelCopyWith<$Res> get repetition;
  @override
  $ProgramUnitValueModelCopyWith<$Res> get sets;
  @override
  $ProgramUnitValueModelCopyWith<$Res> get rest;
  @override
  $ProgramUnitValueModelCopyWith<$Res> get tempo;
  @override
  $ProgramUnitValueModelCopyWith<$Res> get intensity;
}

/// @nodoc
class __$$CreateProgramExerciseParamsImplCopyWithImpl<$Res>
    extends _$CreateProgramExerciseParamsCopyWithImpl<$Res,
        _$CreateProgramExerciseParamsImpl>
    implements _$$CreateProgramExerciseParamsImplCopyWith<$Res> {
  __$$CreateProgramExerciseParamsImplCopyWithImpl(
      _$CreateProgramExerciseParamsImpl _value,
      $Res Function(_$CreateProgramExerciseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? programId = null,
    Object? mediaId = null,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? tempo = null,
    Object? intensity = null,
  }) {
    return _then(_$CreateProgramExerciseParamsImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ProgramUnitValueModel,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ProgramUnitValueModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProgramExerciseParamsImpl
    implements _CreateProgramExerciseParams {
  const _$CreateProgramExerciseParamsImpl(
      {this.order = 0,
      this.programId = 0,
      this.mediaId = 0,
      this.name = '',
      this.description,
      this.repetition = const ProgramUnitValueModel(),
      this.sets = const ProgramUnitValueModel(),
      this.rest = const ProgramUnitValueModel(),
      this.tempo = const ProgramUnitValueModel(),
      this.intensity = const ProgramUnitValueModel()});

  factory _$CreateProgramExerciseParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateProgramExerciseParamsImplFromJson(json);

  @override
  @JsonKey()
  final int order;
  @override
  @JsonKey()
  final int programId;
  @override
  @JsonKey()
  final int mediaId;
  @override
  @JsonKey()
  final String name;
  @override
  final String? description;
  @override
  @JsonKey()
  final ProgramUnitValueModel repetition;
  @override
  @JsonKey()
  final ProgramUnitValueModel sets;
  @override
  @JsonKey()
  final ProgramUnitValueModel rest;
  @override
  @JsonKey()
  final ProgramUnitValueModel tempo;
  @override
  @JsonKey()
  final ProgramUnitValueModel intensity;

  @override
  String toString() {
    return 'CreateProgramExerciseParams(order: $order, programId: $programId, mediaId: $mediaId, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest, tempo: $tempo, intensity: $intensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramExerciseParamsImpl &&
            (identical(other.order, order) || other.order == order) &&
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
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, programId, mediaId, name,
      description, repetition, sets, rest, tempo, intensity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProgramExerciseParamsImplCopyWith<_$CreateProgramExerciseParamsImpl>
      get copyWith => __$$CreateProgramExerciseParamsImplCopyWithImpl<
          _$CreateProgramExerciseParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProgramExerciseParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateProgramExerciseParams
    implements CreateProgramExerciseParams {
  const factory _CreateProgramExerciseParams(
          {final int order,
          final int programId,
          final int mediaId,
          final String name,
          final String? description,
          final ProgramUnitValueModel repetition,
          final ProgramUnitValueModel sets,
          final ProgramUnitValueModel rest,
          final ProgramUnitValueModel tempo,
          final ProgramUnitValueModel intensity}) =
      _$CreateProgramExerciseParamsImpl;

  factory _CreateProgramExerciseParams.fromJson(Map<String, dynamic> json) =
      _$CreateProgramExerciseParamsImpl.fromJson;

  @override
  int get order;
  @override
  int get programId;
  @override
  int get mediaId;
  @override
  String get name;
  @override
  String? get description;
  @override
  ProgramUnitValueModel get repetition;
  @override
  ProgramUnitValueModel get sets;
  @override
  ProgramUnitValueModel get rest;
  @override
  ProgramUnitValueModel get tempo;
  @override
  ProgramUnitValueModel get intensity;
  @override
  @JsonKey(ignore: true)
  _$$CreateProgramExerciseParamsImplCopyWith<_$CreateProgramExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
