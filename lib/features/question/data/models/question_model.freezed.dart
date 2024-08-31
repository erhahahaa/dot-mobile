// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int get id => throw _privateConstructorUsedError;
  int get examId => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<QuestionOptionModel> get options => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int id,
      int examId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options,
      int order,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
    Object? order = null,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int examId,
      QuestionType type,
      String question,
      List<QuestionOptionModel> options,
      int order,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? examId = null,
    Object? type = null,
    Object? question = null,
    Object? options = null,
    Object? order = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$QuestionModelImpl(
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
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$QuestionModelImpl extends _QuestionModel {
  const _$QuestionModelImpl(
      {this.id = 0,
      this.examId = 0,
      this.type = QuestionType.text,
      this.question = 'Mention 5 basic Movement',
      final List<QuestionOptionModel> options = const [],
      this.order = 0,
      this.createdAt,
      this.updatedAt})
      : _options = options,
        super._();

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

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
  @JsonKey()
  final int order;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'QuestionModel(id: $id, examId: $examId, type: $type, question: $question, options: $options, order: $order, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      examId,
      type,
      question,
      const DeepCollectionEquality().hash(_options),
      order,
      createdAt,
      updatedAt);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel extends QuestionModel {
  const factory _QuestionModel(
      {final int id,
      final int examId,
      final QuestionType type,
      final String question,
      final List<QuestionOptionModel> options,
      final int order,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$QuestionModelImpl;
  const _QuestionModel._() : super._();

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  int get id;
  @override
  int get examId;
  @override
  QuestionType get type;
  @override
  String get question;
  @override
  List<QuestionOptionModel> get options;
  @override
  int get order;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionOptionModel _$QuestionOptionModelFromJson(Map<String, dynamic> json) {
  return _QuestionOptionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionOptionModel {
  int get order => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this QuestionOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionOptionModelCopyWith<QuestionOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionModelCopyWith<$Res> {
  factory $QuestionOptionModelCopyWith(
          QuestionOptionModel value, $Res Function(QuestionOptionModel) then) =
      _$QuestionOptionModelCopyWithImpl<$Res, QuestionOptionModel>;
  @useResult
  $Res call({int order, String text});
}

/// @nodoc
class _$QuestionOptionModelCopyWithImpl<$Res, $Val extends QuestionOptionModel>
    implements $QuestionOptionModelCopyWith<$Res> {
  _$QuestionOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionOptionModelImplCopyWith<$Res>
    implements $QuestionOptionModelCopyWith<$Res> {
  factory _$$QuestionOptionModelImplCopyWith(_$QuestionOptionModelImpl value,
          $Res Function(_$QuestionOptionModelImpl) then) =
      __$$QuestionOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, String text});
}

/// @nodoc
class __$$QuestionOptionModelImplCopyWithImpl<$Res>
    extends _$QuestionOptionModelCopyWithImpl<$Res, _$QuestionOptionModelImpl>
    implements _$$QuestionOptionModelImplCopyWith<$Res> {
  __$$QuestionOptionModelImplCopyWithImpl(_$QuestionOptionModelImpl _value,
      $Res Function(_$QuestionOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? text = null,
  }) {
    return _then(_$QuestionOptionModelImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionOptionModelImpl extends _QuestionOptionModel {
  _$QuestionOptionModelImpl({this.order = 0, this.text = ''}) : super._();

  factory _$QuestionOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionOptionModelImplFromJson(json);

  @override
  @JsonKey()
  final int order;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'QuestionOptionModel(order: $order, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionOptionModelImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, text);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      __$$QuestionOptionModelImplCopyWithImpl<_$QuestionOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionOptionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionOptionModel extends QuestionOptionModel {
  factory _QuestionOptionModel({final int order, final String text}) =
      _$QuestionOptionModelImpl;
  _QuestionOptionModel._() : super._();

  factory _QuestionOptionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionOptionModelImpl.fromJson;

  @override
  int get order;
  @override
  String get text;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
