// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_tactical_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteTacticalParams _$DeleteTacticalParamsFromJson(Map<String, dynamic> json) {
  return _DeleteTacticalParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteTacticalParams {
  int get tacticalId => throw _privateConstructorUsedError;

  /// Serializes this DeleteTacticalParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteTacticalParamsCopyWith<DeleteTacticalParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteTacticalParamsCopyWith<$Res> {
  factory $DeleteTacticalParamsCopyWith(DeleteTacticalParams value,
          $Res Function(DeleteTacticalParams) then) =
      _$DeleteTacticalParamsCopyWithImpl<$Res, DeleteTacticalParams>;
  @useResult
  $Res call({int tacticalId});
}

/// @nodoc
class _$DeleteTacticalParamsCopyWithImpl<$Res,
        $Val extends DeleteTacticalParams>
    implements $DeleteTacticalParamsCopyWith<$Res> {
  _$DeleteTacticalParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteTacticalParams
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
abstract class _$$DeleteTacticalParamsImplCopyWith<$Res>
    implements $DeleteTacticalParamsCopyWith<$Res> {
  factory _$$DeleteTacticalParamsImplCopyWith(_$DeleteTacticalParamsImpl value,
          $Res Function(_$DeleteTacticalParamsImpl) then) =
      __$$DeleteTacticalParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tacticalId});
}

/// @nodoc
class __$$DeleteTacticalParamsImplCopyWithImpl<$Res>
    extends _$DeleteTacticalParamsCopyWithImpl<$Res, _$DeleteTacticalParamsImpl>
    implements _$$DeleteTacticalParamsImplCopyWith<$Res> {
  __$$DeleteTacticalParamsImplCopyWithImpl(_$DeleteTacticalParamsImpl _value,
      $Res Function(_$DeleteTacticalParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tacticalId = null,
  }) {
    return _then(_$DeleteTacticalParamsImpl(
      tacticalId: null == tacticalId
          ? _value.tacticalId
          : tacticalId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteTacticalParamsImpl implements _DeleteTacticalParams {
  const _$DeleteTacticalParamsImpl({required this.tacticalId});

  factory _$DeleteTacticalParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteTacticalParamsImplFromJson(json);

  @override
  final int tacticalId;

  @override
  String toString() {
    return 'DeleteTacticalParams(tacticalId: $tacticalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTacticalParamsImpl &&
            (identical(other.tacticalId, tacticalId) ||
                other.tacticalId == tacticalId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tacticalId);

  /// Create a copy of DeleteTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTacticalParamsImplCopyWith<_$DeleteTacticalParamsImpl>
      get copyWith =>
          __$$DeleteTacticalParamsImplCopyWithImpl<_$DeleteTacticalParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteTacticalParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteTacticalParams implements DeleteTacticalParams {
  const factory _DeleteTacticalParams({required final int tacticalId}) =
      _$DeleteTacticalParamsImpl;

  factory _DeleteTacticalParams.fromJson(Map<String, dynamic> json) =
      _$DeleteTacticalParamsImpl.fromJson;

  @override
  int get tacticalId;

  /// Create a copy of DeleteTacticalParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTacticalParamsImplCopyWith<_$DeleteTacticalParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
