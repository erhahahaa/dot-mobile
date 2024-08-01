// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_param.dart';

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
  int get order => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  int? get mediaId => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<QuestionOptionModel> get options => throw _privateConstructorUsedError;

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
      {int order,
      int examId,
      int? mediaId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options});
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
    Object? order = null,
    Object? examId = null,
    Object? mediaId = freezed,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$CreateQuestionParamsImplCopyWith<$Res>
    implements $CreateQuestionParamsCopyWith<$Res> {
  factory _$$CreateQuestionParamsImplCopyWith(_$CreateQuestionParamsImpl value,
          $Res Function(_$CreateQuestionParamsImpl) then) =
      __$$CreateQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int order,
      int examId,
      int? mediaId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options});
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
    Object? order = null,
    Object? examId = null,
    Object? mediaId = freezed,
    Object? type = null,
    Object? question = null,
    Object? options = null,
  }) {
    return _then(_$CreateQuestionParamsImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: freezed == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$CreateQuestionParamsImpl implements _CreateQuestionParams {
  const _$CreateQuestionParamsImpl(
      {this.order = 0,
      this.examId = 0,
      this.mediaId,
      this.type = QuestionType.essay,
      this.question = '',
      final List<QuestionOptionModel> options = const []})
      : _options = options;

  factory _$CreateQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuestionParamsImplFromJson(json);

  @override
  @JsonKey()
  final int order;
  @override
  @JsonKey()
  final int examId;
  @override
  final int? mediaId;
  @override
  @JsonKey()
  final QuestionType type;
  @override
  @JsonKey()
  final String question;
  final List<QuestionOptionModel> _options;
  @override
  @JsonKey()
  List<QuestionOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'CreateQuestionParams(order: $order, examId: $examId, mediaId: $mediaId, type: $type, question: $question, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionParamsImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order, examId, mediaId, type,
      question, const DeepCollectionEquality().hash(_options));

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
      {final int order,
      final int examId,
      final int? mediaId,
      final QuestionType type,
      final String question,
      final List<QuestionOptionModel> options}) = _$CreateQuestionParamsImpl;

  factory _CreateQuestionParams.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionParamsImpl.fromJson;

  @override
  int get order;
  @override
  int get examId;
  @override
  int? get mediaId;
  @override
  QuestionType get type;
  @override
  String get question;
  @override
  List<QuestionOptionModel> get options;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionParamsImplCopyWith<_$CreateQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
