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
  UserModel get user => throw _privateConstructorUsedError;
  List<ClubModel> get coachClubs => throw _privateConstructorUsedError;
  List<ClubModel> get athleteClubs => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubStateCopyWith<ClubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubStateCopyWith<$Res> {
  factory $ClubStateCopyWith(ClubState value, $Res Function(ClubState) then) =
      _$ClubStateCopyWithImpl<$Res, ClubState>;
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      UserModel user,
      List<ClubModel> coachClubs,
      List<ClubModel> athleteClubs,
      File? image});

  $UserModelCopyWith<$Res> get user;
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
    Object? user = null,
    Object? coachClubs = null,
    Object? athleteClubs = null,
    Object? image = freezed,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      coachClubs: null == coachClubs
          ? _value.coachClubs
          : coachClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      athleteClubs: null == athleteClubs
          ? _value.athleteClubs
          : athleteClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
  $Res call(
      {BaseState state,
      Failure? failure,
      UserModel user,
      List<ClubModel> coachClubs,
      List<ClubModel> athleteClubs,
      File? image});

  @override
  $UserModelCopyWith<$Res> get user;
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
    Object? user = null,
    Object? coachClubs = null,
    Object? athleteClubs = null,
    Object? image = freezed,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      coachClubs: null == coachClubs
          ? _value._coachClubs
          : coachClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      athleteClubs: null == athleteClubs
          ? _value._athleteClubs
          : athleteClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ClubStateImpl implements _ClubState {
  const _$ClubStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      this.user = const UserModel(),
      final List<ClubModel> coachClubs = const [],
      final List<ClubModel> athleteClubs = const [],
      this.image})
      : _coachClubs = coachClubs,
        _athleteClubs = athleteClubs;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final UserModel user;
  final List<ClubModel> _coachClubs;
  @override
  @JsonKey()
  List<ClubModel> get coachClubs {
    if (_coachClubs is EqualUnmodifiableListView) return _coachClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coachClubs);
  }

  final List<ClubModel> _athleteClubs;
  @override
  @JsonKey()
  List<ClubModel> get athleteClubs {
    if (_athleteClubs is EqualUnmodifiableListView) return _athleteClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_athleteClubs);
  }

  @override
  final File? image;

  @override
  String toString() {
    return 'ClubState(state: $state, failure: $failure, user: $user, coachClubs: $coachClubs, athleteClubs: $athleteClubs, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._coachClubs, _coachClubs) &&
            const DeepCollectionEquality()
                .equals(other._athleteClubs, _athleteClubs) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      user,
      const DeepCollectionEquality().hash(_coachClubs),
      const DeepCollectionEquality().hash(_athleteClubs),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      __$$ClubStateImplCopyWithImpl<_$ClubStateImpl>(this, _$identity);
}

abstract class _ClubState implements ClubState {
  const factory _ClubState(
      {final BaseState state,
      final Failure? failure,
      final UserModel user,
      final List<ClubModel> coachClubs,
      final List<ClubModel> athleteClubs,
      final File? image}) = _$ClubStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  UserModel get user;
  @override
  List<ClubModel> get coachClubs;
  @override
  List<ClubModel> get athleteClubs;
  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
