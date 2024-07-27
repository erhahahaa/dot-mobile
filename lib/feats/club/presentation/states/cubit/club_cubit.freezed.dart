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
  List<ClubModel> get clubs => throw _privateConstructorUsedError;
  List<ClubModel> get filteredClubs => throw _privateConstructorUsedError;
  List<UserModel> get members => throw _privateConstructorUsedError;
  List<UserModel> get filteredMembers => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  ClubModel? get updatedClub => throw _privateConstructorUsedError;

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
      List<ClubModel> clubs,
      List<ClubModel> filteredClubs,
      List<UserModel> members,
      List<UserModel> filteredMembers,
      File? image,
      ClubModel? updatedClub});

  $UserModelCopyWith<$Res> get user;
  $ClubModelCopyWith<$Res>? get updatedClub;
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
    Object? clubs = null,
    Object? filteredClubs = null,
    Object? members = null,
    Object? filteredMembers = null,
    Object? image = freezed,
    Object? updatedClub = freezed,
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
      clubs: null == clubs
          ? _value.clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      filteredClubs: null == filteredClubs
          ? _value.filteredClubs
          : filteredClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      filteredMembers: null == filteredMembers
          ? _value.filteredMembers
          : filteredMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      updatedClub: freezed == updatedClub
          ? _value.updatedClub
          : updatedClub // ignore: cast_nullable_to_non_nullable
              as ClubModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubModelCopyWith<$Res>? get updatedClub {
    if (_value.updatedClub == null) {
      return null;
    }

    return $ClubModelCopyWith<$Res>(_value.updatedClub!, (value) {
      return _then(_value.copyWith(updatedClub: value) as $Val);
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
      List<ClubModel> clubs,
      List<ClubModel> filteredClubs,
      List<UserModel> members,
      List<UserModel> filteredMembers,
      File? image,
      ClubModel? updatedClub});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $ClubModelCopyWith<$Res>? get updatedClub;
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
    Object? clubs = null,
    Object? filteredClubs = null,
    Object? members = null,
    Object? filteredMembers = null,
    Object? image = freezed,
    Object? updatedClub = freezed,
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
      clubs: null == clubs
          ? _value._clubs
          : clubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      filteredClubs: null == filteredClubs
          ? _value._filteredClubs
          : filteredClubs // ignore: cast_nullable_to_non_nullable
              as List<ClubModel>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      filteredMembers: null == filteredMembers
          ? _value._filteredMembers
          : filteredMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      updatedClub: freezed == updatedClub
          ? _value.updatedClub
          : updatedClub // ignore: cast_nullable_to_non_nullable
              as ClubModel?,
    ));
  }
}

/// @nodoc

class _$ClubStateImpl implements _ClubState {
  _$ClubStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      this.user = const UserModel(),
      final List<ClubModel> clubs = const [],
      final List<ClubModel> filteredClubs = const [],
      final List<UserModel> members = const [],
      final List<UserModel> filteredMembers = const [],
      this.image,
      this.updatedClub})
      : _clubs = clubs,
        _filteredClubs = filteredClubs,
        _members = members,
        _filteredMembers = filteredMembers;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final UserModel user;
  final List<ClubModel> _clubs;
  @override
  @JsonKey()
  List<ClubModel> get clubs {
    if (_clubs is EqualUnmodifiableListView) return _clubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubs);
  }

  final List<ClubModel> _filteredClubs;
  @override
  @JsonKey()
  List<ClubModel> get filteredClubs {
    if (_filteredClubs is EqualUnmodifiableListView) return _filteredClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredClubs);
  }

  final List<UserModel> _members;
  @override
  @JsonKey()
  List<UserModel> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  final List<UserModel> _filteredMembers;
  @override
  @JsonKey()
  List<UserModel> get filteredMembers {
    if (_filteredMembers is EqualUnmodifiableListView) return _filteredMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredMembers);
  }

  @override
  final File? image;
  @override
  final ClubModel? updatedClub;

  @override
  String toString() {
    return 'ClubState(state: $state, failure: $failure, user: $user, clubs: $clubs, filteredClubs: $filteredClubs, members: $members, filteredMembers: $filteredMembers, image: $image, updatedClub: $updatedClub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            const DeepCollectionEquality()
                .equals(other._filteredClubs, _filteredClubs) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._filteredMembers, _filteredMembers) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.updatedClub, updatedClub) ||
                other.updatedClub == updatedClub));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      user,
      const DeepCollectionEquality().hash(_clubs),
      const DeepCollectionEquality().hash(_filteredClubs),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_filteredMembers),
      image,
      updatedClub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      __$$ClubStateImplCopyWithImpl<_$ClubStateImpl>(this, _$identity);
}

abstract class _ClubState implements ClubState {
  factory _ClubState(
      {final BaseState state,
      final Failure? failure,
      final UserModel user,
      final List<ClubModel> clubs,
      final List<ClubModel> filteredClubs,
      final List<UserModel> members,
      final List<UserModel> filteredMembers,
      final File? image,
      final ClubModel? updatedClub}) = _$ClubStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  UserModel get user;
  @override
  List<ClubModel> get clubs;
  @override
  List<ClubModel> get filteredClubs;
  @override
  List<UserModel> get members;
  @override
  List<UserModel> get filteredMembers;
  @override
  File? get image;
  @override
  ClubModel? get updatedClub;
  @override
  @JsonKey(ignore: true)
  _$$ClubStateImplCopyWith<_$ClubStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
