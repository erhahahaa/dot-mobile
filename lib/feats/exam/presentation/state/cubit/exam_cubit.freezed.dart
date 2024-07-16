// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamState {
  BaseState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
  @useResult
  $Res call({BaseState state});
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ExamStateImplCopyWith<$Res>
    implements $ExamStateCopyWith<$Res> {
  factory _$$ExamStateImplCopyWith(
          _$ExamStateImpl value, $Res Function(_$ExamStateImpl) then) =
      __$$ExamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState state});
}

/// @nodoc
class __$$ExamStateImplCopyWithImpl<$Res>
    extends _$ExamStateCopyWithImpl<$Res, _$ExamStateImpl>
    implements _$$ExamStateImplCopyWith<$Res> {
  __$$ExamStateImplCopyWithImpl(
      _$ExamStateImpl _value, $Res Function(_$ExamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$ExamStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
    ));
  }
}

/// @nodoc

class _$ExamStateImpl implements _ExamState {
  const _$ExamStateImpl({this.state = BaseState.initial});

  @override
  @JsonKey()
  final BaseState state;

  @override
  String toString() {
    return 'ExamState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamStateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      __$$ExamStateImplCopyWithImpl<_$ExamStateImpl>(this, _$identity);
}

abstract class _ExamState implements ExamState {
  const factory _ExamState({final BaseState state}) = _$ExamStateImpl;

  @override
  BaseState get state;
  @override
  @JsonKey(ignore: true)
  _$$ExamStateImplCopyWith<_$ExamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
