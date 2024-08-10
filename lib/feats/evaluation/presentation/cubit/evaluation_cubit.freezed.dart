// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evaluation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EvaluationState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<EvaluationModel> get evaluations => throw _privateConstructorUsedError;
  List<EvaluationModel> get filteredEvaluations =>
      throw _privateConstructorUsedError;
  List<QuestionModelWithController> get questions =>
      throw _privateConstructorUsedError;
  UserModel get coach => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationStateCopyWith<EvaluationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationStateCopyWith<$Res> {
  factory $EvaluationStateCopyWith(
          EvaluationState value, $Res Function(EvaluationState) then) =
      _$EvaluationStateCopyWithImpl<$Res, EvaluationState>;
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations,
      List<QuestionModelWithController> questions,
      UserModel coach});

  $UserModelCopyWith<$Res> get coach;
}

/// @nodoc
class _$EvaluationStateCopyWithImpl<$Res, $Val extends EvaluationState>
    implements $EvaluationStateCopyWith<$Res> {
  _$EvaluationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? evaluations = null,
    Object? filteredEvaluations = null,
    Object? questions = null,
    Object? coach = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      evaluations: null == evaluations
          ? _value.evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      filteredEvaluations: null == filteredEvaluations
          ? _value.filteredEvaluations
          : filteredEvaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModelWithController>,
      coach: null == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get coach {
    return $UserModelCopyWith<$Res>(_value.coach, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvaluationStateImplCopyWith<$Res>
    implements $EvaluationStateCopyWith<$Res> {
  factory _$$EvaluationStateImplCopyWith(_$EvaluationStateImpl value,
          $Res Function(_$EvaluationStateImpl) then) =
      __$$EvaluationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<EvaluationModel> evaluations,
      List<EvaluationModel> filteredEvaluations,
      List<QuestionModelWithController> questions,
      UserModel coach});

  @override
  $UserModelCopyWith<$Res> get coach;
}

/// @nodoc
class __$$EvaluationStateImplCopyWithImpl<$Res>
    extends _$EvaluationStateCopyWithImpl<$Res, _$EvaluationStateImpl>
    implements _$$EvaluationStateImplCopyWith<$Res> {
  __$$EvaluationStateImplCopyWithImpl(
      _$EvaluationStateImpl _value, $Res Function(_$EvaluationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? evaluations = null,
    Object? filteredEvaluations = null,
    Object? questions = null,
    Object? coach = null,
  }) {
    return _then(_$EvaluationStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      evaluations: null == evaluations
          ? _value._evaluations
          : evaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      filteredEvaluations: null == filteredEvaluations
          ? _value._filteredEvaluations
          : filteredEvaluations // ignore: cast_nullable_to_non_nullable
              as List<EvaluationModel>,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModelWithController>,
      coach: null == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$EvaluationStateImpl implements _EvaluationState {
  const _$EvaluationStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      final List<EvaluationModel> evaluations = const [],
      final List<EvaluationModel> filteredEvaluations = const [],
      final List<QuestionModelWithController> questions = const [],
      this.coach = const UserModel()})
      : _evaluations = evaluations,
        _filteredEvaluations = filteredEvaluations,
        _questions = questions;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  final List<EvaluationModel> _evaluations;
  @override
  @JsonKey()
  List<EvaluationModel> get evaluations {
    if (_evaluations is EqualUnmodifiableListView) return _evaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluations);
  }

  final List<EvaluationModel> _filteredEvaluations;
  @override
  @JsonKey()
  List<EvaluationModel> get filteredEvaluations {
    if (_filteredEvaluations is EqualUnmodifiableListView)
      return _filteredEvaluations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredEvaluations);
  }

  final List<QuestionModelWithController> _questions;
  @override
  @JsonKey()
  List<QuestionModelWithController> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final UserModel coach;

  @override
  String toString() {
    return 'EvaluationState(state: $state, failure: $failure, evaluations: $evaluations, filteredEvaluations: $filteredEvaluations, questions: $questions, coach: $coach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluationStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._evaluations, _evaluations) &&
            const DeepCollectionEquality()
                .equals(other._filteredEvaluations, _filteredEvaluations) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.coach, coach) || other.coach == coach));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      const DeepCollectionEquality().hash(_evaluations),
      const DeepCollectionEquality().hash(_filteredEvaluations),
      const DeepCollectionEquality().hash(_questions),
      coach);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluationStateImplCopyWith<_$EvaluationStateImpl> get copyWith =>
      __$$EvaluationStateImplCopyWithImpl<_$EvaluationStateImpl>(
          this, _$identity);
}

abstract class _EvaluationState implements EvaluationState {
  const factory _EvaluationState(
      {final BaseState state,
      final Failure? failure,
      final List<EvaluationModel> evaluations,
      final List<EvaluationModel> filteredEvaluations,
      final List<QuestionModelWithController> questions,
      final UserModel coach}) = _$EvaluationStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  List<EvaluationModel> get evaluations;
  @override
  List<EvaluationModel> get filteredEvaluations;
  @override
  List<QuestionModelWithController> get questions;
  @override
  UserModel get coach;
  @override
  @JsonKey(ignore: true)
  _$$EvaluationStateImplCopyWith<_$EvaluationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
