// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_evaluation_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateEvaluationParams _$UpdateEvaluationParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateEvaluationParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateEvaluationParams {
  int get id => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  int get questionId => throw _privateConstructorUsedError;
  int get coachId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateEvaluationParamsCopyWith<UpdateEvaluationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEvaluationParamsCopyWith<$Res> {
  factory $UpdateEvaluationParamsCopyWith(UpdateEvaluationParams value,
          $Res Function(UpdateEvaluationParams) then) =
      _$UpdateEvaluationParamsCopyWithImpl<$Res, UpdateEvaluationParams>;
  @useResult
  $Res call(
      {int id,
      int examId,
      int clubId,
      int questionId,
      int coachId,
      String? answer,
      int? score});
}

/// @nodoc
class _$UpdateEvaluationParamsCopyWithImpl<$Res,
        $Val extends UpdateEvaluationParams>
    implements $UpdateEvaluationParamsCopyWith<$Res> {
  _$UpdateEvaluationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? clubId = null,
    Object? questionId = null,
    Object? coachId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$UpdateEvaluationParamsImplCopyWith<$Res>
    implements $UpdateEvaluationParamsCopyWith<$Res> {
  factory _$$UpdateEvaluationParamsImplCopyWith(
          _$UpdateEvaluationParamsImpl value,
          $Res Function(_$UpdateEvaluationParamsImpl) then) =
      __$$UpdateEvaluationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int examId,
      int clubId,
      int questionId,
      int coachId,
      String? answer,
      int? score});
}

/// @nodoc
class __$$UpdateEvaluationParamsImplCopyWithImpl<$Res>
    extends _$UpdateEvaluationParamsCopyWithImpl<$Res,
        _$UpdateEvaluationParamsImpl>
    implements _$$UpdateEvaluationParamsImplCopyWith<$Res> {
  __$$UpdateEvaluationParamsImplCopyWithImpl(
      _$UpdateEvaluationParamsImpl _value,
      $Res Function(_$UpdateEvaluationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? clubId = null,
    Object? questionId = null,
    Object? coachId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_$UpdateEvaluationParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UpdateEvaluationParamsImpl implements _UpdateEvaluationParams {
  const _$UpdateEvaluationParamsImpl(
      {this.id = 0,
      this.examId = 0,
      this.clubId = 0,
      this.questionId = 0,
      this.coachId = 0,
      this.answer,
      this.score});

  factory _$UpdateEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEvaluationParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
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
  final String? answer;
  @override
  final int? score;

  @override
  String toString() {
    return 'UpdateEvaluationParams(id: $id, examId: $examId, clubId: $clubId, questionId: $questionId, coachId: $coachId, answer: $answer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEvaluationParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, examId, clubId, questionId, coachId, answer, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEvaluationParamsImplCopyWith<_$UpdateEvaluationParamsImpl>
      get copyWith => __$$UpdateEvaluationParamsImplCopyWithImpl<
          _$UpdateEvaluationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEvaluationParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateEvaluationParams implements UpdateEvaluationParams {
  const factory _UpdateEvaluationParams(
      {final int id,
      final int examId,
      final int clubId,
      final int questionId,
      final int coachId,
      final String? answer,
      final int? score}) = _$UpdateEvaluationParamsImpl;

  factory _UpdateEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$UpdateEvaluationParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get examId;
  @override
  int get clubId;
  @override
  int get questionId;
  @override
  int get coachId;
  @override
  String? get answer;
  @override
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$UpdateEvaluationParamsImplCopyWith<_$UpdateEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
