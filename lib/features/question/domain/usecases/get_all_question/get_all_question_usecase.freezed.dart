// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_question_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllQuestionParams _$GetAllQuestionParamsFromJson(Map<String, dynamic> json) {
  return _GetAllQuestionParams.fromJson(json);
}

/// @nodoc
mixin _$GetAllQuestionParams {
  int get examId => throw _privateConstructorUsedError;

  /// Serializes this GetAllQuestionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllQuestionParamsCopyWith<GetAllQuestionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllQuestionParamsCopyWith<$Res> {
  factory $GetAllQuestionParamsCopyWith(GetAllQuestionParams value,
          $Res Function(GetAllQuestionParams) then) =
      _$GetAllQuestionParamsCopyWithImpl<$Res, GetAllQuestionParams>;
  @useResult
  $Res call({int examId});
}

/// @nodoc
class _$GetAllQuestionParamsCopyWithImpl<$Res,
        $Val extends GetAllQuestionParams>
    implements $GetAllQuestionParamsCopyWith<$Res> {
  _$GetAllQuestionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllQuestionParams
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
abstract class _$$GetAllQuestionParamsImplCopyWith<$Res>
    implements $GetAllQuestionParamsCopyWith<$Res> {
  factory _$$GetAllQuestionParamsImplCopyWith(_$GetAllQuestionParamsImpl value,
          $Res Function(_$GetAllQuestionParamsImpl) then) =
      __$$GetAllQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int examId});
}

/// @nodoc
class __$$GetAllQuestionParamsImplCopyWithImpl<$Res>
    extends _$GetAllQuestionParamsCopyWithImpl<$Res, _$GetAllQuestionParamsImpl>
    implements _$$GetAllQuestionParamsImplCopyWith<$Res> {
  __$$GetAllQuestionParamsImplCopyWithImpl(_$GetAllQuestionParamsImpl _value,
      $Res Function(_$GetAllQuestionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_$GetAllQuestionParamsImpl(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllQuestionParamsImpl extends _GetAllQuestionParams {
  const _$GetAllQuestionParamsImpl({required this.examId}) : super._();

  factory _$GetAllQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllQuestionParamsImplFromJson(json);

  @override
  final int examId;

  @override
  String toString() {
    return 'GetAllQuestionParams(examId: $examId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllQuestionParamsImpl &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, examId);

  /// Create a copy of GetAllQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllQuestionParamsImplCopyWith<_$GetAllQuestionParamsImpl>
      get copyWith =>
          __$$GetAllQuestionParamsImplCopyWithImpl<_$GetAllQuestionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllQuestionParamsImplToJson(
      this,
    );
  }
}

abstract class _GetAllQuestionParams extends GetAllQuestionParams {
  const factory _GetAllQuestionParams({required final int examId}) =
      _$GetAllQuestionParamsImpl;
  const _GetAllQuestionParams._() : super._();

  factory _GetAllQuestionParams.fromJson(Map<String, dynamic> json) =
      _$GetAllQuestionParamsImpl.fromJson;

  @override
  int get examId;

  /// Create a copy of GetAllQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllQuestionParamsImplCopyWith<_$GetAllQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
