// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tactical_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllTacticalParams _$GetAllTacticalParamsFromJson(Map<String, dynamic> json) {
  return _GetAllTacticalParams.fromJson(json);
}

/// @nodoc
mixin _$GetAllTacticalParams {
  int get clubId => throw _privateConstructorUsedError;

  /// Serializes this GetAllTacticalParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllTacticalParamsCopyWith<GetAllTacticalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTacticalParamsCopyWith<$Res> {
  factory $GetAllTacticalParamsCopyWith(GetAllTacticalParams value,
          $Res Function(GetAllTacticalParams) then) =
      _$GetAllTacticalParamsCopyWithImpl<$Res, GetAllTacticalParams>;
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class _$GetAllTacticalParamsCopyWithImpl<$Res,
        $Val extends GetAllTacticalParams>
    implements $GetAllTacticalParamsCopyWith<$Res> {
  _$GetAllTacticalParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllTacticalParams
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
abstract class _$$GetAllTacticalParamsImplCopyWith<$Res>
    implements $GetAllTacticalParamsCopyWith<$Res> {
  factory _$$GetAllTacticalParamsImplCopyWith(_$GetAllTacticalParamsImpl value,
          $Res Function(_$GetAllTacticalParamsImpl) then) =
      __$$GetAllTacticalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int clubId});
}

/// @nodoc
class __$$GetAllTacticalParamsImplCopyWithImpl<$Res>
    extends _$GetAllTacticalParamsCopyWithImpl<$Res, _$GetAllTacticalParamsImpl>
    implements _$$GetAllTacticalParamsImplCopyWith<$Res> {
  __$$GetAllTacticalParamsImplCopyWithImpl(_$GetAllTacticalParamsImpl _value,
      $Res Function(_$GetAllTacticalParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
  }) {
    return _then(_$GetAllTacticalParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllTacticalParamsImpl implements _GetAllTacticalParams {
  const _$GetAllTacticalParamsImpl({required this.clubId});

  factory _$GetAllTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllTacticalParamsImplFromJson(json);

  @override
  final int clubId;

  @override
  String toString() {
    return 'GetAllTacticalParams(clubId: $clubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTacticalParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clubId);

  /// Create a copy of GetAllTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTacticalParamsImplCopyWith<_$GetAllTacticalParamsImpl>
      get copyWith =>
          __$$GetAllTacticalParamsImplCopyWithImpl<_$GetAllTacticalParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllTacticalParamsImplToJson(
      this,
    );
  }
}

abstract class _GetAllTacticalParams implements GetAllTacticalParams {
  const factory _GetAllTacticalParams({required final int clubId}) =
      _$GetAllTacticalParamsImpl;

  factory _GetAllTacticalParams.fromJson(Map<String, dynamic> json) =
      _$GetAllTacticalParamsImpl.fromJson;

  @override
  int get clubId;

  /// Create a copy of GetAllTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllTacticalParamsImplCopyWith<_$GetAllTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
