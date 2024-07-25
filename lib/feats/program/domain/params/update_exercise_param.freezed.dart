// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exercise_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProgramExerciseParams _$UpdateProgramExerciseParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateProgramExerciseParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProgramExerciseParams {
  int get programId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get repetition => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get rest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProgramExerciseParamsCopyWith<UpdateProgramExerciseParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProgramExerciseParamsCopyWith<$Res> {
  factory $UpdateProgramExerciseParamsCopyWith(
          UpdateProgramExerciseParams value,
          $Res Function(UpdateProgramExerciseParams) then) =
      _$UpdateProgramExerciseParamsCopyWithImpl<$Res,
          UpdateProgramExerciseParams>;
  @useResult
  $Res call(
      {int programId,
      String name,
      String description,
      int repetition,
      int sets,
      int rest});
}

/// @nodoc
class _$UpdateProgramExerciseParamsCopyWithImpl<$Res,
        $Val extends UpdateProgramExerciseParams>
    implements $UpdateProgramExerciseParamsCopyWith<$Res> {
  _$UpdateProgramExerciseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? name = null,
    Object? description = null,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
  }) {
    return _then(_value.copyWith(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProgramExerciseParamsImplCopyWith<$Res>
    implements $UpdateProgramExerciseParamsCopyWith<$Res> {
  factory _$$UpdateProgramExerciseParamsImplCopyWith(
          _$UpdateProgramExerciseParamsImpl value,
          $Res Function(_$UpdateProgramExerciseParamsImpl) then) =
      __$$UpdateProgramExerciseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int programId,
      String name,
      String description,
      int repetition,
      int sets,
      int rest});
}

/// @nodoc
class __$$UpdateProgramExerciseParamsImplCopyWithImpl<$Res>
    extends _$UpdateProgramExerciseParamsCopyWithImpl<$Res,
        _$UpdateProgramExerciseParamsImpl>
    implements _$$UpdateProgramExerciseParamsImplCopyWith<$Res> {
  __$$UpdateProgramExerciseParamsImplCopyWithImpl(
      _$UpdateProgramExerciseParamsImpl _value,
      $Res Function(_$UpdateProgramExerciseParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? name = null,
    Object? description = null,
    Object? repetition = null,
    Object? sets = null,
    Object? rest = null,
  }) {
    return _then(_$UpdateProgramExerciseParamsImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgramExerciseParamsImpl
    implements _UpdateProgramExerciseParams {
  const _$UpdateProgramExerciseParamsImpl(
      {this.programId = 0,
      this.name = '',
      this.description = '',
      this.repetition = 0,
      this.sets = 0,
      this.rest = 0});

  factory _$UpdateProgramExerciseParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateProgramExerciseParamsImplFromJson(json);

  @override
  @JsonKey()
  final int programId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
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
  String toString() {
    return 'UpdateProgramExerciseParams(programId: $programId, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgramExerciseParamsImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.rest, rest) || other.rest == rest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, programId, name, description, repetition, sets, rest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgramExerciseParamsImplCopyWith<_$UpdateProgramExerciseParamsImpl>
      get copyWith => __$$UpdateProgramExerciseParamsImplCopyWithImpl<
          _$UpdateProgramExerciseParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgramExerciseParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProgramExerciseParams
    implements UpdateProgramExerciseParams {
  const factory _UpdateProgramExerciseParams(
      {final int programId,
      final String name,
      final String description,
      final int repetition,
      final int sets,
      final int rest}) = _$UpdateProgramExerciseParamsImpl;

  factory _UpdateProgramExerciseParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProgramExerciseParamsImpl.fromJson;

  @override
  int get programId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get repetition;
  @override
  int get sets;
  @override
  int get rest;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProgramExerciseParamsImplCopyWith<_$UpdateProgramExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
