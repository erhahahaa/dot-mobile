// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_question_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateQuestionParams _$UpdateQuestionParamsFromJson(Map<String, dynamic> json) {
  return _UpdateQuestionParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionParams {
  int get id => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<QuestionOptionModel> get options => throw _privateConstructorUsedError;

  /// Serializes this UpdateQuestionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateQuestionParamsCopyWith<UpdateQuestionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionParamsCopyWith<$Res> {
  factory $UpdateQuestionParamsCopyWith(UpdateQuestionParams value,
          $Res Function(UpdateQuestionParams) then) =
      _$UpdateQuestionParamsCopyWithImpl<$Res, UpdateQuestionParams>;
  @useResult
  $Res call(
      {int id,
      int order,
      int examId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options});
}

/// @nodoc
class _$UpdateQuestionParamsCopyWithImpl<$Res,
        $Val extends UpdateQuestionParams>
    implements $UpdateQuestionParamsCopyWith<$Res> {
  _$UpdateQuestionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? examId = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateQuestionParamsImplCopyWith<$Res>
    implements $UpdateQuestionParamsCopyWith<$Res> {
  factory _$$UpdateQuestionParamsImplCopyWith(_$UpdateQuestionParamsImpl value,
          $Res Function(_$UpdateQuestionParamsImpl) then) =
      __$$UpdateQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int order,
      int examId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options});
}

/// @nodoc
class __$$UpdateQuestionParamsImplCopyWithImpl<$Res>
    extends _$UpdateQuestionParamsCopyWithImpl<$Res, _$UpdateQuestionParamsImpl>
    implements _$$UpdateQuestionParamsImplCopyWith<$Res> {
  __$$UpdateQuestionParamsImplCopyWithImpl(_$UpdateQuestionParamsImpl _value,
      $Res Function(_$UpdateQuestionParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? examId = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_$UpdateQuestionParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionParamsImpl extends _UpdateQuestionParams {
  const _$UpdateQuestionParamsImpl(
      {required this.id,
      required this.order,
      required this.examId,
      required this.type,
      required this.question,
      required final List<QuestionOptionModel> options})
      : _options = options,
        super._();

  factory _$UpdateQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuestionParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int order;
  @override
  final int examId;
  @override
  final QuestionType type;
  @override
  final String question;
  final List<QuestionOptionModel> _options;
  @override
  List<QuestionOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'UpdateQuestionParams(id: $id, order: $order, examId: $examId, type: $type, question: $question, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, examId, type,
      question, const DeepCollectionEquality().hash(_options));

  /// Create a copy of UpdateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionParamsImplCopyWith<_$UpdateQuestionParamsImpl>
      get copyWith =>
          __$$UpdateQuestionParamsImplCopyWithImpl<_$UpdateQuestionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionParams extends UpdateQuestionParams {
  const factory _UpdateQuestionParams(
          {required final int id,
          required final int order,
          required final int examId,
          required final QuestionType type,
          required final String question,
          required final List<QuestionOptionModel> options}) =
      _$UpdateQuestionParamsImpl;
  const _UpdateQuestionParams._() : super._();

  factory _UpdateQuestionParams.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get order;
  @override
  int get examId;
  @override
  QuestionType get type;
  @override
  String get question;
  @override
  List<QuestionOptionModel> get options;

  /// Create a copy of UpdateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuestionParamsImplCopyWith<_$UpdateQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
