// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_evaluation_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteEvaluationParams _$DeleteEvaluationParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteEvaluationParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteEvaluationParams {
  int get evaluationId => throw _privateConstructorUsedError;

  /// Serializes this DeleteEvaluationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteEvaluationParamsCopyWith<DeleteEvaluationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteEvaluationParamsCopyWith<$Res> {
  factory $DeleteEvaluationParamsCopyWith(DeleteEvaluationParams value,
          $Res Function(DeleteEvaluationParams) then) =
      _$DeleteEvaluationParamsCopyWithImpl<$Res, DeleteEvaluationParams>;
  @useResult
  $Res call({int evaluationId});
}

/// @nodoc
class _$DeleteEvaluationParamsCopyWithImpl<$Res,
        $Val extends DeleteEvaluationParams>
    implements $DeleteEvaluationParamsCopyWith<$Res> {
  _$DeleteEvaluationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteEvaluationParams
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
abstract class _$$DeleteEvaluationParamsImplCopyWith<$Res>
    implements $DeleteEvaluationParamsCopyWith<$Res> {
  factory _$$DeleteEvaluationParamsImplCopyWith(
          _$DeleteEvaluationParamsImpl value,
          $Res Function(_$DeleteEvaluationParamsImpl) then) =
      __$$DeleteEvaluationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int evaluationId});
}

/// @nodoc
class __$$DeleteEvaluationParamsImplCopyWithImpl<$Res>
    extends _$DeleteEvaluationParamsCopyWithImpl<$Res,
        _$DeleteEvaluationParamsImpl>
    implements _$$DeleteEvaluationParamsImplCopyWith<$Res> {
  __$$DeleteEvaluationParamsImplCopyWithImpl(
      _$DeleteEvaluationParamsImpl _value,
      $Res Function(_$DeleteEvaluationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evaluationId = null,
  }) {
    return _then(_$DeleteEvaluationParamsImpl(
      evaluationId: null == evaluationId
          ? _value.evaluationId
          : evaluationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteEvaluationParamsImpl implements _DeleteEvaluationParams {
  const _$DeleteEvaluationParamsImpl({required this.evaluationId});

  factory _$DeleteEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteEvaluationParamsImplFromJson(json);

  @override
  final int evaluationId;

  @override
  String toString() {
    return 'DeleteEvaluationParams(evaluationId: $evaluationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEvaluationParamsImpl &&
            (identical(other.evaluationId, evaluationId) ||
                other.evaluationId == evaluationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, evaluationId);

  /// Create a copy of DeleteEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEvaluationParamsImplCopyWith<_$DeleteEvaluationParamsImpl>
      get copyWith => __$$DeleteEvaluationParamsImplCopyWithImpl<
          _$DeleteEvaluationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteEvaluationParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteEvaluationParams implements DeleteEvaluationParams {
  const factory _DeleteEvaluationParams({required final int evaluationId}) =
      _$DeleteEvaluationParamsImpl;

  factory _DeleteEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$DeleteEvaluationParamsImpl.fromJson;

  @override
  int get evaluationId;

  /// Create a copy of DeleteEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEvaluationParamsImplCopyWith<_$DeleteEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
