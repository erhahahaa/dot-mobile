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
  $Res call({BaseState state});
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
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
    ) as $Val);
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
  $Res call({BaseState state});
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
  }) {
    return _then(_$ProgramStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
    ));
  }
}

/// @nodoc

class _$ProgramStateImpl implements _ProgramState {
  const _$ProgramStateImpl({this.state = BaseState.initial});

  @override
  @JsonKey()
  final BaseState state;

  @override
  String toString() {
    return 'ProgramState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramStateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramStateImplCopyWith<_$ProgramStateImpl> get copyWith =>
      __$$ProgramStateImplCopyWithImpl<_$ProgramStateImpl>(this, _$identity);
}

abstract class _ProgramState implements ProgramState {
  const factory _ProgramState({final BaseState state}) = _$ProgramStateImpl;

  @override
  BaseState get state;
  @override
  @JsonKey(ignore: true)
  _$$ProgramStateImplCopyWith<_$ProgramStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
