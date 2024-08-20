// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exam_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateExamParams _$UpdateExamParamsFromJson(Map<String, dynamic> json) {
  return _UpdateExamParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateExamParams {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get endDate =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image => throw _privateConstructorUsedError;

  /// Serializes this UpdateExamParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateExamParamsCopyWith<UpdateExamParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateExamParamsCopyWith<$Res> {
  factory $UpdateExamParamsCopyWith(
          UpdateExamParams value, $Res Function(UpdateExamParams) then) =
      _$UpdateExamParamsCopyWithImpl<$Res, UpdateExamParams>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      String title,
      String? description,
      DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class _$UpdateExamParamsCopyWithImpl<$Res, $Val extends UpdateExamParams>
    implements $UpdateExamParamsCopyWith<$Res> {
  _$UpdateExamParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateExamParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? title = null,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? image = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateExamParamsImplCopyWith<$Res>
    implements $UpdateExamParamsCopyWith<$Res> {
  factory _$$UpdateExamParamsImplCopyWith(_$UpdateExamParamsImpl value,
          $Res Function(_$UpdateExamParamsImpl) then) =
      __$$UpdateExamParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      String title,
      String? description,
      DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class __$$UpdateExamParamsImplCopyWithImpl<$Res>
    extends _$UpdateExamParamsCopyWithImpl<$Res, _$UpdateExamParamsImpl>
    implements _$$UpdateExamParamsImplCopyWith<$Res> {
  __$$UpdateExamParamsImplCopyWithImpl(_$UpdateExamParamsImpl _value,
      $Res Function(_$UpdateExamParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateExamParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? title = null,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UpdateExamParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
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
class _$UpdateExamParamsImpl extends _UpdateExamParams {
  const _$UpdateExamParamsImpl(
      {required this.id,
      required this.clubId,
      required this.title,
      required this.description,
      required this.endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) this.image})
      : super._();

  factory _$UpdateExamParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateExamParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int clubId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime? endDate;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? image;

  @override
  String toString() {
    return 'UpdateExamParams(id: $id, clubId: $clubId, title: $title, description: $description, endDate: $endDate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExamParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, clubId, title, description, endDate, image);

  /// Create a copy of UpdateExamParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExamParamsImplCopyWith<_$UpdateExamParamsImpl> get copyWith =>
      __$$UpdateExamParamsImplCopyWithImpl<_$UpdateExamParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateExamParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateExamParams extends UpdateExamParams {
  const factory _UpdateExamParams(
      {required final int id,
      required final int clubId,
      required final String title,
      required final String? description,
      required final DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? image}) = _$UpdateExamParamsImpl;
  const _UpdateExamParams._() : super._();

  factory _UpdateExamParams.fromJson(Map<String, dynamic> json) =
      _$UpdateExamParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime? get endDate; // ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image;

  /// Create a copy of UpdateExamParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExamParamsImplCopyWith<_$UpdateExamParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
