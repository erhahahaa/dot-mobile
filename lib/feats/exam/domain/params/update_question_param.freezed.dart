// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_question_param.dart';

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
  int get examId => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {int id, int examId, QuestionType type, String content, String answer});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? type = null,
    Object? content = null,
    Object? answer = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int id, int examId, QuestionType type, String content, String answer});
}

/// @nodoc
class __$$UpdateQuestionParamsImplCopyWithImpl<$Res>
    extends _$UpdateQuestionParamsCopyWithImpl<$Res, _$UpdateQuestionParamsImpl>
    implements _$$UpdateQuestionParamsImplCopyWith<$Res> {
  __$$UpdateQuestionParamsImplCopyWithImpl(_$UpdateQuestionParamsImpl _value,
      $Res Function(_$UpdateQuestionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? type = null,
    Object? content = null,
    Object? answer = null,
  }) {
    return _then(_$UpdateQuestionParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionParamsImpl implements _UpdateQuestionParams {
  const _$UpdateQuestionParamsImpl(
      {this.id = 0,
      this.examId = 0,
      this.type = QuestionType.essay,
      this.content = '',
      this.answer = ''});

  factory _$UpdateQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuestionParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int examId;
  @override
  @JsonKey()
  final QuestionType type;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String answer;

  @override
  String toString() {
    return 'UpdateQuestionParams(id: $id, examId: $examId, type: $type, content: $content, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, examId, type, content, answer);

  @JsonKey(ignore: true)
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

abstract class _UpdateQuestionParams implements UpdateQuestionParams {
  const factory _UpdateQuestionParams(
      {final int id,
      final int examId,
      final QuestionType type,
      final String content,
      final String answer}) = _$UpdateQuestionParamsImpl;

  factory _UpdateQuestionParams.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get examId;
  @override
  QuestionType get type;
  @override
  String get content;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$UpdateQuestionParamsImplCopyWith<_$UpdateQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
