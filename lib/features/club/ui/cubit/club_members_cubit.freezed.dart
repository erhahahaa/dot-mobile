// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_members_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClubMembersState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel? get selectedUser => throw _privateConstructorUsedError;
  List<UserModel> get members => throw _privateConstructorUsedError;
  List<UserModel> get filteredMembers => throw _privateConstructorUsedError;
  List<UserModel> get searchResult => throw _privateConstructorUsedError;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClubMembersStateCopyWith<ClubMembersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubMembersStateCopyWith<$Res> {
  factory $ClubMembersStateCopyWith(
          ClubMembersState value, $Res Function(ClubMembersState) then) =
      _$ClubMembersStateCopyWithImpl<$Res, ClubMembersState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserModel? selectedUser,
      List<UserModel> members,
      List<UserModel> filteredMembers,
      List<UserModel> searchResult});

  $UserModelCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class _$ClubMembersStateCopyWithImpl<$Res, $Val extends ClubMembersState>
    implements $ClubMembersStateCopyWith<$Res> {
  _$ClubMembersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedUser = freezed,
    Object? members = null,
    Object? filteredMembers = null,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedUser: freezed == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      filteredMembers: null == filteredMembers
          ? _value.filteredMembers
          : filteredMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ) as $Val);
  }

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get selectedUser {
    if (_value.selectedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.selectedUser!, (value) {
      return _then(_value.copyWith(selectedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClubMembersStateImplCopyWith<$Res>
    implements $ClubMembersStateCopyWith<$Res> {
  factory _$$ClubMembersStateImplCopyWith(_$ClubMembersStateImpl value,
          $Res Function(_$ClubMembersStateImpl) then) =
      __$$ClubMembersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserModel? selectedUser,
      List<UserModel> members,
      List<UserModel> filteredMembers,
      List<UserModel> searchResult});

  @override
  $UserModelCopyWith<$Res>? get selectedUser;
}

/// @nodoc
class __$$ClubMembersStateImplCopyWithImpl<$Res>
    extends _$ClubMembersStateCopyWithImpl<$Res, _$ClubMembersStateImpl>
    implements _$$ClubMembersStateImplCopyWith<$Res> {
  __$$ClubMembersStateImplCopyWithImpl(_$ClubMembersStateImpl _value,
      $Res Function(_$ClubMembersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectedUser = freezed,
    Object? members = null,
    Object? filteredMembers = null,
    Object? searchResult = null,
  }) {
    return _then(_$ClubMembersStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedUser: freezed == selectedUser
          ? _value.selectedUser
          : selectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      filteredMembers: null == filteredMembers
          ? _value._filteredMembers
          : filteredMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$ClubMembersStateImpl implements _ClubMembersState {
  const _$ClubMembersStateImpl(
      {this.isLoading = false,
      this.selectedUser,
      final List<UserModel> members = const [],
      final List<UserModel> filteredMembers = const [],
      final List<UserModel> searchResult = const []})
      : _members = members,
        _filteredMembers = filteredMembers,
        _searchResult = searchResult;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final UserModel? selectedUser;
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

  final List<UserModel> _searchResult;
  @override
  @JsonKey()
  List<UserModel> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'ClubMembersState(isLoading: $isLoading, selectedUser: $selectedUser, members: $members, filteredMembers: $filteredMembers, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubMembersStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedUser, selectedUser) ||
                other.selectedUser == selectedUser) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other._filteredMembers, _filteredMembers) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      selectedUser,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_filteredMembers),
      const DeepCollectionEquality().hash(_searchResult));

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubMembersStateImplCopyWith<_$ClubMembersStateImpl> get copyWith =>
      __$$ClubMembersStateImplCopyWithImpl<_$ClubMembersStateImpl>(
          this, _$identity);
}

abstract class _ClubMembersState implements ClubMembersState {
  const factory _ClubMembersState(
      {final bool isLoading,
      final UserModel? selectedUser,
      final List<UserModel> members,
      final List<UserModel> filteredMembers,
      final List<UserModel> searchResult}) = _$ClubMembersStateImpl;

  @override
  bool get isLoading;
  @override
  UserModel? get selectedUser;
  @override
  List<UserModel> get members;
  @override
  List<UserModel> get filteredMembers;
  @override
  List<UserModel> get searchResult;

  /// Create a copy of ClubMembersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClubMembersStateImplCopyWith<_$ClubMembersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
