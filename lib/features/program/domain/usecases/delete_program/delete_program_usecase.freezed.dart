// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_program_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteProgramParams _$DeleteProgramParamsFromJson(Map<String, dynamic> json) {
  return _DeleteProgramParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteProgramParams {
  int get programId => throw _privateConstructorUsedError;

  /// Serializes this DeleteProgramParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteProgramParamsCopyWith<DeleteProgramParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProgramParamsCopyWith<$Res> {
  factory $DeleteProgramParamsCopyWith(
          DeleteProgramParams value, $Res Function(DeleteProgramParams) then) =
      _$DeleteProgramParamsCopyWithImpl<$Res, DeleteProgramParams>;
  @useResult
  $Res call({int programId});
}

/// @nodoc
class _$DeleteProgramParamsCopyWithImpl<$Res, $Val extends DeleteProgramParams>
    implements $DeleteProgramParamsCopyWith<$Res> {
  _$DeleteProgramParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteProgramParams
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
abstract class _$$DeleteProgramParamsImplCopyWith<$Res>
    implements $DeleteProgramParamsCopyWith<$Res> {
  factory _$$DeleteProgramParamsImplCopyWith(_$DeleteProgramParamsImpl value,
          $Res Function(_$DeleteProgramParamsImpl) then) =
      __$$DeleteProgramParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int programId});
}

/// @nodoc
class __$$DeleteProgramParamsImplCopyWithImpl<$Res>
    extends _$DeleteProgramParamsCopyWithImpl<$Res, _$DeleteProgramParamsImpl>
    implements _$$DeleteProgramParamsImplCopyWith<$Res> {
  __$$DeleteProgramParamsImplCopyWithImpl(_$DeleteProgramParamsImpl _value,
      $Res Function(_$DeleteProgramParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$DeleteProgramParamsImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteProgramParamsImpl implements _DeleteProgramParams {
  const _$DeleteProgramParamsImpl({required this.programId});

  factory _$DeleteProgramParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteProgramParamsImplFromJson(json);

  @override
  final int programId;

  @override
  String toString() {
    return 'DeleteProgramParams(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProgramParamsImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programId);

  /// Create a copy of DeleteProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProgramParamsImplCopyWith<_$DeleteProgramParamsImpl> get copyWith =>
      __$$DeleteProgramParamsImplCopyWithImpl<_$DeleteProgramParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteProgramParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteProgramParams implements DeleteProgramParams {
  const factory _DeleteProgramParams({required final int programId}) =
      _$DeleteProgramParamsImpl;

  factory _DeleteProgramParams.fromJson(Map<String, dynamic> json) =
      _$DeleteProgramParamsImpl.fromJson;

  @override
  int get programId;

  /// Create a copy of DeleteProgramParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProgramParamsImplCopyWith<_$DeleteProgramParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
