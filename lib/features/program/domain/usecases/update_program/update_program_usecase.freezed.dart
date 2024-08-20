// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_program_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProgramParams _$UpdateProgramParamsFromJson(Map<String, dynamic> json) {
  return _UpdateProgramParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProgramParams {
  int get id => throw _privateConstructorUsedError;
  int get clubId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image => throw _privateConstructorUsedError;

  /// Serializes this UpdateProgramParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProgramParamsCopyWith<UpdateProgramParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProgramParamsCopyWith<$Res> {
  factory $UpdateProgramParamsCopyWith(
          UpdateProgramParams value, $Res Function(UpdateProgramParams) then) =
      _$UpdateProgramParamsCopyWithImpl<$Res, UpdateProgramParams>;
  @useResult
  $Res call(
      {int id,
      int clubId,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class _$UpdateProgramParamsCopyWithImpl<$Res, $Val extends UpdateProgramParams>
    implements $UpdateProgramParamsCopyWith<$Res> {
  _$UpdateProgramParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? startDate = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$UpdateProgramParamsImplCopyWith<$Res>
    implements $UpdateProgramParamsCopyWith<$Res> {
  factory _$$UpdateProgramParamsImplCopyWith(_$UpdateProgramParamsImpl value,
          $Res Function(_$UpdateProgramParamsImpl) then) =
      __$$UpdateProgramParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int clubId,
      String name,
      DateTime? startDate,
      DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) File? image});
}

/// @nodoc
class __$$UpdateProgramParamsImplCopyWithImpl<$Res>
    extends _$UpdateProgramParamsCopyWithImpl<$Res, _$UpdateProgramParamsImpl>
    implements _$$UpdateProgramParamsImplCopyWith<$Res> {
  __$$UpdateProgramParamsImplCopyWithImpl(_$UpdateProgramParamsImpl _value,
      $Res Function(_$UpdateProgramParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clubId = null,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UpdateProgramParamsImpl(
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$UpdateProgramParamsImpl extends _UpdateProgramParams {
  const _$UpdateProgramParamsImpl(
      {required this.id,
      required this.clubId,
      required this.name,
      required this.startDate,
      required this.endDate,
      @JsonKey(includeFromJson: false, includeToJson: false) this.image})
      : super._();

  factory _$UpdateProgramParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProgramParamsImplFromJson(json);

  @override
  final int id;
  @override
  final int clubId;
  @override
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? image;

  @override
  String toString() {
    return 'UpdateProgramParams(id: $id, clubId: $clubId, name: $name, startDate: $startDate, endDate: $endDate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProgramParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, clubId, name, startDate, endDate, image);

  /// Create a copy of UpdateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProgramParamsImplCopyWith<_$UpdateProgramParamsImpl> get copyWith =>
      __$$UpdateProgramParamsImplCopyWithImpl<_$UpdateProgramParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProgramParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProgramParams extends UpdateProgramParams {
  const factory _UpdateProgramParams(
      {required final int id,
      required final int clubId,
      required final String name,
      required final DateTime? startDate,
      required final DateTime? endDate,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? image}) = _$UpdateProgramParamsImpl;
  const _UpdateProgramParams._() : super._();

  factory _UpdateProgramParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProgramParamsImpl.fromJson;

  @override
  int get id;
  @override
  int get clubId;
  @override
  String get name;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate; // ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get image;

  /// Create a copy of UpdateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProgramParamsImplCopyWith<_$UpdateProgramParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
