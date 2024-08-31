// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_club_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteClubParams _$DeleteClubParamsFromJson(Map<String, dynamic> json) {
  return _DeleteClubParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteClubParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this DeleteClubParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteClubParamsCopyWith<DeleteClubParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteClubParamsCopyWith<$Res> {
  factory $DeleteClubParamsCopyWith(
          DeleteClubParams value, $Res Function(DeleteClubParams) then) =
      _$DeleteClubParamsCopyWithImpl<$Res, DeleteClubParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$DeleteClubParamsCopyWithImpl<$Res, $Val extends DeleteClubParams>
    implements $DeleteClubParamsCopyWith<$Res> {
  _$DeleteClubParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteClubParams
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
abstract class _$$DeleteClubParamsImplCopyWith<$Res>
    implements $DeleteClubParamsCopyWith<$Res> {
  factory _$$DeleteClubParamsImplCopyWith(_$DeleteClubParamsImpl value,
          $Res Function(_$DeleteClubParamsImpl) then) =
      __$$DeleteClubParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$DeleteClubParamsImplCopyWithImpl<$Res>
    extends _$DeleteClubParamsCopyWithImpl<$Res, _$DeleteClubParamsImpl>
    implements _$$DeleteClubParamsImplCopyWith<$Res> {
  __$$DeleteClubParamsImplCopyWithImpl(_$DeleteClubParamsImpl _value,
      $Res Function(_$DeleteClubParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteClubParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$DeleteClubParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteClubParamsImpl implements _DeleteClubParams {
  const _$DeleteClubParamsImpl({required this.clubId});

  factory _$DeleteClubParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteClubParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'DeleteClubParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteClubParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of DeleteClubParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteClubParamsImplCopyWith<_$DeleteClubParamsImpl> get copyWith =>
      __$$DeleteClubParamsImplCopyWithImpl<_$DeleteClubParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteClubParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteClubParams implements DeleteClubParams {
  const factory _DeleteClubParams({required final int clubId}) =
      _$DeleteClubParamsImpl;

  factory _DeleteClubParams.fromJson(Map<String, dynamic> json) =
      _$DeleteClubParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of DeleteClubParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteClubParamsImplCopyWith<_$DeleteClubParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
