// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_evaluation_usecase.dart';

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
  int get clubId => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  int get athleteId => throw _privateConstructorUsedError;
  int get coachId => throw _privateConstructorUsedError;
  List<QuestionEvaluationModel> get evaluations =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateEvaluationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int clubId,
      int examId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> evaluations});
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

  /// Create a copy of UpdateEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? examId = null,
    Object? athleteId = null,
    Object? coachId = null,
    Object? evaluations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      int clubId,
      int examId,
      int athleteId,
      int coachId,
      List<QuestionEvaluationModel> evaluations});
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

  /// Create a copy of UpdateEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? examId = null,
    Object? athleteId = null,
    Object? coachId = null,
    Object? evaluations = null,
  }) {
    return _then(_$UpdateEvaluationParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UpdateEvaluationParamsImpl extends _UpdateEvaluationParams {
  const _$UpdateEvaluationParamsImpl(
      {required this.id,
      required this.clubId,
      required this.examId,
      required this.athleteId,
      required this.coachId,
      required final List<QuestionEvaluationModel> evaluations})
      : _evaluations = evaluations,
        super._();

  factory _$UpdateEvaluationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEvaluationParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int clubId;
  @override
  final int examId;
  @override
  final int athleteId;
  @override
  final int coachId;
  final List<QuestionEvaluationModel> _evaluations;
  @override
  List<QuestionEvaluationModel> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  @override
  String toString() {
    return 'UpdateEvaluationParams(id: $id, clubId: $clubId, examId: $examId, athleteId: $athleteId, coachId: $coachId, evaluations: $evaluations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEvaluationParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.athleteId, athleteId) ||
                other.athleteId == athleteId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            const DeepCollectionEquality()
                .equals(other._evaluations, _evaluations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clubId, examId, athleteId,
      coachId, const DeepCollectionEquality().hash(_evaluations));

  /// Create a copy of UpdateEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _UpdateEvaluationParams extends UpdateEvaluationParams {
  const factory _UpdateEvaluationParams(
          {required final int id,
          required final int clubId,
          required final int examId,
          required final int athleteId,
          required final int coachId,
          required final List<QuestionEvaluationModel> evaluations}) =
      _$UpdateEvaluationParamsImpl;
  const _UpdateEvaluationParams._() : super._();

  factory _UpdateEvaluationParams.fromJson(Map<String, dynamic> json) =
      _$UpdateEvaluationParamsImpl.fromJson;

  @override
  int get id;
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

  /// Create a copy of UpdateEvaluationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEvaluationParamsImplCopyWith<_$UpdateEvaluationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
