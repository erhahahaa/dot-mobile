// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_club_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetClubByIdParams _$GetClubByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetClubByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetClubByIdParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this GetClubByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetClubByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClubByIdParamsCopyWith<GetClubByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClubByIdParamsCopyWith<$Res> {
  factory $GetClubByIdParamsCopyWith(
          GetClubByIdParams value, $Res Function(GetClubByIdParams) then) =
      _$GetClubByIdParamsCopyWithImpl<$Res, GetClubByIdParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$GetClubByIdParamsCopyWithImpl<$Res, $Val extends GetClubByIdParams>
    implements $GetClubByIdParamsCopyWith<$Res> {
  _$GetClubByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClubByIdParams
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
abstract class _$$GetClubByIdParamsImplCopyWith<$Res>
    implements $GetClubByIdParamsCopyWith<$Res> {
  factory _$$GetClubByIdParamsImplCopyWith(_$GetClubByIdParamsImpl value,
          $Res Function(_$GetClubByIdParamsImpl) then) =
      __$$GetClubByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$GetClubByIdParamsImplCopyWithImpl<$Res>
    extends _$GetClubByIdParamsCopyWithImpl<$Res, _$GetClubByIdParamsImpl>
    implements _$$GetClubByIdParamsImplCopyWith<$Res> {
  __$$GetClubByIdParamsImplCopyWithImpl(_$GetClubByIdParamsImpl _value,
      $Res Function(_$GetClubByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetClubByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$GetClubByIdParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetClubByIdParamsImpl implements _GetClubByIdParams {
  const _$GetClubByIdParamsImpl({required this.clubId});

  factory _$GetClubByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetClubByIdParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'GetClubByIdParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClubByIdParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of GetClubByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClubByIdParamsImplCopyWith<_$GetClubByIdParamsImpl> get copyWith =>
      __$$GetClubByIdParamsImplCopyWithImpl<_$GetClubByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetClubByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetClubByIdParams implements GetClubByIdParams {
  const factory _GetClubByIdParams({required final int clubId}) =
      _$GetClubByIdParamsImpl;

  factory _GetClubByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetClubByIdParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of GetClubByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClubByIdParamsImplCopyWith<_$GetClubByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
