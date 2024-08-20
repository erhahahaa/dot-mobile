// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tactical_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTacticalByIdParams _$GetTacticalByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _GetTacticalByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetTacticalByIdParams {
  int get tacticalId => throw _privateConstructorUsedError;

  /// Serializes this GetTacticalByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTacticalByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTacticalByIdParamsCopyWith<GetTacticalByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTacticalByIdParamsCopyWith<$Res> {
  factory $GetTacticalByIdParamsCopyWith(GetTacticalByIdParams value,
          $Res Function(GetTacticalByIdParams) then) =
      _$GetTacticalByIdParamsCopyWithImpl<$Res, GetTacticalByIdParams>;
  @useResult
  $Res call({int tacticalId});
}

/// @nodoc
class _$GetTacticalByIdParamsCopyWithImpl<$Res,
        $Val extends GetTacticalByIdParams>
    implements $GetTacticalByIdParamsCopyWith<$Res> {
  _$GetTacticalByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTacticalByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticalId = null,
  }) {
    return _then(_value.copyWith(
      tacticalId: null == tacticalId
          ? _value.tacticalId
          : tacticalId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTacticalByIdParamsImplCopyWith<$Res>
    implements $GetTacticalByIdParamsCopyWith<$Res> {
  factory _$$GetTacticalByIdParamsImplCopyWith(
          _$GetTacticalByIdParamsImpl value,
          $Res Function(_$GetTacticalByIdParamsImpl) then) =
      __$$GetTacticalByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tacticalId});
}

/// @nodoc
class __$$GetTacticalByIdParamsImplCopyWithImpl<$Res>
    extends _$GetTacticalByIdParamsCopyWithImpl<$Res,
        _$GetTacticalByIdParamsImpl>
    implements _$$GetTacticalByIdParamsImplCopyWith<$Res> {
  __$$GetTacticalByIdParamsImplCopyWithImpl(_$GetTacticalByIdParamsImpl _value,
      $Res Function(_$GetTacticalByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTacticalByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticalId = null,
  }) {
    return _then(_$GetTacticalByIdParamsImpl(
      tacticalId: null == tacticalId
          ? _value.tacticalId
          : tacticalId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTacticalByIdParamsImpl implements _GetTacticalByIdParams {
  const _$GetTacticalByIdParamsImpl({required this.tacticalId});

  factory _$GetTacticalByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTacticalByIdParamsImplFromJson(json);

  @override
  final int tacticalId;

  @override
  String toString() {
    return 'GetTacticalByIdParams(tacticalId: $tacticalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTacticalByIdParamsImpl &&
            (identical(other.tacticalId, tacticalId) ||
                other.tacticalId == tacticalId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tacticalId);

  /// Create a copy of GetTacticalByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTacticalByIdParamsImplCopyWith<_$GetTacticalByIdParamsImpl>
      get copyWith => __$$GetTacticalByIdParamsImplCopyWithImpl<
          _$GetTacticalByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTacticalByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTacticalByIdParams implements GetTacticalByIdParams {
  const factory _GetTacticalByIdParams({required final int tacticalId}) =
      _$GetTacticalByIdParamsImpl;

  factory _GetTacticalByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetTacticalByIdParamsImpl.fromJson;

  @override
  int get tacticalId;

  /// Create a copy of GetTacticalByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTacticalByIdParamsImplCopyWith<_$GetTacticalByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
