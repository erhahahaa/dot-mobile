// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateQuestionParams _$CreateQuestionParamsFromJson(Map<String, dynamic> json) {
  return _CreateQuestionParams.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionParams {
  int get clubId => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionParamsCopyWith<CreateQuestionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionParamsCopyWith<$Res> {
  factory $CreateQuestionParamsCopyWith(CreateQuestionParams value,
          $Res Function(CreateQuestionParams) then) =
      _$CreateQuestionParamsCopyWithImpl<$Res, CreateQuestionParams>;
  @useResult
  $Res call(
      {int clubId,
      int examId,
      QuestionType type,
      String content,
      String answer});
}

/// @nodoc
class _$CreateQuestionParamsCopyWithImpl<$Res,
        $Val extends CreateQuestionParams>
    implements $CreateQuestionParamsCopyWith<$Res> {
  _$CreateQuestionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? examId = null,
    Object? type = null,
    Object? content = null,
    Object? answer = null,
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
abstract class _$$CreateQuestionParamsImplCopyWith<$Res>
    implements $CreateQuestionParamsCopyWith<$Res> {
  factory _$$CreateQuestionParamsImplCopyWith(_$CreateQuestionParamsImpl value,
          $Res Function(_$CreateQuestionParamsImpl) then) =
      __$$CreateQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int clubId,
      int examId,
      QuestionType type,
      String content,
      String answer});
}

/// @nodoc
class __$$CreateQuestionParamsImplCopyWithImpl<$Res>
    extends _$CreateQuestionParamsCopyWithImpl<$Res, _$CreateQuestionParamsImpl>
    implements _$$CreateQuestionParamsImplCopyWith<$Res> {
  __$$CreateQuestionParamsImplCopyWithImpl(_$CreateQuestionParamsImpl _value,
      $Res Function(_$CreateQuestionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? examId = null,
    Object? type = null,
    Object? content = null,
    Object? answer = null,
  }) {
    return _then(_$CreateQuestionParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
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
class _$CreateQuestionParamsImpl implements _CreateQuestionParams {
  const _$CreateQuestionParamsImpl(
      {this.clubId = 0,
      this.examId = 0,
      this.type = QuestionType.essay,
      this.content = '',
      this.answer = ''});

  factory _$CreateQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuestionParamsImplFromJson(json);

  @override
  @JsonKey()
  final int clubId;
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
    return 'CreateQuestionParams(clubId: $clubId, examId: $examId, type: $type, content: $content, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clubId, examId, type, content, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionParamsImplCopyWith<_$CreateQuestionParamsImpl>
      get copyWith =>
          __$$CreateQuestionParamsImplCopyWithImpl<_$CreateQuestionParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionParams implements CreateQuestionParams {
  const factory _CreateQuestionParams(
      {final int clubId,
      final int examId,
      final QuestionType type,
      final String content,
      final String answer}) = _$CreateQuestionParamsImpl;

  factory _CreateQuestionParams.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionParamsImpl.fromJson;

  @override
  int get clubId;
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
  _$$CreateQuestionParamsImplCopyWith<_$CreateQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
