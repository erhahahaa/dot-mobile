// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_usecase.dart';

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

  /// Serializes this CreateQuestionParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of CreateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of CreateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
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
class _$CreateQuestionParamsImpl extends _CreateQuestionParams {
  const _$CreateQuestionParamsImpl(
      {required this.order,
      required this.examId,
      required this.mediaId,
      required this.type,
      required this.question,
      required final List<QuestionOptionModel> options})
      : _options = options,
        super._();

  factory _$CreateQuestionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuestionParamsImplFromJson(json);

  @override
  final int order;
  @override
  final int examId;
  @override
  final int? mediaId;
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, examId, mediaId, type,
      question, const DeepCollectionEquality().hash(_options));

  /// Create a copy of CreateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _CreateQuestionParams extends CreateQuestionParams {
  const factory _CreateQuestionParams(
          {required final int order,
          required final int examId,
          required final int? mediaId,
          required final QuestionType type,
          required final String question,
          required final List<QuestionOptionModel> options}) =
      _$CreateQuestionParamsImpl;
  const _CreateQuestionParams._() : super._();

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

  /// Create a copy of CreateQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateQuestionParamsImplCopyWith<_$CreateQuestionParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
