// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExerciseState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseStateCopyWith<ExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseStateCopyWith<$Res> {
  factory $ExerciseStateCopyWith(
          ExerciseState value, $Res Function(ExerciseState) then) =
      _$ExerciseStateCopyWithImpl<$Res, ExerciseState>;
  @useResult
  $Res call({BaseState state, Failure? failure});
}

/// @nodoc
class _$ExerciseStateCopyWithImpl<$Res, $Val extends ExerciseState>
    implements $ExerciseStateCopyWith<$Res> {
  _$ExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseStateImplCopyWith<$Res>
    implements $ExerciseStateCopyWith<$Res> {
  factory _$$ExerciseStateImplCopyWith(
          _$ExerciseStateImpl value, $Res Function(_$ExerciseStateImpl) then) =
      __$$ExerciseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState state, Failure? failure});
}

/// @nodoc
class __$$ExerciseStateImplCopyWithImpl<$Res>
    extends _$ExerciseStateCopyWithImpl<$Res, _$ExerciseStateImpl>
    implements _$$ExerciseStateImplCopyWith<$Res> {
  __$$ExerciseStateImplCopyWithImpl(
      _$ExerciseStateImpl _value, $Res Function(_$ExerciseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
  }) {
    return _then(_$ExerciseStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ExerciseStateImpl implements _ExerciseState {
  const _$ExerciseStateImpl({this.state = BaseState.initial, this.failure});

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ExerciseState(state: $state, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseStateImplCopyWith<_$ExerciseStateImpl> get copyWith =>
      __$$ExerciseStateImplCopyWithImpl<_$ExerciseStateImpl>(this, _$identity);
}

abstract class _ExerciseState implements ExerciseState {
  const factory _ExerciseState(
      {final BaseState state, final Failure? failure}) = _$ExerciseStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseStateImplCopyWith<_$ExerciseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
