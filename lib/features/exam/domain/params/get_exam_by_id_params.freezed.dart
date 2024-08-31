// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_exam_by_id_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetExamByIdParams _$GetExamByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetExamByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetExamByIdParams {
  int get examId => throw _privateConstructorUsedError;

  /// Serializes this GetExamByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetExamByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetExamByIdParamsCopyWith<GetExamByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExamByIdParamsCopyWith<$Res> {
  factory $GetExamByIdParamsCopyWith(
          GetExamByIdParams value, $Res Function(GetExamByIdParams) then) =
      _$GetExamByIdParamsCopyWithImpl<$Res, GetExamByIdParams>;
  @useResult
  $Res call({int examId});
}

/// @nodoc
class _$GetExamByIdParamsCopyWithImpl<$Res, $Val extends GetExamByIdParams>
    implements $GetExamByIdParamsCopyWith<$Res> {
  _$GetExamByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetExamByIdParams
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
abstract class _$$GetExamByIdParamsImplCopyWith<$Res>
    implements $GetExamByIdParamsCopyWith<$Res> {
  factory _$$GetExamByIdParamsImplCopyWith(_$GetExamByIdParamsImpl value,
          $Res Function(_$GetExamByIdParamsImpl) then) =
      __$$GetExamByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int examId});
}

/// @nodoc
class __$$GetExamByIdParamsImplCopyWithImpl<$Res>
    extends _$GetExamByIdParamsCopyWithImpl<$Res, _$GetExamByIdParamsImpl>
    implements _$$GetExamByIdParamsImplCopyWith<$Res> {
  __$$GetExamByIdParamsImplCopyWithImpl(_$GetExamByIdParamsImpl _value,
      $Res Function(_$GetExamByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetExamByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_$GetExamByIdParamsImpl(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetExamByIdParamsImpl implements _GetExamByIdParams {
  const _$GetExamByIdParamsImpl({required this.examId});

  factory _$GetExamByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetExamByIdParamsImplFromJson(json);

  @override
  final int examId;

  @override
  String toString() {
    return 'GetExamByIdParams(examId: $examId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExamByIdParamsImpl &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, examId);

  /// Create a copy of GetExamByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExamByIdParamsImplCopyWith<_$GetExamByIdParamsImpl> get copyWith =>
      __$$GetExamByIdParamsImplCopyWithImpl<_$GetExamByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetExamByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetExamByIdParams implements GetExamByIdParams {
  const factory _GetExamByIdParams({required final int examId}) =
      _$GetExamByIdParamsImpl;

  factory _GetExamByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetExamByIdParamsImpl.fromJson;

  @override
  int get examId;

  /// Create a copy of GetExamByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExamByIdParamsImplCopyWith<_$GetExamByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
