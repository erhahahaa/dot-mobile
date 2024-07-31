// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exam_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateExamParams _$CreateExamParamsFromJson(Map<String, dynamic> json) {
  return _CreateExamParams.fromJson(json);
}

/// @nodoc
mixin _$CreateExamParams {
  int get clubId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get dueAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateExamParamsCopyWith<CreateExamParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateExamParamsCopyWith<$Res> {
  factory $CreateExamParamsCopyWith(
          CreateExamParams value, $Res Function(CreateExamParams) then) =
      _$CreateExamParamsCopyWithImpl<$Res, CreateExamParams>;
  @useResult
  $Res call(
      {int clubId,
      String title,
      String description,
      DateTime? dueAt,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class _$CreateExamParamsCopyWithImpl<$Res, $Val extends CreateExamParams>
    implements $CreateExamParamsCopyWith<$Res> {
  _$CreateExamParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? title = null,
    Object? description = null,
    Object? dueAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateExamParamsImplCopyWith<$Res>
    implements $CreateExamParamsCopyWith<$Res> {
  factory _$$CreateExamParamsImplCopyWith(_$CreateExamParamsImpl value,
          $Res Function(_$CreateExamParamsImpl) then) =
      __$$CreateExamParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int clubId,
      String title,
      String description,
      DateTime? dueAt,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class __$$CreateExamParamsImplCopyWithImpl<$Res>
    extends _$CreateExamParamsCopyWithImpl<$Res, _$CreateExamParamsImpl>
    implements _$$CreateExamParamsImplCopyWith<$Res> {
  __$$CreateExamParamsImplCopyWithImpl(_$CreateExamParamsImpl _value,
      $Res Function(_$CreateExamParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? title = null,
    Object? description = null,
    Object? dueAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CreateExamParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateExamParamsImpl extends _CreateExamParams {
  const _$CreateExamParamsImpl(
      {this.clubId = 0,
      this.title = '',
      this.description = '',
      this.dueAt,
      @JsonKey(includeFromJson: false, includeToJson: false) this.image})
      : super._();

  factory _$CreateExamParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateExamParamsImplFromJson(json);

  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? dueAt;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? image;

  @override
  String toString() {
    return 'CreateExamParams(clubId: $clubId, title: $title, description: $description, dueAt: $dueAt, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExamParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clubId, title, description, dueAt, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateExamParamsImplCopyWith<_$CreateExamParamsImpl> get copyWith =>
      __$$CreateExamParamsImplCopyWithImpl<_$CreateExamParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateExamParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateExamParams extends CreateExamParams {
  const factory _CreateExamParams(
      {final int clubId,
      final String title,
      final String description,
      final DateTime? dueAt,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? image}) = _$CreateExamParamsImpl;
  const _CreateExamParams._() : super._();

  factory _CreateExamParams.fromJson(Map<String, dynamic> json) =
      _$CreateExamParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime? get dueAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$CreateExamParamsImplCopyWith<_$CreateExamParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
