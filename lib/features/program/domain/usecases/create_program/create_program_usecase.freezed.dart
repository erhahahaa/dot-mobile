// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_program_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProgramParams _$CreateProgramParamsFromJson(Map<String, dynamic> json) {
  return _CreateProgramParams.fromJson(json);
}

/// @nodoc
mixin _$CreateProgramParams {
  int get clubId => throw _privateConstructorUsedError;
  int get mediaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this CreateProgramParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProgramParamsCopyWith<CreateProgramParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProgramParamsCopyWith<$Res> {
  factory $CreateProgramParamsCopyWith(
          CreateProgramParams value, $Res Function(CreateProgramParams) then) =
      _$CreateProgramParamsCopyWithImpl<$Res, CreateProgramParams>;
  @useResult
  $Res call(
      {int clubId,
      int mediaId,
      String name,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$CreateProgramParamsCopyWithImpl<$Res, $Val extends CreateProgramParams>
    implements $CreateProgramParamsCopyWith<$Res> {
  _$CreateProgramParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? mediaId = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProgramParamsImplCopyWith<$Res>
    implements $CreateProgramParamsCopyWith<$Res> {
  factory _$$CreateProgramParamsImplCopyWith(_$CreateProgramParamsImpl value,
          $Res Function(_$CreateProgramParamsImpl) then) =
      __$$CreateProgramParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int clubId,
      int mediaId,
      String name,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$CreateProgramParamsImplCopyWithImpl<$Res>
    extends _$CreateProgramParamsCopyWithImpl<$Res, _$CreateProgramParamsImpl>
    implements _$$CreateProgramParamsImplCopyWith<$Res> {
  __$$CreateProgramParamsImplCopyWithImpl(_$CreateProgramParamsImpl _value,
      $Res Function(_$CreateProgramParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubId = null,
    Object? mediaId = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$CreateProgramParamsImpl(
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProgramParamsImpl extends _CreateProgramParams {
  const _$CreateProgramParamsImpl(
      {required this.clubId,
      required this.mediaId,
      required this.name,
      required this.startDate,
      required this.endDate})
      : super._();

  factory _$CreateProgramParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProgramParamsImplFromJson(json);

  @override
  final int clubId;
  @override
  final int mediaId;
  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'CreateProgramParams(clubId: $clubId, mediaId: $mediaId, name: $name, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProgramParamsImpl &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clubId, mediaId, name, startDate, endDate);

  /// Create a copy of CreateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProgramParamsImplCopyWith<_$CreateProgramParamsImpl> get copyWith =>
      __$$CreateProgramParamsImplCopyWithImpl<_$CreateProgramParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProgramParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateProgramParams extends CreateProgramParams {
  const factory _CreateProgramParams(
      {required final int clubId,
      required final int mediaId,
      required final String name,
      required final DateTime startDate,
      required final DateTime endDate}) = _$CreateProgramParamsImpl;
  const _CreateProgramParams._() : super._();

  factory _CreateProgramParams.fromJson(Map<String, dynamic> json) =
      _$CreateProgramParamsImpl.fromJson;

  @override
  int get clubId;
  @override
  int get mediaId;
  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of CreateProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProgramParamsImplCopyWith<_$CreateProgramParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
