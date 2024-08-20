// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_evaluation_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEvaluationByIdParams _$GetEvaluationByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _GetEvaluationByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetEvaluationByIdParams {
  int get evaluationId => throw _privateConstructorUsedError;

  /// Serializes this GetEvaluationByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEvaluationByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEvaluationByIdParamsCopyWith<GetEvaluationByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEvaluationByIdParamsCopyWith<$Res> {
  factory $GetEvaluationByIdParamsCopyWith(GetEvaluationByIdParams value,
          $Res Function(GetEvaluationByIdParams) then) =
      _$GetEvaluationByIdParamsCopyWithImpl<$Res, GetEvaluationByIdParams>;
  @useResult
  $Res call({int evaluationId});
}

/// @nodoc
class _$GetEvaluationByIdParamsCopyWithImpl<$Res,
        $Val extends GetEvaluationByIdParams>
    implements $GetEvaluationByIdParamsCopyWith<$Res> {
  _$GetEvaluationByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEvaluationByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluationId = null,
  }) {
    return _then(_value.copyWith(
      evaluationId: null == evaluationId
          ? _value.evaluationId
          : evaluationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEvaluationByIdParamsImplCopyWith<$Res>
    implements $GetEvaluationByIdParamsCopyWith<$Res> {
  factory _$$GetEvaluationByIdParamsImplCopyWith(
          _$GetEvaluationByIdParamsImpl value,
          $Res Function(_$GetEvaluationByIdParamsImpl) then) =
      __$$GetEvaluationByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int evaluationId});
}

/// @nodoc
class __$$GetEvaluationByIdParamsImplCopyWithImpl<$Res>
    extends _$GetEvaluationByIdParamsCopyWithImpl<$Res,
        _$GetEvaluationByIdParamsImpl>
    implements _$$GetEvaluationByIdParamsImplCopyWith<$Res> {
  __$$GetEvaluationByIdParamsImplCopyWithImpl(
      _$GetEvaluationByIdParamsImpl _value,
      $Res Function(_$GetEvaluationByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEvaluationByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluationId = null,
  }) {
    return _then(_$GetEvaluationByIdParamsImpl(
      evaluationId: null == evaluationId
          ? _value.evaluationId
          : evaluationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEvaluationByIdParamsImpl implements _GetEvaluationByIdParams {
  const _$GetEvaluationByIdParamsImpl({required this.evaluationId});

  factory _$GetEvaluationByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEvaluationByIdParamsImplFromJson(json);

  @override
  final int evaluationId;

  @override
  String toString() {
    return 'GetEvaluationByIdParams(evaluationId: $evaluationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEvaluationByIdParamsImpl &&
            (identical(other.evaluationId, evaluationId) ||
                other.evaluationId == evaluationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, evaluationId);

  /// Create a copy of GetEvaluationByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEvaluationByIdParamsImplCopyWith<_$GetEvaluationByIdParamsImpl>
      get copyWith => __$$GetEvaluationByIdParamsImplCopyWithImpl<
          _$GetEvaluationByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEvaluationByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetEvaluationByIdParams implements GetEvaluationByIdParams {
  const factory _GetEvaluationByIdParams({required final int evaluationId}) =
      _$GetEvaluationByIdParamsImpl;

  factory _GetEvaluationByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetEvaluationByIdParamsImpl.fromJson;

  @override
  int get evaluationId;

  /// Create a copy of GetEvaluationByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEvaluationByIdParamsImplCopyWith<_$GetEvaluationByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
