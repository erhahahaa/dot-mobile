// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exam.dart';

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
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get dueAt => throw _privateConstructorUsedError;

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
      {int id, int clubId, String name, String description, DateTime? dueAt});
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
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? description = null,
    Object? dueAt = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {int id, int clubId, String name, String description, DateTime? dueAt});
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
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? description = null,
    Object? dueAt = freezed,
  }) {
    return _then(_$CreateExamParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueAt: freezed == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateExamParamsImpl implements _CreateExamParams {
  const _$CreateExamParamsImpl(
      {this.id = 0,
      this.clubId = 0,
      this.name = '',
      this.description = '',
      this.dueAt});

  factory _$CreateExamParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateExamParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int clubId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? dueAt;

  @override
  String toString() {
    return 'CreateExamParams(id: $id, clubId: $clubId, name: $name, description: $description, dueAt: $dueAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateExamParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, clubId, name, description, dueAt);

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

abstract class _CreateExamParams implements CreateExamParams {
  const factory _CreateExamParams(
      {final int id,
      final int clubId,
      final String name,
      final String description,
      final DateTime? dueAt}) = _$CreateExamParamsImpl;

  factory _CreateExamParams.fromJson(Map<String, dynamic> json) =
      _$CreateExamParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get dueAt;
  @override
  @JsonKey(ignore: true)
  _$$CreateExamParamsImplCopyWith<_$CreateExamParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
