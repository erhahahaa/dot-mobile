// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_exam_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteExamParams _$DeleteExamParamsFromJson(Map<String, dynamic> json) {
  return _DeleteExamParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteExamParams {
  int get examId => throw _privateConstructorUsedError;

  /// Serializes this DeleteExamParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteExamParamsCopyWith<DeleteExamParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteExamParamsCopyWith<$Res> {
  factory $DeleteExamParamsCopyWith(
          DeleteExamParams value, $Res Function(DeleteExamParams) then) =
      _$DeleteExamParamsCopyWithImpl<$Res, DeleteExamParams>;
  @useResult
  $Res call({int examId});
}

/// @nodoc
class _$DeleteExamParamsCopyWithImpl<$Res, $Val extends DeleteExamParams>
    implements $DeleteExamParamsCopyWith<$Res> {
  _$DeleteExamParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteExamParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_value.copyWith(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteExamParamsImplCopyWith<$Res>
    implements $DeleteExamParamsCopyWith<$Res> {
  factory _$$DeleteExamParamsImplCopyWith(_$DeleteExamParamsImpl value,
          $Res Function(_$DeleteExamParamsImpl) then) =
      __$$DeleteExamParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int examId});
}

/// @nodoc
class __$$DeleteExamParamsImplCopyWithImpl<$Res>
    extends _$DeleteExamParamsCopyWithImpl<$Res, _$DeleteExamParamsImpl>
    implements _$$DeleteExamParamsImplCopyWith<$Res> {
  __$$DeleteExamParamsImplCopyWithImpl(_$DeleteExamParamsImpl _value,
      $Res Function(_$DeleteExamParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteExamParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_$DeleteExamParamsImpl(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteExamParamsImpl implements _DeleteExamParams {
  const _$DeleteExamParamsImpl({required this.examId});

  factory _$DeleteExamParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteExamParamsImplFromJson(json);

  @override
  final int examId;

  @override
  String toString() {
    return 'DeleteExamParams(examId: $examId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExamParamsImpl &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, examId);

  /// Create a copy of DeleteExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExamParamsImplCopyWith<_$DeleteExamParamsImpl> get copyWith =>
      __$$DeleteExamParamsImplCopyWithImpl<_$DeleteExamParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteExamParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteExamParams implements DeleteExamParams {
  const factory _DeleteExamParams({required final int examId}) =
      _$DeleteExamParamsImpl;

  factory _DeleteExamParams.fromJson(Map<String, dynamic> json) =
      _$DeleteExamParamsImpl.fromJson;

  @override
  int get examId;

  /// Create a copy of DeleteExamParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteExamParamsImplCopyWith<_$DeleteExamParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
