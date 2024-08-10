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
  int get clubId => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  int get athleteId => throw _privateConstructorUsedError;
  int get coachId => throw _privateConstructorUsedError;
  List<QuestionEvaluationModel> get evaluations =>
      throw _privateConstructorUsedError;

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
      {int clubId,
      int examId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> evaluations});
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
    Object? clubId = null,
    Object? examId = null,
    Object? athleteId = null,
    Object? coachId = null,
    Object? evaluations = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      evaluations: null == evaluations
          ? _value.evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<QuestionEvaluationModel>,
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
      {int clubId,
      int examId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> evaluations});
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
    Object? clubId = null,
    Object? examId = null,
    Object? athleteId = null,
    Object? coachId = null,
    Object? evaluations = null,
  }) {
    return _then(_$CreateEvaluationParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      athleteId: null == athleteId
          ? _value.athleteId
          : athleteId // ignore: cast_nullable_to_non_nullable
              as int,
      coachId: null == coachId
          ? _value.coachId
          : coachId // ignore: cast_nullable_to_non_nullable
              as int,
      evaluations: null == evaluations
          ? _value._evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<QuestionEvaluationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateEvaluationParamsImpl implements _CreateEvaluationParams {
  const _$CreateEvaluationParamsImpl(
      {this.clubId = 0,
      this.examId = 0,
      this.athleteId = 0,
      this.coachId = 0,
      final List<QuestionEvaluationModel> evaluations = const []})
      : _evaluations = evaluations;

  factory _$CreateEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEvaluationParamsImplFromJson(json);

  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final int examId;
  @override
  @JsonKey()
  final int athleteId;
  @override
  @JsonKey()
  final int coachId;
  final List<QuestionEvaluationModel> _evaluations;
  @override
  @JsonKey()
  List<QuestionEvaluationModel> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  @override
  String toString() {
    return 'CreateEvaluationParams(clubId: $clubId, examId: $examId, athleteId: $athleteId, coachId: $coachId, evaluations: $evaluations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEvaluationParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.athleteId, athleteId) ||
                other.athleteId == athleteId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            const DeepCollectionEquality()
                .equals(other._evaluations, _evaluations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clubId, examId, athleteId,
      coachId, const DeepCollectionEquality().hash(_evaluations));

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
          {final int clubId,
          final int examId,
          final int athleteId,
          final int coachId,
          final List<QuestionEvaluationModel> evaluations}) =
      _$CreateEvaluationParamsImpl;

  factory _CreateEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$CreateEvaluationParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  int get examId;
  @override
  int get athleteId;
  @override
  int get coachId;
  @override
  List<QuestionEvaluationModel> get evaluations;
  @override
  @JsonKey(ignore: true)
  _$$CreateEvaluationParamsImplCopyWith<_$CreateEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
