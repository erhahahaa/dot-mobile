// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClubState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubStateCopyWith<ClubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubStateCopyWith<$Res> {
  factory $ClubStateCopyWith(ClubState value, $Res Function(ClubState) then) =
      _$ClubStateCopyWithImpl<$Res, ClubState>;
  @useResult
  $Res call({BaseState state, Failure? failure});
}

/// @nodoc
class _$ClubStateCopyWithImpl<$Res, $Val extends ClubState>
    implements $ClubStateCopyWith<$Res> {
  _$ClubStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ClubStateImplCopyWith<$Res>
    implements $ClubStateCopyWith<$Res> {
  factory _$$ClubStateImplCopyWith(
          _$ClubStateImpl value, $Res Function(_$ClubStateImpl) then) =
      __$$ClubStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState state, Failure? failure});
}

/// @nodoc
class __$$ClubStateImplCopyWithImpl<$Res>
    extends _$ClubStateCopyWithImpl<$Res, _$ClubStateImpl>
    implements _$$ClubStateImplCopyWith<$Res> {
  __$$ClubStateImplCopyWithImpl(
      _$ClubStateImpl _value, $Res Function(_$ClubStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
  }) {
    return _then(_$ClubStateImpl(
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

class _$ClubStateImpl implements _ClubState {
  const _$ClubStateImpl({this.state = BaseState.initial, this.failure});

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ClubState(state: $state, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      __$$ClubStateImplCopyWithImpl<_$ClubStateImpl>(this, _$identity);
}

abstract class _ClubState implements ClubState {
  const factory _ClubState({final BaseState state, final Failure? failure}) =
      _$ClubStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
