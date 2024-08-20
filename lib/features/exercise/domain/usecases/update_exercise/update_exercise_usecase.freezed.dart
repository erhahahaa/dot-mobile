// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exercise_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateExerciseParams _$UpdateExerciseParamsFromJson(Map<String, dynamic> json) {
  return _UpdateExerciseParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateExerciseParams {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get programId => throw _privateConstructorUsedError;
  int? get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ExerciseUnitValueModel get repetition => throw _privateConstructorUsedError;
  ExerciseUnitValueModel get sets => throw _privateConstructorUsedError;
  ExerciseUnitValueModel get rest => throw _privateConstructorUsedError;
  ExerciseUnitValueModel get tempo => throw _privateConstructorUsedError;
  ExerciseUnitValueModel get intensity => throw _privateConstructorUsedError;

  /// Serializes this UpdateExerciseParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateExerciseParamsCopyWith<UpdateExerciseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateExerciseParamsCopyWith<$Res> {
  factory $UpdateExerciseParamsCopyWith(UpdateExerciseParams value,
          $Res Function(UpdateExerciseParams) then) =
      _$UpdateExerciseParamsCopyWithImpl<$Res, UpdateExerciseParams>;
  @useResult
  $Res call(
      {int id,
      int order,
      int programId,
      int? mediaId,
      String name,
      String? description,
      ExerciseUnitValueModel repetition,
      ExerciseUnitValueModel sets,
      ExerciseUnitValueModel rest,
      ExerciseUnitValueModel tempo,
      ExerciseUnitValueModel intensity});

  $ExerciseUnitValueModelCopyWith<$Res> get repetition;
  $ExerciseUnitValueModelCopyWith<$Res> get sets;
  $ExerciseUnitValueModelCopyWith<$Res> get rest;
  $ExerciseUnitValueModelCopyWith<$Res> get tempo;
  $ExerciseUnitValueModelCopyWith<$Res> get intensity;
}

/// @nodoc
class _$UpdateExerciseParamsCopyWithImpl<$Res,
        $Val extends UpdateExerciseParams>
    implements $UpdateExerciseParamsCopyWith<$Res> {
  _$UpdateExerciseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? programId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? tempo = null,
    Object? intensity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
              as ExerciseUnitValueModel,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
    ) as $Val);
  }

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res> get repetition {
    return $ExerciseUnitValueModelCopyWith<$Res>(_value.repetition, (value) {
      return _then(_value.copyWith(repetition: value) as $Val);
    });
  }

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res> get sets {
    return $ExerciseUnitValueModelCopyWith<$Res>(_value.sets, (value) {
      return _then(_value.copyWith(sets: value) as $Val);
    });
  }

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res> get rest {
    return $ExerciseUnitValueModelCopyWith<$Res>(_value.rest, (value) {
      return _then(_value.copyWith(rest: value) as $Val);
    });
  }

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res> get tempo {
    return $ExerciseUnitValueModelCopyWith<$Res>(_value.tempo, (value) {
      return _then(_value.copyWith(tempo: value) as $Val);
    });
  }

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseUnitValueModelCopyWith<$Res> get intensity {
    return $ExerciseUnitValueModelCopyWith<$Res>(_value.intensity, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateExerciseParamsImplCopyWith<$Res>
    implements $UpdateExerciseParamsCopyWith<$Res> {
  factory _$$UpdateExerciseParamsImplCopyWith(_$UpdateExerciseParamsImpl value,
          $Res Function(_$UpdateExerciseParamsImpl) then) =
      __$$UpdateExerciseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int order,
      int programId,
      int? mediaId,
      String name,
      String? description,
      ExerciseUnitValueModel repetition,
      ExerciseUnitValueModel sets,
      ExerciseUnitValueModel rest,
      ExerciseUnitValueModel tempo,
      ExerciseUnitValueModel intensity});

  @override
  $ExerciseUnitValueModelCopyWith<$Res> get repetition;
  @override
  $ExerciseUnitValueModelCopyWith<$Res> get sets;
  @override
  $ExerciseUnitValueModelCopyWith<$Res> get rest;
  @override
  $ExerciseUnitValueModelCopyWith<$Res> get tempo;
  @override
  $ExerciseUnitValueModelCopyWith<$Res> get intensity;
}

/// @nodoc
class __$$UpdateExerciseParamsImplCopyWithImpl<$Res>
    extends _$UpdateExerciseParamsCopyWithImpl<$Res, _$UpdateExerciseParamsImpl>
    implements _$$UpdateExerciseParamsImplCopyWith<$Res> {
  __$$UpdateExerciseParamsImplCopyWithImpl(_$UpdateExerciseParamsImpl _value,
      $Res Function(_$UpdateExerciseParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? programId = null,
    Object? mediaId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
    Object? tempo = null,
    Object? intensity = null,
  }) {
    return _then(_$UpdateExerciseParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
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
              as ExerciseUnitValueModel,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      rest: null == rest
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as ExerciseUnitValueModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateExerciseParamsImpl extends _UpdateExerciseParams {
  const _$UpdateExerciseParamsImpl(
      {required this.id,
      required this.order,
      required this.programId,
      required this.mediaId,
      required this.name,
      required this.description,
      required this.repetition,
      required this.sets,
      required this.rest,
      required this.tempo,
      required this.intensity})
      : super._();

  factory _$UpdateExerciseParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateExerciseParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int order;
  @override
  final int programId;
  @override
  final int? mediaId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final ExerciseUnitValueModel repetition;
  @override
  final ExerciseUnitValueModel sets;
  @override
  final ExerciseUnitValueModel rest;
  @override
  final ExerciseUnitValueModel tempo;
  @override
  final ExerciseUnitValueModel intensity;

  @override
  String toString() {
    return 'UpdateExerciseParams(id: $id, order: $order, programId: $programId, mediaId: $mediaId, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest, tempo: $tempo, intensity: $intensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExerciseParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, programId, mediaId,
      name, description, repetition, sets, rest, tempo, intensity);

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExerciseParamsImplCopyWith<_$UpdateExerciseParamsImpl>
      get copyWith =>
          __$$UpdateExerciseParamsImplCopyWithImpl<_$UpdateExerciseParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateExerciseParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateExerciseParams extends UpdateExerciseParams {
  const factory _UpdateExerciseParams(
          {required final int id,
          required final int order,
          required final int programId,
          required final int? mediaId,
          required final String name,
          required final String? description,
          required final ExerciseUnitValueModel repetition,
          required final ExerciseUnitValueModel sets,
          required final ExerciseUnitValueModel rest,
          required final ExerciseUnitValueModel tempo,
          required final ExerciseUnitValueModel intensity}) =
      _$UpdateExerciseParamsImpl;
  const _UpdateExerciseParams._() : super._();

  factory _UpdateExerciseParams.fromJson(Map<String, dynamic> json) =
      _$UpdateExerciseParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  int get programId;
  @override
  int? get mediaId;
  @override
  String get name;
  @override
  String? get description;
  @override
  ExerciseUnitValueModel get repetition;
  @override
  ExerciseUnitValueModel get sets;
  @override
  ExerciseUnitValueModel get rest;
  @override
  ExerciseUnitValueModel get tempo;
  @override
  ExerciseUnitValueModel get intensity;

  /// Create a copy of UpdateExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExerciseParamsImplCopyWith<_$UpdateExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
