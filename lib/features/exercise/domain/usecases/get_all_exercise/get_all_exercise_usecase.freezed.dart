// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_exercise_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllExerciseParams _$GetAllExerciseParamsFromJson(Map<String, dynamic> json) {
  return _GetAllExerciseParams.fromJson(json);
}

/// @nodoc
mixin _$GetAllExerciseParams {
  int get programId => throw _privateConstructorUsedError;

  /// Serializes this GetAllExerciseParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAllExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllExerciseParamsCopyWith<GetAllExerciseParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllExerciseParamsCopyWith<$Res> {
  factory $GetAllExerciseParamsCopyWith(GetAllExerciseParams value,
          $Res Function(GetAllExerciseParams) then) =
      _$GetAllExerciseParamsCopyWithImpl<$Res, GetAllExerciseParams>;
  @useResult
  $Res call({int programId});
}

/// @nodoc
class _$GetAllExerciseParamsCopyWithImpl<$Res,
        $Val extends GetAllExerciseParams>
    implements $GetAllExerciseParamsCopyWith<$Res> {
  _$GetAllExerciseParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllExerciseParams
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
abstract class _$$GetAllExerciseParamsImplCopyWith<$Res>
    implements $GetAllExerciseParamsCopyWith<$Res> {
  factory _$$GetAllExerciseParamsImplCopyWith(_$GetAllExerciseParamsImpl value,
          $Res Function(_$GetAllExerciseParamsImpl) then) =
      __$$GetAllExerciseParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int programId});
}

/// @nodoc
class __$$GetAllExerciseParamsImplCopyWithImpl<$Res>
    extends _$GetAllExerciseParamsCopyWithImpl<$Res, _$GetAllExerciseParamsImpl>
    implements _$$GetAllExerciseParamsImplCopyWith<$Res> {
  __$$GetAllExerciseParamsImplCopyWithImpl(_$GetAllExerciseParamsImpl _value,
      $Res Function(_$GetAllExerciseParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAllExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
  }) {
    return _then(_$GetAllExerciseParamsImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllExerciseParamsImpl extends _GetAllExerciseParams {
  const _$GetAllExerciseParamsImpl({required this.programId}) : super._();

  factory _$GetAllExerciseParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllExerciseParamsImplFromJson(json);

  @override
  final int programId;

  @override
  String toString() {
    return 'GetAllExerciseParams(programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllExerciseParamsImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programId);

  /// Create a copy of GetAllExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllExerciseParamsImplCopyWith<_$GetAllExerciseParamsImpl>
      get copyWith =>
          __$$GetAllExerciseParamsImplCopyWithImpl<_$GetAllExerciseParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllExerciseParamsImplToJson(
      this,
    );
  }
}

abstract class _GetAllExerciseParams extends GetAllExerciseParams {
  const factory _GetAllExerciseParams({required final int programId}) =
      _$GetAllExerciseParamsImpl;
  const _GetAllExerciseParams._() : super._();

  factory _GetAllExerciseParams.fromJson(Map<String, dynamic> json) =
      _$GetAllExerciseParamsImpl.fromJson;

  @override
  int get programId;

  /// Create a copy of GetAllExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllExerciseParamsImplCopyWith<_$GetAllExerciseParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
