// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_club_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveClubParams _$LeaveClubParamsFromJson(Map<String, dynamic> json) {
  return _LeaveClubParams.fromJson(json);
}

/// @nodoc
mixin _$LeaveClubParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this LeaveClubParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveClubParamsCopyWith<LeaveClubParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveClubParamsCopyWith<$Res> {
  factory $LeaveClubParamsCopyWith(
          LeaveClubParams value, $Res Function(LeaveClubParams) then) =
      _$LeaveClubParamsCopyWithImpl<$Res, LeaveClubParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$LeaveClubParamsCopyWithImpl<$Res, $Val extends LeaveClubParams>
    implements $LeaveClubParamsCopyWith<$Res> {
  _$LeaveClubParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveClubParams
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
abstract class _$$LeaveClubParamsImplCopyWith<$Res>
    implements $LeaveClubParamsCopyWith<$Res> {
  factory _$$LeaveClubParamsImplCopyWith(_$LeaveClubParamsImpl value,
          $Res Function(_$LeaveClubParamsImpl) then) =
      __$$LeaveClubParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$LeaveClubParamsImplCopyWithImpl<$Res>
    extends _$LeaveClubParamsCopyWithImpl<$Res, _$LeaveClubParamsImpl>
    implements _$$LeaveClubParamsImplCopyWith<$Res> {
  __$$LeaveClubParamsImplCopyWithImpl(
      _$LeaveClubParamsImpl _value, $Res Function(_$LeaveClubParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveClubParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$LeaveClubParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveClubParamsImpl implements _LeaveClubParams {
  const _$LeaveClubParamsImpl({required this.clubId});

  factory _$LeaveClubParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveClubParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'LeaveClubParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveClubParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of LeaveClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveClubParamsImplCopyWith<_$LeaveClubParamsImpl> get copyWith =>
      __$$LeaveClubParamsImplCopyWithImpl<_$LeaveClubParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveClubParamsImplToJson(
      this,
    );
  }
}

abstract class _LeaveClubParams implements LeaveClubParams {
  const factory _LeaveClubParams({required final int clubId}) =
      _$LeaveClubParamsImpl;

  factory _LeaveClubParams.fromJson(Map<String, dynamic> json) =
      _$LeaveClubParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of LeaveClubParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveClubParamsImplCopyWith<_$LeaveClubParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
