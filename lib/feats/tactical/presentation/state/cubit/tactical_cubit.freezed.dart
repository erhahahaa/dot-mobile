// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TacticalState {
  BaseState get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TacticalStateCopyWith<TacticalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalStateCopyWith<$Res> {
  factory $TacticalStateCopyWith(
          TacticalState value, $Res Function(TacticalState) then) =
      _$TacticalStateCopyWithImpl<$Res, TacticalState>;
  @useResult
  $Res call({BaseState state});
}

/// @nodoc
class _$TacticalStateCopyWithImpl<$Res, $Val extends TacticalState>
    implements $TacticalStateCopyWith<$Res> {
  _$TacticalStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TacticalStateImplCopyWith<$Res>
    implements $TacticalStateCopyWith<$Res> {
  factory _$$TacticalStateImplCopyWith(
          _$TacticalStateImpl value, $Res Function(_$TacticalStateImpl) then) =
      __$$TacticalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState state});
}

/// @nodoc
class __$$TacticalStateImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateImpl>
    implements _$$TacticalStateImplCopyWith<$Res> {
  __$$TacticalStateImplCopyWithImpl(
      _$TacticalStateImpl _value, $Res Function(_$TacticalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$TacticalStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
    ));
  }
}

/// @nodoc

class _$TacticalStateImpl implements _TacticalState {
  const _$TacticalStateImpl({this.state = BaseState.initial});

  @override
  @JsonKey()
  final BaseState state;

  @override
  String toString() {
    return 'TacticalState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateImplCopyWith<_$TacticalStateImpl> get copyWith =>
      __$$TacticalStateImplCopyWithImpl<_$TacticalStateImpl>(this, _$identity);
}

abstract class _TacticalState implements TacticalState {
  const factory _TacticalState({final BaseState state}) = _$TacticalStateImpl;

  @override
  BaseState get state;
  @override
  @JsonKey(ignore: true)
  _$$TacticalStateImplCopyWith<_$TacticalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
