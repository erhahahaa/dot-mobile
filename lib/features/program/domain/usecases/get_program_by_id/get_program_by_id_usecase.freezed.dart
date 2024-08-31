// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_program_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProgramByIdParams _$GetProgramByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetProgramByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetProgramByIdParams {
  int get programId => throw _privateConstructorUsedError;

  /// Serializes this GetProgramByIdParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProgramByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProgramByIdParamsCopyWith<GetProgramByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProgramByIdParamsCopyWith<$Res> {
  factory $GetProgramByIdParamsCopyWith(GetProgramByIdParams value,
          $Res Function(GetProgramByIdParams) then) =
      _$GetProgramByIdParamsCopyWithImpl<$Res, GetProgramByIdParams>;
  @useResult
  $Res call({int programId});
}

/// @nodoc
class _$GetProgramByIdParamsCopyWithImpl<$Res,
        $Val extends GetProgramByIdParams>
    implements $GetProgramByIdParamsCopyWith<$Res> {
  _$GetProgramByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProgramByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_value.copyWith(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProgramByIdParamsImplCopyWith<$Res>
    implements $GetProgramByIdParamsCopyWith<$Res> {
  factory _$$GetProgramByIdParamsImplCopyWith(_$GetProgramByIdParamsImpl value,
          $Res Function(_$GetProgramByIdParamsImpl) then) =
      __$$GetProgramByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int programId});
}

/// @nodoc
class __$$GetProgramByIdParamsImplCopyWithImpl<$Res>
    extends _$GetProgramByIdParamsCopyWithImpl<$Res, _$GetProgramByIdParamsImpl>
    implements _$$GetProgramByIdParamsImplCopyWith<$Res> {
  __$$GetProgramByIdParamsImplCopyWithImpl(_$GetProgramByIdParamsImpl _value,
      $Res Function(_$GetProgramByIdParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProgramByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$GetProgramByIdParamsImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProgramByIdParamsImpl implements _GetProgramByIdParams {
  const _$GetProgramByIdParamsImpl({required this.programId});

  factory _$GetProgramByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProgramByIdParamsImplFromJson(json);

  @override
  final int programId;

  @override
  String toString() {
    return 'GetProgramByIdParams(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProgramByIdParamsImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programId);

  /// Create a copy of GetProgramByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProgramByIdParamsImplCopyWith<_$GetProgramByIdParamsImpl>
      get copyWith =>
          __$$GetProgramByIdParamsImplCopyWithImpl<_$GetProgramByIdParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProgramByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetProgramByIdParams implements GetProgramByIdParams {
  const factory _GetProgramByIdParams({required final int programId}) =
      _$GetProgramByIdParamsImpl;

  factory _GetProgramByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetProgramByIdParamsImpl.fromJson;

  @override
  int get programId;

  /// Create a copy of GetProgramByIdParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProgramByIdParamsImplCopyWith<_$GetProgramByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
