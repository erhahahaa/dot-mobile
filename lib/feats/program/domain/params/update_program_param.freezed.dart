// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_program_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProgramParams _$UpdateProgramParamsFromJson(Map<String, dynamic> json) {
  return _UpdateProgramParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProgramParams {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<UpdateProgramExerciseParams> get exercises =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProgramParamsCopyWith<UpdateProgramParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProgramParamsCopyWith<$Res> {
  factory $UpdateProgramParamsCopyWith(
          UpdateProgramParams value, $Res Function(UpdateProgramParams) then) =
      _$UpdateProgramParamsCopyWithImpl<$Res, UpdateProgramParams>;
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      List<UpdateProgramExerciseParams> exercises});
}

/// @nodoc
class _$UpdateProgramParamsCopyWithImpl<$Res, $Val extends UpdateProgramParams>
    implements $UpdateProgramParamsCopyWith<$Res> {
  _$UpdateProgramParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? exercises = null,
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<UpdateProgramExerciseParams>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProgramParamsImplCopyWith<$Res>
    implements $UpdateProgramParamsCopyWith<$Res> {
  factory _$$UpdateProgramParamsImplCopyWith(_$UpdateProgramParamsImpl value,
          $Res Function(_$UpdateProgramParamsImpl) then) =
      __$$UpdateProgramParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      List<UpdateProgramExerciseParams> exercises});
}

/// @nodoc
class __$$UpdateProgramParamsImplCopyWithImpl<$Res>
    extends _$UpdateProgramParamsCopyWithImpl<$Res, _$UpdateProgramParamsImpl>
    implements _$$UpdateProgramParamsImplCopyWith<$Res> {
  __$$UpdateProgramParamsImplCopyWithImpl(_$UpdateProgramParamsImpl _value,
      $Res Function(_$UpdateProgramParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? exercises = null,
  }) {
    return _then(_$UpdateProgramParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<UpdateProgramExerciseParams>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProgramParamsImpl implements _UpdateProgramParams {
  const _$UpdateProgramParamsImpl(
      {this.id = 0,
      this.name = '',
      this.startDate,
      this.endDate,
      final List<UpdateProgramExerciseParams> exercises = const []})
      : _exercises = exercises;

  factory _$UpdateProgramParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgramParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  final List<UpdateProgramExerciseParams> _exercises;
  @override
  @JsonKey()
  List<UpdateProgramExerciseParams> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'UpdateProgramParams(id: $id, name: $name, startDate: $startDate, endDate: $endDate, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgramParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, startDate, endDate,
      const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgramParamsImplCopyWith<_$UpdateProgramParamsImpl> get copyWith =>
      __$$UpdateProgramParamsImplCopyWithImpl<_$UpdateProgramParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgramParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProgramParams implements UpdateProgramParams {
  const factory _UpdateProgramParams(
          {final int id,
          final String name,
          final DateTime? startDate,
          final DateTime? endDate,
          final List<UpdateProgramExerciseParams> exercises}) =
      _$UpdateProgramParamsImpl;

  factory _UpdateProgramParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProgramParamsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  List<UpdateProgramExerciseParams> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProgramParamsImplCopyWith<_$UpdateProgramParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
