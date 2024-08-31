// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kick_club_member_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KickClubMemberParams _$KickClubMemberParamsFromJson(Map<String, dynamic> json) {
  return _KickClubMemberParams.fromJson(json);
}

/// @nodoc
mixin _$KickClubMemberParams {
  int get clubId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this KickClubMemberParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KickClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KickClubMemberParamsCopyWith<KickClubMemberParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KickClubMemberParamsCopyWith<$Res> {
  factory $KickClubMemberParamsCopyWith(KickClubMemberParams value,
          $Res Function(KickClubMemberParams) then) =
      _$KickClubMemberParamsCopyWithImpl<$Res, KickClubMemberParams>;
  @useResult
  $Res call({int clubId, int userId});
}

/// @nodoc
class _$KickClubMemberParamsCopyWithImpl<$Res,
        $Val extends KickClubMemberParams>
    implements $KickClubMemberParamsCopyWith<$Res> {
  _$KickClubMemberParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KickClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? userId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KickClubMemberParamsImplCopyWith<$Res>
    implements $KickClubMemberParamsCopyWith<$Res> {
  factory _$$KickClubMemberParamsImplCopyWith(_$KickClubMemberParamsImpl value,
          $Res Function(_$KickClubMemberParamsImpl) then) =
      __$$KickClubMemberParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId, int userId});
}

/// @nodoc
class __$$KickClubMemberParamsImplCopyWithImpl<$Res>
    extends _$KickClubMemberParamsCopyWithImpl<$Res, _$KickClubMemberParamsImpl>
    implements _$$KickClubMemberParamsImplCopyWith<$Res> {
  __$$KickClubMemberParamsImplCopyWithImpl(_$KickClubMemberParamsImpl _value,
      $Res Function(_$KickClubMemberParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of KickClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? userId = null,
  }) {
    return _then(_$KickClubMemberParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KickClubMemberParamsImpl implements _KickClubMemberParams {
  const _$KickClubMemberParamsImpl(
      {required this.clubId, required this.userId});

  factory _$KickClubMemberParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$KickClubMemberParamsImplFromJson(json);

  @override
  final int clubId;
  @override
  final int userId;

  @override
  String toString() {
    return 'KickClubMemberParams(clubId: $clubId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KickClubMemberParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, userId);

  /// Create a copy of KickClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KickClubMemberParamsImplCopyWith<_$KickClubMemberParamsImpl>
      get copyWith =>
          __$$KickClubMemberParamsImplCopyWithImpl<_$KickClubMemberParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KickClubMemberParamsImplToJson(
      this,
    );
  }
}

abstract class _KickClubMemberParams implements KickClubMemberParams {
  const factory _KickClubMemberParams(
      {required final int clubId,
      required final int userId}) = _$KickClubMemberParamsImpl;

  factory _KickClubMemberParams.fromJson(Map<String, dynamic> json) =
      _$KickClubMemberParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  int get userId;

  /// Create a copy of KickClubMemberParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KickClubMemberParamsImplCopyWith<_$KickClubMemberParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
