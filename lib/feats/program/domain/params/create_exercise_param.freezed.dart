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
  int get repetition => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get rest => throw _privateConstructorUsedError;

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
      int repetition,
      int sets,
      int rest});
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
      int repetition,
      int sets,
      int rest});
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
class _$CreateProgramExerciseParamsImpl
    implements _CreateProgramExerciseParams {
  const _$CreateProgramExerciseParamsImpl(
      {this.order = 0,
      this.programId = 0,
      this.mediaId = 0,
      this.name = '',
      this.description,
      this.repetition = 0,
      this.sets = 0,
      this.rest = 0});

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
  final int repetition;
  @override
  @JsonKey()
  final int sets;
  @override
  @JsonKey()
  final int rest;

  @override
  String toString() {
    return 'CreateProgramExerciseParams(order: $order, programId: $programId, mediaId: $mediaId, name: $name, description: $description, repetition: $repetition, sets: $sets, rest: $rest)';
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
            (identical(other.rest, rest) || other.rest == rest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, programId, mediaId, name,
      description, repetition, sets, rest);

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
      final int repetition,
      final int sets,
      final int rest}) = _$CreateProgramExerciseParamsImpl;

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
  int get repetition;
  @override
  int get sets;
  @override
  int get rest;
  @override
  @JsonKey(ignore: true)
  _$$CreateProgramExerciseParamsImplCopyWith<_$CreateProgramExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
