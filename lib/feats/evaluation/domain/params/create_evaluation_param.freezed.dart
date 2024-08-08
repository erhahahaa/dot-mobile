// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_evaluation_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateEvaluationParams _$CreateEvaluationParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateEvaluationParams.fromJson(json);
}

/// @nodoc
mixin _$CreateEvaluationParams {
  int get examId => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  int get coachId => throw _privateConstructorUsedError;
  int get athleteId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEvaluationParamsCopyWith<CreateEvaluationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEvaluationParamsCopyWith<$Res> {
  factory $CreateEvaluationParamsCopyWith(CreateEvaluationParams value,
          $Res Function(CreateEvaluationParams) then) =
      _$CreateEvaluationParamsCopyWithImpl<$Res, CreateEvaluationParams>;
  @useResult
  $Res call(
      {int examId,
      int clubId,
      int questionId,
      int coachId,
      int athleteId,
      String? answer,
      int? score});
}

/// @nodoc
class _$CreateEvaluationParamsCopyWithImpl<$Res,
        $Val extends CreateEvaluationParams>
    implements $CreateEvaluationParamsCopyWith<$Res> {
  _$CreateEvaluationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? clubId = null,
    Object? questionId = null,
    Object? coachId = null,
    Object? athleteId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEvaluationParamsImplCopyWith<$Res>
    implements $CreateEvaluationParamsCopyWith<$Res> {
  factory _$$CreateEvaluationParamsImplCopyWith(
          _$CreateEvaluationParamsImpl value,
          $Res Function(_$CreateEvaluationParamsImpl) then) =
      __$$CreateEvaluationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int examId,
      int clubId,
      int questionId,
      int coachId,
      int athleteId,
      String? answer,
      int? score});
}

/// @nodoc
class __$$CreateEvaluationParamsImplCopyWithImpl<$Res>
    extends _$CreateEvaluationParamsCopyWithImpl<$Res,
        _$CreateEvaluationParamsImpl>
    implements _$$CreateEvaluationParamsImplCopyWith<$Res> {
  __$$CreateEvaluationParamsImplCopyWithImpl(
      _$CreateEvaluationParamsImpl _value,
      $Res Function(_$CreateEvaluationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? clubId = null,
    Object? questionId = null,
    Object? coachId = null,
    Object? athleteId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_$CreateEvaluationParamsImpl(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateEvaluationParamsImpl implements _CreateEvaluationParams {
  const _$CreateEvaluationParamsImpl(
      {this.examId = 0,
      this.clubId = 0,
      this.questionId = 0,
      this.coachId = 0,
      this.athleteId = 0,
      this.answer,
      this.score});

  factory _$CreateEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEvaluationParamsImplFromJson(json);

  @override
  @JsonKey()
  final int examId;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final int questionId;
  @override
  @JsonKey()
  final int coachId;
  @override
  @JsonKey()
  final int athleteId;
  @override
  final String? answer;
  @override
  final int? score;

  @override
  String toString() {
    return 'CreateEvaluationParams(examId: $examId, clubId: $clubId, questionId: $questionId, coachId: $coachId, athleteId: $athleteId, answer: $answer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEvaluationParamsImpl &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.athleteId, athleteId) ||
                other.athleteId == athleteId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, examId, clubId, questionId,
      coachId, athleteId, answer, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEvaluationParamsImplCopyWith<_$CreateEvaluationParamsImpl>
      get copyWith => __$$CreateEvaluationParamsImplCopyWithImpl<
          _$CreateEvaluationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEvaluationParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateEvaluationParams implements CreateEvaluationParams {
  const factory _CreateEvaluationParams(
      {final int examId,
      final int clubId,
      final int questionId,
      final int coachId,
      final int athleteId,
      final String? answer,
      final int? score}) = _$CreateEvaluationParamsImpl;

  factory _CreateEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$CreateEvaluationParamsImpl.fromJson;

  @override
  int get examId;
  @override
  int get clubId;
  @override
  int get questionId;
  @override
  int get coachId;
  @override
  int get athleteId;
  @override
  String? get answer;
  @override
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$CreateEvaluationParamsImplCopyWith<_$CreateEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
