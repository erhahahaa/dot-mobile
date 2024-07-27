// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgramState {
  BaseState get state => throw _privateConstructorUsedError;
  List<ProgramModel> get programs => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  ProgramModel? get createdProgram => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgramStateCopyWith<ProgramState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramStateCopyWith<$Res> {
  factory $ProgramStateCopyWith(
          ProgramState value, $Res Function(ProgramState) then) =
      _$ProgramStateCopyWithImpl<$Res, ProgramState>;
  @useResult
  $Res call(
      {BaseState state,
      List<ProgramModel> programs,
      Failure? failure,
      ProgramModel? createdProgram});

  $ProgramModelCopyWith<$Res>? get createdProgram;
}

/// @nodoc
class _$ProgramStateCopyWithImpl<$Res, $Val extends ProgramState>
    implements $ProgramStateCopyWith<$Res> {
  _$ProgramStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? programs = null,
    Object? failure = freezed,
    Object? createdProgram = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      createdProgram: freezed == createdProgram
          ? _value.createdProgram
          : createdProgram // ignore: cast_nullable_to_non_nullable
              as ProgramModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramModelCopyWith<$Res>? get createdProgram {
    if (_value.createdProgram == null) {
      return null;
    }

    return $ProgramModelCopyWith<$Res>(_value.createdProgram!, (value) {
      return _then(_value.copyWith(createdProgram: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramStateImplCopyWith<$Res>
    implements $ProgramStateCopyWith<$Res> {
  factory _$$ProgramStateImplCopyWith(
          _$ProgramStateImpl value, $Res Function(_$ProgramStateImpl) then) =
      __$$ProgramStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState state,
      List<ProgramModel> programs,
      Failure? failure,
      ProgramModel? createdProgram});

  @override
  $ProgramModelCopyWith<$Res>? get createdProgram;
}

/// @nodoc
class __$$ProgramStateImplCopyWithImpl<$Res>
    extends _$ProgramStateCopyWithImpl<$Res, _$ProgramStateImpl>
    implements _$$ProgramStateImplCopyWith<$Res> {
  __$$ProgramStateImplCopyWithImpl(
      _$ProgramStateImpl _value, $Res Function(_$ProgramStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? programs = null,
    Object? failure = freezed,
    Object? createdProgram = freezed,
  }) {
    return _then(_$ProgramStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      createdProgram: freezed == createdProgram
          ? _value.createdProgram
          : createdProgram // ignore: cast_nullable_to_non_nullable
              as ProgramModel?,
    ));
  }
}

/// @nodoc

class _$ProgramStateImpl implements _ProgramState {
  const _$ProgramStateImpl(
      {this.state = BaseState.initial,
      final List<ProgramModel> programs = const [],
      this.failure,
      this.createdProgram})
      : _programs = programs;

  @override
  @JsonKey()
  final BaseState state;
  final List<ProgramModel> _programs;
  @override
  @JsonKey()
  List<ProgramModel> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  final Failure? failure;
  @override
  final ProgramModel? createdProgram;

  @override
  String toString() {
    return 'ProgramState(state: $state, programs: $programs, failure: $failure, createdProgram: $createdProgram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._programs, _programs) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.createdProgram, createdProgram) ||
                other.createdProgram == createdProgram));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state,
      const DeepCollectionEquality().hash(_programs), failure, createdProgram);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateImplCopyWith<_$ProgramStateImpl> get copyWith =>
      __$$ProgramStateImplCopyWithImpl<_$ProgramStateImpl>(this, _$identity);
}

abstract class _ProgramState implements ProgramState {
  const factory _ProgramState(
      {final BaseState state,
      final List<ProgramModel> programs,
      final Failure? failure,
      final ProgramModel? createdProgram}) = _$ProgramStateImpl;

  @override
  BaseState get state;
  @override
  List<ProgramModel> get programs;
  @override
  Failure? get failure;
  @override
  ProgramModel? get createdProgram;
  @override
  @JsonKey(ignore: true)
  _$$ProgramStateImplCopyWith<_$ProgramStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
