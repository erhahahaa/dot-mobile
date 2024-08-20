// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_club_member_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddClubMemberParams _$AddClubMemberParamsFromJson(Map<String, dynamic> json) {
  return _AddClubMemberParams.fromJson(json);
}

/// @nodoc
mixin _$AddClubMemberParams {
  int get clubId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;

  /// Serializes this AddClubMemberParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddClubMemberParamsCopyWith<AddClubMemberParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddClubMemberParamsCopyWith<$Res> {
  factory $AddClubMemberParamsCopyWith(
          AddClubMemberParams value, $Res Function(AddClubMemberParams) then) =
      _$AddClubMemberParamsCopyWithImpl<$Res, AddClubMemberParams>;
  @useResult
  $Res call({int clubId, int userId, UserRole role});
}

/// @nodoc
class _$AddClubMemberParamsCopyWithImpl<$Res, $Val extends AddClubMemberParams>
    implements $AddClubMemberParamsCopyWith<$Res> {
  _$AddClubMemberParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddClubMemberParamsImplCopyWith<$Res>
    implements $AddClubMemberParamsCopyWith<$Res> {
  factory _$$AddClubMemberParamsImplCopyWith(_$AddClubMemberParamsImpl value,
          $Res Function(_$AddClubMemberParamsImpl) then) =
      __$$AddClubMemberParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, int userId, UserRole role});
}

/// @nodoc
class __$$AddClubMemberParamsImplCopyWithImpl<$Res>
    extends _$AddClubMemberParamsCopyWithImpl<$Res, _$AddClubMemberParamsImpl>
    implements _$$AddClubMemberParamsImplCopyWith<$Res> {
  __$$AddClubMemberParamsImplCopyWithImpl(_$AddClubMemberParamsImpl _value,
      $Res Function(_$AddClubMemberParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(_$AddClubMemberParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddClubMemberParamsImpl implements _AddClubMemberParams {
  const _$AddClubMemberParamsImpl(
      {required this.clubId, required this.userId, required this.role});

  factory _$AddClubMemberParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddClubMemberParamsImplFromJson(json);

  @override
  final int clubId;
  @override
  final int userId;
  @override
  final UserRole role;

  @override
  String toString() {
    return 'AddClubMemberParams(clubId: $clubId, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddClubMemberParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, userId, role);

  /// Create a copy of AddClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddClubMemberParamsImplCopyWith<_$AddClubMemberParamsImpl> get copyWith =>
      __$$AddClubMemberParamsImplCopyWithImpl<_$AddClubMemberParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddClubMemberParamsImplToJson(
      this,
    );
  }
}

abstract class _AddClubMemberParams implements AddClubMemberParams {
  const factory _AddClubMemberParams(
      {required final int clubId,
      required final int userId,
      required final UserRole role}) = _$AddClubMemberParamsImpl;

  factory _AddClubMemberParams.fromJson(Map<String, dynamic> json) =
      _$AddClubMemberParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  int get userId;
  @override
  UserRole get role;

  /// Create a copy of AddClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddClubMemberParamsImplCopyWith<_$AddClubMemberParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
