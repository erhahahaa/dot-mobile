// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_club_members_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetClubMembersParams _$GetClubMembersParamsFromJson(Map<String, dynamic> json) {
  return _GetClubMembersParams.fromJson(json);
}

/// @nodoc
mixin _$GetClubMembersParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this GetClubMembersParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClubMembersParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClubMembersParamsCopyWith<GetClubMembersParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClubMembersParamsCopyWith<$Res> {
  factory $GetClubMembersParamsCopyWith(GetClubMembersParams value,
          $Res Function(GetClubMembersParams) then) =
      _$GetClubMembersParamsCopyWithImpl<$Res, GetClubMembersParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$GetClubMembersParamsCopyWithImpl<$Res,
        $Val extends GetClubMembersParams>
    implements $GetClubMembersParamsCopyWith<$Res> {
  _$GetClubMembersParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClubMembersParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetClubMembersParamsImplCopyWith<$Res>
    implements $GetClubMembersParamsCopyWith<$Res> {
  factory _$$GetClubMembersParamsImplCopyWith(_$GetClubMembersParamsImpl value,
          $Res Function(_$GetClubMembersParamsImpl) then) =
      __$$GetClubMembersParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$GetClubMembersParamsImplCopyWithImpl<$Res>
    extends _$GetClubMembersParamsCopyWithImpl<$Res, _$GetClubMembersParamsImpl>
    implements _$$GetClubMembersParamsImplCopyWith<$Res> {
  __$$GetClubMembersParamsImplCopyWithImpl(_$GetClubMembersParamsImpl _value,
      $Res Function(_$GetClubMembersParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClubMembersParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$GetClubMembersParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClubMembersParamsImpl implements _GetClubMembersParams {
  const _$GetClubMembersParamsImpl({required this.clubId});

  factory _$GetClubMembersParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClubMembersParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'GetClubMembersParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClubMembersParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of GetClubMembersParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClubMembersParamsImplCopyWith<_$GetClubMembersParamsImpl>
      get copyWith =>
          __$$GetClubMembersParamsImplCopyWithImpl<_$GetClubMembersParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClubMembersParamsImplToJson(
      this,
    );
  }
}

abstract class _GetClubMembersParams implements GetClubMembersParams {
  const factory _GetClubMembersParams({required final int clubId}) =
      _$GetClubMembersParamsImpl;

  factory _GetClubMembersParams.fromJson(Map<String, dynamic> json) =
      _$GetClubMembersParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of GetClubMembersParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClubMembersParamsImplCopyWith<_$GetClubMembersParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
