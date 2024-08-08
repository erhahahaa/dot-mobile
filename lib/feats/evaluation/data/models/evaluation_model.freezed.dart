// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvaluationModel _$EvaluationModelFromJson(Map<String, dynamic> json) {
  return _EvaluationModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluationModel {
  int get id => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  int get athleteId => throw _privateConstructorUsedError;
  int get coachId => throw _privateConstructorUsedError;
  List<QuestionEvaluationModel> get questions =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationModelCopyWith<EvaluationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationModelCopyWith<$Res> {
  factory $EvaluationModelCopyWith(
          EvaluationModel value, $Res Function(EvaluationModel) then) =
      _$EvaluationModelCopyWithImpl<$Res, EvaluationModel>;
  @useResult
  $Res call(
      {int id,
      int examId,
      int clubId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> questions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$EvaluationModelCopyWithImpl<$Res, $Val extends EvaluationModel>
    implements $EvaluationModelCopyWith<$Res> {
  _$EvaluationModelCopyWithImpl(this._value, this._then);

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
    Object? athleteId = null,
    Object? coachId = null,
    Object? questions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEvaluationModel>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvaluationModelImplCopyWith<$Res>
    implements $EvaluationModelCopyWith<$Res> {
  factory _$$EvaluationModelImplCopyWith(_$EvaluationModelImpl value,
          $Res Function(_$EvaluationModelImpl) then) =
      __$$EvaluationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int examId,
      int clubId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> questions,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$EvaluationModelImplCopyWithImpl<$Res>
    extends _$EvaluationModelCopyWithImpl<$Res, _$EvaluationModelImpl>
    implements _$$EvaluationModelImplCopyWith<$Res> {
  __$$EvaluationModelImplCopyWithImpl(
      _$EvaluationModelImpl _value, $Res Function(_$EvaluationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? clubId = null,
    Object? athleteId = null,
    Object? coachId = null,
    Object? questions = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EvaluationModelImpl(
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
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEvaluationModel>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvaluationModelImpl implements _EvaluationModel {
  const _$EvaluationModelImpl(
      {this.id = 0,
      this.examId = 0,
      this.clubId = 0,
      this.athleteId = 0,
      this.coachId = 0,
      final List<QuestionEvaluationModel> questions = const [],
      this.createdAt,
      this.updatedAt})
      : _questions = questions;

  factory _$EvaluationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvaluationModelImplFromJson(json);

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
  final int athleteId;
  @override
  @JsonKey()
  final int coachId;
  final List<QuestionEvaluationModel> _questions;
  @override
  @JsonKey()
  List<QuestionEvaluationModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'EvaluationModel(id: $id, examId: $examId, clubId: $clubId, athleteId: $athleteId, coachId: $coachId, questions: $questions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.athleteId, athleteId) ||
                other.athleteId == athleteId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      examId,
      clubId,
      athleteId,
      coachId,
      const DeepCollectionEquality().hash(_questions),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluationModelImplCopyWith<_$EvaluationModelImpl> get copyWith =>
      __$$EvaluationModelImplCopyWithImpl<_$EvaluationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvaluationModelImplToJson(
      this,
    );
  }
}

abstract class _EvaluationModel implements EvaluationModel {
  const factory _EvaluationModel(
      {final int id,
      final int examId,
      final int clubId,
      final int athleteId,
      final int coachId,
      final List<QuestionEvaluationModel> questions,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$EvaluationModelImpl;

  factory _EvaluationModel.fromJson(Map<String, dynamic> json) =
      _$EvaluationModelImpl.fromJson;

  @override
  int get id;
  @override
  int get examId;
  @override
  int get clubId;
  @override
  int get athleteId;
  @override
  int get coachId;
  @override
  List<QuestionEvaluationModel> get questions;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$EvaluationModelImplCopyWith<_$EvaluationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionEvaluationModel _$QuestionEvaluationModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionEvaluationModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionEvaluationModel {
  int get questionId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionEvaluationModelCopyWith<QuestionEvaluationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEvaluationModelCopyWith<$Res> {
  factory $QuestionEvaluationModelCopyWith(QuestionEvaluationModel value,
          $Res Function(QuestionEvaluationModel) then) =
      _$QuestionEvaluationModelCopyWithImpl<$Res, QuestionEvaluationModel>;
  @useResult
  $Res call({int questionId, String? answer, int? score});
}

/// @nodoc
class _$QuestionEvaluationModelCopyWithImpl<$Res,
        $Val extends QuestionEvaluationModel>
    implements $QuestionEvaluationModelCopyWith<$Res> {
  _$QuestionEvaluationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$QuestionEvaluationModelImplCopyWith<$Res>
    implements $QuestionEvaluationModelCopyWith<$Res> {
  factory _$$QuestionEvaluationModelImplCopyWith(
          _$QuestionEvaluationModelImpl value,
          $Res Function(_$QuestionEvaluationModelImpl) then) =
      __$$QuestionEvaluationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int questionId, String? answer, int? score});
}

/// @nodoc
class __$$QuestionEvaluationModelImplCopyWithImpl<$Res>
    extends _$QuestionEvaluationModelCopyWithImpl<$Res,
        _$QuestionEvaluationModelImpl>
    implements _$$QuestionEvaluationModelImplCopyWith<$Res> {
  __$$QuestionEvaluationModelImplCopyWithImpl(
      _$QuestionEvaluationModelImpl _value,
      $Res Function(_$QuestionEvaluationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answer = freezed,
    Object? score = freezed,
  }) {
    return _then(_$QuestionEvaluationModelImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
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
class _$QuestionEvaluationModelImpl implements _QuestionEvaluationModel {
  const _$QuestionEvaluationModelImpl(
      {this.questionId = 0, this.answer, this.score});

  factory _$QuestionEvaluationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionEvaluationModelImplFromJson(json);

  @override
  @JsonKey()
  final int questionId;
  @override
  final String? answer;
  @override
  final int? score;

  @override
  String toString() {
    return 'QuestionEvaluationModel(questionId: $questionId, answer: $answer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEvaluationModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answer, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionEvaluationModelImplCopyWith<_$QuestionEvaluationModelImpl>
      get copyWith => __$$QuestionEvaluationModelImplCopyWithImpl<
          _$QuestionEvaluationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionEvaluationModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionEvaluationModel implements QuestionEvaluationModel {
  const factory _QuestionEvaluationModel(
      {final int questionId,
      final String? answer,
      final int? score}) = _$QuestionEvaluationModelImpl;

  factory _QuestionEvaluationModel.fromJson(Map<String, dynamic> json) =
      _$QuestionEvaluationModelImpl.fromJson;

  @override
  int get questionId;
  @override
  String? get answer;
  @override
  int? get score;
  @override
  @JsonKey(ignore: true)
  _$$QuestionEvaluationModelImplCopyWith<_$QuestionEvaluationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
